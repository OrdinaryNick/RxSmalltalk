instance creation
newSource: source size: size skip: skip
	| observable |
	observable := self new.
	observable source: source.
	observable size: size.
	observable skip: skip.
	^ observable