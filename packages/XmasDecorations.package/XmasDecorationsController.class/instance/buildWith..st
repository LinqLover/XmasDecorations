toolbuilder
buildWith: aBuilder

	| window panel |
	window := self buildWindowWith: aBuilder.
	panel := aBuilder pluggablePanelSpec new
		frame: (0 @0 corner: 1 @ 1);
		wantsResizeHandles: true;
		yourself.
	window children: {panel}.
	
	panel addSpecs: {
		(LayoutFrame fractions: (0 @ 0 corner: 1 @ 0)
			offsets: (0 @ 0 corner: 0 @ self headerHeight)) -> [
				self buildHeaderWith: aBuilder].
		(LayoutFrame fractions: (0 @ 0 corner: 1 @ 0.6)
			offsets: (0 @ self headerHeight corner: 0 @ 0)) -> [
				self buildContentsWith: aBuilder].
		(LayoutFrame fractions: (0 @ 0.6 corner: 1 @ 1)
			offsets: (0 @ 0 corner: 0 @ self buttonHeight negated)) -> [
				self buildCreditsWith: aBuilder].
		(LayoutFrame fractions: (0 @ 1 corner: 1 @ 1)
			offsets: (0 @ self buttonHeight negated corner: 0 @ 0)) -> [
				self buildButtonsWith: aBuilder].
	}.
	^ aBuilder build: window