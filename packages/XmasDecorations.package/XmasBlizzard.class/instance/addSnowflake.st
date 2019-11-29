initialize-release
addSnowflake

	| flake |
	flake := self createSnowflake.
	self addMorph: flake.
	flake randomInitialize.