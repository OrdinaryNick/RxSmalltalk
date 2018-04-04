transformationFunctions
testMap
	"Test map transformation function."

	| observable expectedArray | 

	expectedArray := { 2 . 4 . 6 . 8 }.
	observable := Observable range: 1 to: 4. 

	observable := (observable map: [ :x | x * 2 ]).

	self assertObservable: observable contains: expectedArray.
