as yet unclassified
buildWith: aBuilder
	
	 ^ aBuilder build: (aBuilder pluggableWindowSpec new
			model: self;
			label: 'Mensa';
			extent: 650@150;
			children: {
				aBuilder pluggableMultiColumnListSpec new
					model: self;
					list: #list;
					getIndex: #selectedIndex;
					setIndex: #selectedIndex:;
					clearFilterAutomatically: true;
					filterableList: true;
					frame: (LayoutFrame fractions: (0@0 extent: 1@1))
			}
			yourself)