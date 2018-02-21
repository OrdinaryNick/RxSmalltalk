private
maxIndex: count
	"Return maximal index for request."

	| indexWithCount |
	indexWithCount := actualIndex + count.
	indexWithCount <= data size
		ifTrue: [ ^ indexWithCount ]
		ifFalse: [ ^ data size ]