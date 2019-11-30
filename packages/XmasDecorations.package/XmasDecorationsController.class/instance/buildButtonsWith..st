toolbuilder
buildButtonsWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			aBuilder pluggableButtonSpec new
				model: self;
				label: #toggleDecorationsLabel;
				action: #toggleDecorations;
				state: #areDecorationsActive;
				help: (self toggleDecorationsHelp);
				yourself.
			aBuilder pluggableButtonSpec new
				model: self;
				label: #toggleWatchingCalendarLabel;
				action: #toggleWatchingCalendar;
				state: #isWatchingCalendar;
				help: (self watchingCalendarHelp);
				yourself.
			aBuilder pluggableActionButtonSpec new
				model: self;
				label: #installUpdatesLabel;
				action: #installUpdates;
				help: (self installUpdatesHelp).
		};
		yourself