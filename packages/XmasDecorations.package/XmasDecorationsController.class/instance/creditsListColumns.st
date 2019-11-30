accessing
creditsListColumns

	| rows |
	rows := self creditsList associations
		collect: [:association | association value asOrderedCollection copyWithFirst: association key]
		as: Array.
	^ (1 to: 3) collect: [:column |
		rows collect: [:row | row at: column]]