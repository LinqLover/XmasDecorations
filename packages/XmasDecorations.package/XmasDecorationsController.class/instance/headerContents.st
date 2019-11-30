strings
headerContents

	^ ((((
'<b>Welcome to XmasDecorations! To quickly start, just press "{1}".</b> We think that xmas decorations work best with a dark theme, but however, they are tuned to support all colors of themes.

\{1\} This project was created from Squeak fanatics for Squeak fanatics. Any contributions, such as feature requests, bug reports, or pull requests are highly welcome! The pane below lists all artistic contributors. To contribute, just visit our repo: <a href="{2}">{2}</a>

<b>Disclaimer:</b> This product is delivered without warranty of any kind, including damages to your image, bla blah blahh. In particular, it is <u>strongly</u> discouraged to make any attempt to unload this project due to current limitations of Squeak''s capabilities with regard to recovering overridden extension methods! If you should get rid of the decorations, just use the beautiful buttons below or create an issue.'
		copyReplaceAll: String cr with: '<br/>')
		format: {
			self toggleDecorationsLabel.
			self repositoryUrl }))
		asTextFromHtml
		copyReplaceAll: 'with a dark theme' with: ('with a dark theme' asText
			addAttribute: (PluggableTextAttribute evalBlock: [
				MenuMorph new in: [:menu |
					TheWorldMainDockingBar instance themesAndWindowColorsOn: menu.
					menu openAsTool]]);
			yourself))
		format: {(String value: 1) asText
			addAttribute: (TextAnchor new
				anchoredMorph: ((MenuIcons squeakLogoIconColorized: (PluggableTextMorph new userInterfaceTheme textColor)) asMorph
					addMouseUpActionWith: (MessageSend receiver: self selector: #in: arguments: {[:controller |
						controller areDecorationsActive ifFalse: [thisContext return].
						controller xmasDecorations blizzard in: [:blizzard |
							blizzard adjustIntensity: blizzard maximumSnowflakesPerSecond speed: blizzard maximumSnowflakesPerSecond]]});
					yourself);
				yourself);
			yourself}