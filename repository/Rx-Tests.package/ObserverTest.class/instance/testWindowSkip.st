transformationFunctions
testWindowSkip
	"Test buffer window with skip transformation function."

	| observable | 

	observable := Observable range: 1 to: 12. 

	(observable window: 2 skip: 3) subscribe: observer.  

	self assert: observer isCompleted equals: true.
	self assert: observer isError equals: false.
	self assert: observer data size equals: 4.
	self assertObservable: (observer dataAt: 1) contains: {1 . 2}. 
	self assertObservable: (observer dataAt: 2) contains: {4 . 5}.
	self assertObservable: (observer dataAt: 3) contains: {7 . 8}.
	self assertObservable: (observer dataAt: 4) contains: {10 . 11}