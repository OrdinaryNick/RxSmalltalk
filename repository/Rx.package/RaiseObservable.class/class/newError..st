instance creation
newError: error
	"Create observable from error."
	
	| observable |
	observable := self new.
	observable error: error.
	^ observable
	