baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec package: #XmasDecorations.
		spec group: #default with: #(XmasDecorations)].
	spec postLoadDoIt: #postLoad.