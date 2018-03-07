transformationFunctions
testMap
	"Test map transformation function."

	| observable |
	observable := Observable range: 1 to: 4.
	(observable map: [ :x | ^ NumberWrapper newValue: x * 2 ]) subscribe: observer.

	self assert: observer isCompleted equals: true.
	self assert: observer isError equals: false.
	self assert: observer data size equals: 4.
	self assert: (observer dataAt: 1 value) equals: 2.
	self assert: (observer dataAt: 2 value) equals: 4.
	self assert: (observer dataAt: 3 value) equals: 6.
	self assert: (observer dataAt: 4 value) equals: 8