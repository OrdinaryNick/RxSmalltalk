protected
createBuffer
	buffer := UnicastSubject new.
	sentItems := 0.
	observer onNext: buffer