private
iconForWiFiSignalStrength: aNumber

	^ (true caseOf: {
		[aNumber = 0] -> [UiPapirusIcons64 networkwirelesssignalnonesymbolicIcon].
		[aNumber <= 25] -> [UiPapirusIcons64 networkwirelesssignalweaksymbolicIcon].
		[aNumber <= 50] -> [UiPapirusIcons64 networkwirelesssignaloksymbolicIcon].
		[aNumber <= 75] -> [UiPapirusIcons64 networkwirelesssignalgoodsymbolicIcon].
		[aNumber <= 100] -> [UiPapirusIcons64 networkwirelesssignalexcellentsymbolicIcon].
	}) scaledToHeight: TextStyle defaultFont height