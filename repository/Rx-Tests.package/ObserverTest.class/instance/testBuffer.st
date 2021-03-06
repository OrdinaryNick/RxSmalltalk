transformationFunctions
testBuffer
	"Test buffer transformation function."

	| observable |
	observable := Observable range: 1 to: 6.
	(observable buffer: 2) subscribe: observer. 

	self assert: observer isCompleted equals: true.
	self assert: observer isError equals: false.
	self assert: observer data size equals: 3.
	self assertIterables: (observer dataAt: 1) equals: {1 . 2}.
	self assertIterables: (observer dataAt: 2) equals: {3 . 4}.
	self assertIterables: (observer dataAt: 3) equals: {5 . 6}