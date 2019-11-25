generated
soundHohoho

	"Artist: Rockin Burgers N Dogs Food Truck. URL: https://www.youtube.com/watch?v=felgjUhKm_A. Edited."
	^ SampledSound
		samples: (SoundBuffer fromByteArray: (Base64MimeConverter mimeDecodeToBytes: self soundHohohoSamples readStream) contents)
		samplingRate: 48000
