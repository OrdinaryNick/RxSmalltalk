creationTests
testArray
	"Test method to create observable from array."

	| observable |
	observable := Observable array: { 'Nice' . 5 . 'Ok' }.
	
	observable subscribe: observer.
	
	self assert: (observer isError) equals: false.
	self assert: (observer isCompleted) equals: true.
	self assert: (observer data size) equals: 3.
	self assert: (observer dataAt: 1) equals: 'Nice'.
	self assert: (observer dataAt: 2) equals: 5.
	self assert: (observer dataAt: 3) equals: 'Ok'.
	