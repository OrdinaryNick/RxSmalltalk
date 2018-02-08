tests
testChangeState
	"Test change of state of observable."

	| state |
	state := 'Some text of state'.
	observable observableState: state.
	self assert: observable observableState equals: state