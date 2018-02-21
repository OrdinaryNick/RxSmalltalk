instance creation
newFromArray: aCollection
	"Create observable from collection."

	| observable |
	observable := self new.
	observable collection: aCollection.
	^ observable