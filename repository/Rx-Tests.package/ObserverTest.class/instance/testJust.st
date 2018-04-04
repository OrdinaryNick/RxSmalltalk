creationTests
testJust
	"Tests create observable from item."

	| observable item|
	item := 1. 

	observable := Observable just: item.
	
	self assertObservable: observable contains: { item }.
