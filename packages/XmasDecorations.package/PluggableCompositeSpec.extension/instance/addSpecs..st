*XmasDecorations-accessing
addSpecs: specs

	children ifNil: [self children: OrderedCollection new].
	specs do:[:assoc|
		| rect action widgetSpec |
		rect := assoc key.
		action := assoc value.
		widgetSpec := action value.
		widgetSpec ifNotNil:[
			widgetSpec frame: rect.
			self children add: widgetSpec]].