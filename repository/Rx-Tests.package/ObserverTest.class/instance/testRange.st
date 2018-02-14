tests
testRange
	"Test method to create observable from array."

	| observable observer|
	observable := Observable range: 1 to: 5.
	observer := TestObserver new.
	
	observable subscribe: observer.
	
	self assert: (observer data size) equals: 5.
	self assert: (observer dataAt: 1) equals: 1.
	self assert: (observer dataAt: 3) equals: 3.
	self assert: (observer isCompleted).
	