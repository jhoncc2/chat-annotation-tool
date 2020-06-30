# Agreement files used in JKK analysis

```
"message files"
a := {
'2015-01-20.train-b.ascii.txt'.
'2015-06-12.train-b.ascii.txt'.
'2015-10-14.train-b.ascii.txt'.
'2015-12-28.train-b.ascii.txt'.
'2015-02-04.train-b.ascii.txt'.
'2015-08-10.train-b.ascii.txt'.
'2015-10-19.train-b.ascii.txt'.
'2015-04-19.train-b.ascii.txt'.
'2015-09-25.train-b.ascii.txt'.
'2015-11-26.train-b.ascii.txt'.
}.


"annotation files"
ann := {
{
'2015-01-20.train-b.annotation.jonathan.txt'.
'2015-01-20.train-b.annotation.vignesh.txt'.
'2015-01-20.train-b.annotation.joseph.txt'.
}.


{
'2015-06-12.train-b.annotation.jonathan.txt'.
'2015-06-12.train-b.annotation.vignesh.txt'.
'2015-06-12.train-b.annotation.joseph.txt'.
}.

{
'2015-10-14.train-b.annotation.jonathan.txt'.
'2015-10-14.train-b.annotation.vignesh.txt'.
'2015-10-14.train-b.annotation.joseph.txt'.
}.

{
'2015-12-28.train-b.annotation.jonathan.txt'.
'2015-12-28.train-b.annotation.vignesh.txt'.
'2015-12-28.train-b.annotation.joseph.txt'.
}.

{
'2015-02-04.train-b.annotation.jonathan.txt'.
'2015-02-04.train-b.annotation.vignesh.txt'.
'2015-02-04.train-b.annotation.joseph.txt'.
}.

{
'2015-08-10.train-b.annotation.jonathan.txt'.
'2015-08-10.train-b.annotation.vignesh.txt'.
'2015-08-10.train-b.annotation.joseph.txt'.
}.

{
'2015-10-19.train-b.annotation.jonathan.txt'.
'2015-10-19.train-b.annotation.vignesh.txt'.
'2015-10-19.train-b.annotation.joseph.txt'.
}.

{
'2015-04-19.train-b.annotation.jonathan.txt'.
'2015-04-19.train-b.annotation.vignesh.txt'.
'2015-04-19.train-b.annotation.joseph.txt'.
}.

{
'2015-09-25.train-b.annotation.jonathan.txt'.
'2015-09-25.train-b.annotation.vignesh.txt'.
'2015-09-25.train-b.annotation.joseph.txt'.
}.

{
'2015-11-26.train-b.annotation.jonathan.txt'.
'2015-11-26.train-b.annotation.vignesh.txt'.
'2015-11-26.train-b.annotation.joseph.txt'.
}.
}
```



Generates a csv file for each annotation file

```
prefix := '/Users/jhonc/Workspace/[R]research/untangling/dataAnalysis/jkk_data/annotation-process/train-b-individual/'.

a with: ann do: [ :d :sec|
	sec do: [ :e |
		|tool csv|
		tool := LAJkkDataManager new.
		tool filePath: (prefix , d); loadMessages.
		tool loadLinksFrom: (prefix , e).
		csv := tool exportCSV.
		(prefix , e , '.csv') asFileReference writeStreamDo: [ :stream |
			stream nextPutAll: csv
		].
	]
]
```

# Pharo code to run an analysis

This code is to analye logs
```
uri := '/Users/jhonc/Workspace/[R]research/untangling/pilot_files/2015-01-20_04.ascii.log.jhonny.txt'.

logs := OrderedCollection empty.
uri asFileReference readStreamDo: [ :stream |
	[stream atEnd ] whileFalse: [ 
			logs addLast: stream nextLine.
		]
	].
anns := OrderedCollection empty.
anns addLast: OrderedCollection empty.

logs do: [ :e |
	anns last addLast: e.
	(e beginsWith: 'LACreateUntangling' ) ifTrue: [ 
		anns addLast: OrderedCollection empty.
		anns last addLast:e.
	]
].
"get time spend between annotations"
sep := '|'.
ts := anns collect: [ :e |
	|ann|
	ann := (sep split: e last). 
	(ann last asInteger @ (ann at: ann size -1) asInteger) -> ((sep split: e first) second -> ann second)
].
ts removeFirst; removeLast.

ts collect: [ :e |
	e key -> (e value key asDateAndTime asTime -> e value value asDateAndTime asTime) 
].

ts collect: [ :e |
	e key -> (e value value asDateAndTime asTime subtractTime: e value key asDateAndTime asTime) seconds ].


res := ts collect: [ :e |
	(e key y - e key x) abs -> (e value value asDateAndTime asTime subtractTime: e value key asDateAndTime asTime) seconds.
].

((res collect: [ :e | e value]) sum / res size) asFloat.

"res do: [ :e | Transcript show: (e key abs); tab; show: e value abs;cr. ]
"

```

This code analyses conversations

```
"message files"
a := {
'2015-01-20_04.ascii.txt'.
}.

"annotation files"
ann := {
{
'2015-01-20_04.annotation.hussam.txt'.
'2015-01-20_04.annotation.jared.txt'.
'2015-01-20_04.annotation.jonathan.txt'.
'2015-01-20_04.annotation.joseph.txt'.
'2015-01-20_04.annotation.reference.txt'.
'2015-01-20_04.annotation.vignesh.txt'.
'2015-01-20_04.annotation.jhonny.txt'.
'2015-01-20_04.annotation.anbade.txt'.
'2015-01-20_04.annotation.ocardenas.txt'.
}
}.

authors := {
'2015-01-20_04.annotation.hussam.txt'.
'2015-01-20_04.annotation.jared.txt'.
'2015-01-20_04.annotation.jonathan.txt'.
'2015-01-20_04.annotation.joseph.txt'.
'2015-01-20_04.annotation.reference.txt'.
'2015-01-20_04.annotation.vignesh.txt'.
'2015-01-20_04.annotation.jhonny.txt'.
'2015-01-20_04.annotation.anbade.txt'.
'2015-01-20_04.annotation.ocardenas.txt'.

}.
prefix := '/Users/jhonc/Workspace/[R]research/untangling/pilot_files/'.

cs := OrderedCollection empty.
a with: ann do: [ :d :sec|
	sec with: authors do: [ :e :auth|
		|tool csv|
		tool := LAJkkDataManager new.
		tool filePath: (prefix , d); loadMessages.
		tool loadLinksFrom: (prefix , e).
		cs addLast: (auth -> tool)
		"csv := tool exportCSV.
		(prefix , e , '.csv') asFileReference writeStreamDo: [ :stream |
			stream nextPutAll: csv
		]."
	]
].
"number of messages" 
convs := cs  collect: [ :c | 
	c key -> (c value messageModels reject: [:e | e messageRelations isEmpty])
].


convs := cs  collect: [ :c | 
	c key -> (c value messageModels collect: #messageRoot thenReject: [:e | e messageRelations isEmpty])
].

convs collect: [ :e | e key -> e value asSet size ].

cs  collect: [ :c | 
	|f|
	f := (c value messageModels reject: [:e | e messageRelations isEmpty]).
	c key -> (f groupedBy: #messageRoot)
].
```




