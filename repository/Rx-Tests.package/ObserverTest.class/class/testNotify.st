tests
testNotify
	"Test notify method of observable."

	| observer |
	observer := Observer new.
	observable subscribe: observer.
	observer reset.
	observable notify.
	self assert: observer testText equals: 'Updated'