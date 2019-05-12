# SqueakUtils

This repository contains a few utilities I use in my Squeak image.

## Battery Indicator Morph and OpenMensa Morph

Both can be installed via:
```
Metacello new
	baseline: 'Cmfcmf';
	repository: 'github://cmfcmf/SqueakUtils:master';
	load.
```

### Battery Indicator

You can create your very own battery indicator morph using `CMFBatteryMorph new openInHand`. 
The morph updates every two minutes.

### OpenMensa Morph

I provide a custom morph that displays the daily meals from https://openmensa.org. To open it, execute `CMFMensaInfo open`.

## Windows FFI Utils

I provide methods for creating processes and pipes using FFI under Windows. To install just them, use:
```
Metacello new
	baseline: 'Cmfcmf';
	repository: 'github://cmfcmf/SqueakUtils:master';
	load: #('winffi').
```
  
## Toolbuilder Extensions

I provide a customized `PluggableMultiColumnListMorph` and spec. In contrast to the default implementation, it has gained the following enhancements:
- the list is filterable
- the items are indexed by row, not by column

To install just them, use:
```
Metacello new
	baseline: 'Cmfcmf';
	repository: 'github://cmfcmf/SqueakUtils:master';
	load: #('toolbuilder').
```
