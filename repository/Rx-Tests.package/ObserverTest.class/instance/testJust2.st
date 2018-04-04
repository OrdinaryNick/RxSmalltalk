creationTests
testJust2
	"Tests create observable from two items."

	| observable item item2 |
	item := 1.
	item2 := 'Test'. 

	observable := Observable just: item two: item2.
	
	self assertObservable: observable contains: { item . item2 }.
