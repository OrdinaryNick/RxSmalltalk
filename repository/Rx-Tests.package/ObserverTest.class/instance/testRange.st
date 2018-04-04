creationTests
testRange
	"Test method to create observable from array."

	| observable | 
	observable := Observable range: 1 to: 5.
	
	self assertObservable: observable contains: (1 to: 5).
	