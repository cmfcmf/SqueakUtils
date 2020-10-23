# SqueakUtils

This repository contains a few utilities I use in my Squeak image.

## Miscellaneous Stuff

### Temporary Subclasses

Sometimes I want to create a subclass on the fly, without worrying about class name and category. For example, imagine wanting a stepping `Morph` that flashes red and green. You can use the `Object >> #tmpSubclass:` message to create a new temporary subclass that overwrites the specified methods.
This will create a new subclass in the `TmpClasses` category with a unique name and `becomeForward` the instance it is called on.
Temporary subclasses are cleaned up on shutdown if no more instances of them are remaining.

```
c := CircleMorph new.
c tmpSubclass: {
	#stepTime -> [500].
	#step -> [
		self color = Color green
			ifTrue: [self color: Color red]
			ifFalse: [self color: Color green]]}.
c startStepping.
c openInHand
```

### Comparative Benchmarking

Sometimes you want to compare the execution speed of two or more blocks. While you could simply send `bench` to all blocks you're interested in, this package provides simpler alternatives for comparing up to four blocks: `BlockClosure >> #vs:`, `BlockClosure >> #vs:vs:`, `BlockClosure >> #vs:vs:vs:`. Example:

```
[10 factorial] vs: [20 factorial]
```

```
 '6,100,000 per second. 164 nanoseconds per run.
vs. 1,160,000 per second. 863 nanoseconds per run.'
```

Original idea by @tom95.

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
  
## Toolbuilder Extensions (broken in Squeak 5.3+)

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
