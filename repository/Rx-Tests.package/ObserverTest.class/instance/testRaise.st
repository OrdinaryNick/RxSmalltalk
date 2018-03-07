creationTests
testRaise
	| observable |
	observable := Observable raise: Exception new.
	observable subscribe: observer.
	
	self assert: (observer isCompleted) equals: false.
	self assert: (observer isError) equals: true.
	self assert: (observer data size) equals: 0.
	