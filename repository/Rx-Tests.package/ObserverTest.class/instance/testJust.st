creationTests
testJust
	"Tests create observable from item."

	| observable item|
	item := 1.
	observable := Observable just: item.
	
	observable subscribe: observer.
	
	self assert: (observer isCompleted) equals: true.
	self assert: (observer isError) equals: false.
	self assert: (observer data size) equals: 1.
	self assert: (observer data at: 1) equals: item.