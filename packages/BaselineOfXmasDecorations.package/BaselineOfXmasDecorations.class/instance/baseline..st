baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			package: #'XmasDecorations';
			package: #'XmasDecorationsTests'.
		spec
			group: #default with: #(#'XmasDecorations');
			group: #tests with: #(default #'XmasDecorationsTests')].
	spec postLoadDoIt: #postLoad.