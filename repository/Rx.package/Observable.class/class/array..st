initialize
array: array
	"Create observable from array"
	| observable |
	observable := self new.
	array do: [ :item | observable data add: item ].
	^ observable.