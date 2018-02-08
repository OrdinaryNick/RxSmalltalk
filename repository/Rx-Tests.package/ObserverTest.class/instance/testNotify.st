tests
testNotify
	"Test notify method of observable."

	| observer |
	observer := Observer new.
	observable subscribe: observer.
	observer reset.
	self assert: observer testText equals: 'Not updated!'.
	observable notify.
	self assert: observer testText equals: 'Updated.'