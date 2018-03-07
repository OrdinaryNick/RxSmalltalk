instance creation
newValue: value
	| entity |
	entity := self new.
	entity value: value.
	^ self