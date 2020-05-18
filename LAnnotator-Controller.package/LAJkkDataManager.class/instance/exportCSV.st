parsing
exportCSV
	|header|
	header := 'INDEX' , 
		String tab , 'REL' ,
		String tab, 'TIME', 
		String tab, 'USER', 
		String tab, 'CONTENT', String cr.
 	^ header , ('' join: (self messageModels collect: [ :m | 
		m exportCSV
	])).