resources - sounds
soundHohoho

	<xmasResourceBy: 'Rockin Burgers N Dogs Food Truck' url: 'https://www.youtube.com/watch?v=felgjUhKm_A' comment: 'edited'>
	^ SampledSound
		samples: (SoundBuffer fromByteArray: (Base64MimeConverter mimeDecodeToBytes: self soundHohohoSamples readStream) contents)
		samplingRate: 48000
