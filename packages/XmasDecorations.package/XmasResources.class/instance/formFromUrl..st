tools
formFromUrl: aUrl

	| response |
	response := WebClient httpGet: aUrl.
	response code = 200
		ifFalse: [^ self error: 'Invalid response'].
	^ Form fromBinaryStream: response content asByteArray readStream