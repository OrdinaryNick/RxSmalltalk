transformationFunctions
testScan
	"Test scan transformation function."

	| observable expectedArray |
	expectedArray := { 1 . 3 . 6 . 10 }.
	observable := Observable range: 1 to: 4. 

	observable := (observable scan: [:x :y | x + y]).

	self assertObservable: observable contains: expectedArray.