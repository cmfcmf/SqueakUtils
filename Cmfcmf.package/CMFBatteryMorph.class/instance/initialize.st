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
	
	self layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addMorphBack: percentage;
		addMorphBack: icon;
		startStepping