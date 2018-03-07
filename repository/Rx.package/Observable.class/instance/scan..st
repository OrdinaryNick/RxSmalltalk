transformation
scan: mapFunction
	"Creates observable with mapped function, which will change emitted items by map function."

	^ ScanObservable newSource: self mapFunction: mapFunction