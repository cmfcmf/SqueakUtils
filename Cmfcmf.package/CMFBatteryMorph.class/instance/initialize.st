initialization
initialize
	super initialize.
	self color: Color transparent.
	battery := CMFBattery forCurrentPlatform.
	percentage := StringMorph contents: '??%'.
	icon := ImageMorph new.
	icon image: UiFugueIcons batteryExclamationIcon.
	percentage layoutFrame: (LayoutFrame fractions: (0@0 extent: 0.5@1)).
	icon layoutFrame: (LayoutFrame fractions: (0.5@0 extent: 1@1)).
	self layoutPolicy: ProportionalLayout new;
		layoutProperties: (LayoutProperties new hResizing: #shrinkWrap; vResizing: #shrinkWrap);
		addMorph: percentage;
		addMorph: icon;
		startStepping