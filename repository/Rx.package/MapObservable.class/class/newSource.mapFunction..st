instance creation
newSource: source mapFunction: block
	| observable |
	observable := self new.
	observable source: source.
	observable mapFunction: block.
	^ observable