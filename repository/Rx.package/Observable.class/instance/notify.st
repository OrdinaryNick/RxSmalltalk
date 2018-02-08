observable
notify
	"Notify all observer about change in state."

	observers do: [ :observer | observer update ]