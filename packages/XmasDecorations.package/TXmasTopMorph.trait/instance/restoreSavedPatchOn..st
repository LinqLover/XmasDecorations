drawing
restoreSavedPatchOn: aCanvas 
	"Clear the changed flag and restore the part of the given canvas under the receiver from the previously saved patch."

	self setProperty: #hasChanged toValue: false.
	self valueOfProperty: #savedPatch ifPresentDo: [:patch |
		aCanvas drawImage: patch at: patch offset].