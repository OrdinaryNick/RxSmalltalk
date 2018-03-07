creationTests
testNever
	"Tests method to create observable as never sending."

	| observable |
	observable := Observable never.

	observable subscribe: observer.
	
	self assert: (observer isCompleted) equals: false.
	self assert: (observer isError) equals: false.
	self assert: (observer data size) equals: 0.