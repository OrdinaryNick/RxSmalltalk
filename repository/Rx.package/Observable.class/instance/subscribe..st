observable
subscribe: observer
	"Subscribe observer to this observable."
	"TODO This should be called in separate thread???"
	data do: [ :item | self notify: item to: observer ].
	self notifyCompleteTo: observer.