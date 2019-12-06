private
computeMorphCacheForSize: anExtent

	self imports images do: [:image |
		self morphForImage: image size: anExtent].