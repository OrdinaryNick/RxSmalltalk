private
requestIndexes: range
	"Request count items from publisher"

	range
		do: [ :index | 
			(completed or: cancelled)
				ifTrue: [ ^ self ]
				ifFalse: [ observer onNext: (self requestItem: index) ]. ]