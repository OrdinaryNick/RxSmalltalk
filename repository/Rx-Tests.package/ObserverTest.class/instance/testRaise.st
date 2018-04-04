creationTests
testRaise
	| observable exception | 

	exception := TestError new.
	observable := Observable raise: exception.
	observable subscribe: observer. 

	self assert: observer isCompleted equals: false.
	self assert: observer isError equals: true.
	self assert: observer data size equals: 0.
	self assert: observer error equals: exception