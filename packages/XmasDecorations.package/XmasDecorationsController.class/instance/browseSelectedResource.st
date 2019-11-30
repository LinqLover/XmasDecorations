actions
browseSelectedResource

	ToolSet browse: self resourcesClass selector: (self selectedResource ifNil: [^ self]).