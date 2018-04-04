asserting
assertObservable: observable contains: data
	| testObserver | 

	testObserver := TestObserver new. 

	observable subscribe: testObserver. 

	self assert: testObserver isCompleted equals: true.
	self assert: testObserver isError equals: false.
	self assert: testObserver data size equals: data size.
	self assertIterables: testObserver data equals: data