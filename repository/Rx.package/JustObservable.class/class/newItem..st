instance creation
newItem: item
	"Create observable from one item."
	
	| observable |
	observable := self new.
	observable item: item.
	^ observable
	
	

	