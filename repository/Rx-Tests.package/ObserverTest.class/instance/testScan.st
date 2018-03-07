transformationFunctions
testScan
	"Test scan transformation function."

	| observable |
	observable := Observable range: 1 to: 4.
	(observable scan: [:x :y | ^ x + y]) subscribe: observer. 

	self assert: observer isCompleted equals: true.
	self assert: observer isError equals: false.
	self assert: observer data size equals: 3.
	self assert: (observer dataAt: 1) equals: 1.
	self assert: (observer dataAt: 2) equals: 3.
	self assert: (observer dataAt: 3) equals: 6.
	self assert: (observer dataAt: 4) equals: 10.
