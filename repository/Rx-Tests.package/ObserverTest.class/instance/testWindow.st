transformationFunctions
testWindow
	"Test buffer window transformation function."

	| observable | 

	observable := Observable range: 1 to: 6.
	
	(observable window: 2) subscribe: observer. 

	self assert: observer isCompleted equals: true.
	self assert: observer isError equals: false.
	self assert: observer data size equals: 3.
	self assertObservable: (observer dataAt: 1) contains: {1 . 2}. 
	self assertObservable: (observer dataAt: 2) contains: {3 . 4}.
	self assertObservable: (observer dataAt: 3) contains: {5 . 6}