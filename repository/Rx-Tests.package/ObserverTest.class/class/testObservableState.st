tests
testObservableState
	"Test observable state setting and reading"

	| state |
	state := 'Some state'.
	observable observableState: state.
	self assert: observable observableState equals: state