transformation
buffer: buffer skip: skip
	"Buffer n items and skip m items."

	^ BufferedObseravble newSource: self size: buffer skip: skip