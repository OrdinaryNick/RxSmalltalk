transformation
map: mapFunction
	"Creates observable with mapped function, which will change emitted items by map function."

	^ MapObservable newSource: self mapFunction: mapFunction