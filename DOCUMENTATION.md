# ANNOTATION 

The chat-untangling annotation is defined as to link two messages, such that represetes an interaction of a conversation. Therefore a conversation is defined as graph composed of multiple interactions. A message can respond to multiple messages at the same time and the other way around. 

We store the annotations in a file with the next format.
```
1 2 -
1 3 -
2 4 - 
```
The numbers represent the message index, such that each row represents a link between two messages. This format is defined by Jonathan Kummerfeld. 

## PREPARING APP TO ANNOTATE JKK DATASET/CORPUS

```
# configuration files 

file_to_annotate := '....../data/2015-01-20.train-b.ascii.txt'.
annotations_file := '...../data/2015-01-20.train-b.annotation.jhonny.txt'.
logFile := '...../data/2015-01-20.train-b.log.jhonny.txt'.

# First line loads the data, whilst the second  opens the application on the loaded data (class instance)
# JKK annotates messages from 1000 to 1100 from each files, with a gap before 20 messages as context
LAJkkDataManager instance filePath: file_to_annotate; loadMessages.
LAApplicationElement openOnMessageType: LAJkkDataManager file: realFile from: 980 to: 1100.

# Setting up a logger
logger := LALogger new path: logFile; yourself.
LAApplicationElement instance eventLogger: logger.

# save the annotations
LAApplicationElement saveOnFile: annotations_file.
```
The tool also allow the annotator to load previous annotations.
```
# load previous saved annotations, and show them in the application

annotations_fikle := '..../data/2015-01-20.train-b.annotation.jhonny.txt'.
LAApplicationElement instance loadLinksFrom: linkFile.
```
## SETTING APP UP FOR DISCORD ANNOTATIONS

```
Comming up ...
```

## ANNOTATION ANALYSIS

### MULTIPLE VISUALIZATION ON SINGLE ANNOTATION DOCUMENT

```

annotation_files := {
	'...../data/2015-02-04.train-b.annotation.jonathan.txt'.
	'...../data/2015-02-04.train-b.annotation.joseph.txt'. 
	'...../data/2015-02-04.train-b.annotation.vignesh.txt'.
	}.

data_files := {
	'...../data/2015-02-04.train-b.ascii.txt'. 
	'...../data/2015-02-04.train-b.ascii.txt'.
	'...../data/2015-02-04.train-b.ascii.txt'
	}.

LAAppComparingElement openOnFiles: data_files providerClass: LAJkkDataManager from: 1000 to: 1500.

LAAppComparingElement instance loadLinksFrom: annotation_files

```

### training 
```

file := './pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/jkk-training/all-data.txt'.
logfile := './2015-01-20_04.ascii.log.train-user.txt'.

LAJkkDataManager instance filePath: file; loadMessages.
LAAlternativeView openOnMessageType: LAJkkDataManager file: file from: 1 to: 200.

logger := LALogger new path: logfile; yourself.
LAAlternativeView instance eventLogger: logger.

logger stop.
savedLinksFile := './2015-01-20_04.annotation.train-user.txt'.
LAAlternativeView saveOnFile: savedLinksFile.

```

#### post training
```
logger stop.
savedLinksFile := './saved_links.txt'.
LAApplicationElement saveOnFile: savedLinksFile.
```
#### export
```
linkFile := './pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/jkk-training/all-links.txt'.
LAAlternativeView instance loadLinksFrom: linkFile.
```

### PILOT 
```
file := './pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/pilot/2015-01-20_04.ascii.txt'.

logfile := './2015-01-20_04.ascii.log.txt'.

LAJkkDataManager instance filePath: file; loadMessages.
LAAlternativeView openOnMessageType: LAJkkDataManager file: file from: 80 to: 200.

logger := LALogger new path: logfile; yourself.
LAAlternativeView instance eventLogger: logger.

```

#### post pilot
```
logger stop.
savedLinksFile := './2015-01-20_04.annotation.user.txt'.
LAApplicationElement saveOnFile: savedLinksFile.
```
#### export

```
linkFile := './pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/pilot/2015-01-20_04.annotation.jonathan.txt'.
LAAlternativeView instance loadLinksFrom: linkFile.

```

