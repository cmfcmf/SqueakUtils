as yet unclassified
buildWith: aBuilder
	
	 ^ aBuilder build: (aBuilder pluggableWindowSpec new
			model: self;
			label: 'Mensa';
			extent: 650@150;
			children: {
				aBuilder cmfPluggableMultiColumnListSpec new
					model: self;
					list: #list;
					getIndex: #selectedIndex;
					setIndex: #selectedIndex:;
					clearFilterAutomatically: true;
					filterableList: true;
					frame: (0@0 corner: 1@1)
			}
			yourself)