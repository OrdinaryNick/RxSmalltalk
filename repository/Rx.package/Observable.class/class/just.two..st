initialize
just: item two: item2
	"Create observable from two items."

	^ ArrayObservable newFromArray: {item . item2}.