creationTests
testEmpty
	"Tests method to create observable as empty."

	| observable |
	observable := Observable empty.

	observable subscribe: observer.
	
	self assert: (observer isCompleted) equals: true.
	self assert: (observer isError) equals: false. 
	self assert: (observer data size) equals: 0.