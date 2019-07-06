initialization
initialize

	super initialize.
	
	self
		color: Color transparent;
		changeTableLayout;
		cellInset: 2;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		addMorphBack: (nameMorph := StringMorph new
			eventHandler: (EventHandler new
				on: #mouseDown send: #changeNetworkInteractively to: self);
			yourself);
		addMorphBack: (iconMorph := ImageMorph new);
		updateDisplayedWiFiStatus