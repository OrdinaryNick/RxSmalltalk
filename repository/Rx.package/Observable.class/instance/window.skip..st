transformation
window: size skip: skip
	"Create window for n items and skip m items."

	^ WindowObservable newSource: self size: size skip: skip