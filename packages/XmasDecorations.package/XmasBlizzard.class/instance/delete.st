initialize-release
delete

	super delete.
	self snowflakesDo: #delete.
	snowflakes := OrderedCollection new.