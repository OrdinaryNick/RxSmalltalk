creationTests
testArray
	"Test method to create observable from array."

	| observable array |
	array := { 'Nice' . 5 . 'Ok' }. 

	observable := Observable array: array.
	
	self assertObservable: observable contains: array.

	