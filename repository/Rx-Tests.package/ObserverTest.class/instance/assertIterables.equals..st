asserting
assertIterables: a equals: b
	self assert: a size equals: b size.
	(1 to: a size) do: [ :i | self assert: (a at: i) equals: (b at: i) ]