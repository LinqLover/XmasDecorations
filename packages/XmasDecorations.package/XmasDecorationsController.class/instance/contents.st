strings
contents

	^ ((((
'<b>Welcome to XmasDecorations!</b> Decorations are turned on and off automatically according to your system date. To override this behavior, you can use the buttons below. XmasDecorations supports all kind of themes, light themes as well as dark ones. We wish you a merry christmas and a much fun with Squeak!

This project was created from Squeak fanatics for Squeak fanatics. Any contributions, such as feature requests, bug reports, or pull requests are highly welcome! The pane below lists all artistic contributors. To contribute, just <a href="{1}">visit our repo.</a>

<i><b>Disclaimer:</b> This product is delivered without warranty of any kind, including damages to your image, bla blah blahh. In particular, it is <u>strongly</u> discouraged to make any attempt to unload this project due to current limitations of Squeak''s capabilities with regard to recovering extension methods that have been overridden! If you should get rid of the decorations, just use the beautiful buttons below or create an issue.</i>'
		copyReplaceAll: String cr with: '<br/>')
		format: { self repositoryUrl }))
		asTextFromHtml
		copyReplaceAll: 'all kind of themes' with: ('all kind of themes' asText
			addAttribute: (PluggableTextAttribute evalBlock: [
				MenuMorph new in: [:menu |
					TheWorldMainDockingBar instance themesAndWindowColorsOn: menu.
					menu openAsTool]]);
			yourself))