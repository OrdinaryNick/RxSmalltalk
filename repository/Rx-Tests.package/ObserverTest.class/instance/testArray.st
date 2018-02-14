tests
testArray
	"Test method to create observable from array."

	| observable observer|
	observable := Observable array: #( 'Nice' 5 'Ok' ).
	observer := TestObserver new.
	
	observable subscribe: observer.
	
	self assert: (observer data size) equals: 3.
	self assert: (observer dataAt: 1) equals: 'Nice'.
	self assert: (observer dataAt: 2) equals: 5.
	self assert: (observer dataAt: 3) equals: 'Ok'.
	self assert: (observer isCompleted).