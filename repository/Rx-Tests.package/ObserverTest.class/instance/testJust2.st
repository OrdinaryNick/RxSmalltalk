creationTests
testJust2
	"Tests create observable from two items."

	| observable item item2 |
	item := 1.
	item2 := 'Test'.
	observable := Observable just: item two: item2.
	observer := TestObserver new.
	
	observable subscribe: observer.
	
	self assert: (observer isCompleted) equals: true.
	self assert: (observer isError) equals: false.
	self assert: (observer data size) equals: 2.
	self assert: (observer data at: 1) equals: item .
	self assert: (observer data at: 2) equals: item2 .