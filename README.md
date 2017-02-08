# RunMario

RunMario is a iOS tweak that allow you to play SuperMarioRun on a jailbreak device.

## Usage

- Install on Cydia. (It published on BigBoss, which is one of the default sources)
- or Compile with THEOS, `make package FINALPACKAGE=1`

## Why
When your iOS device is jailbreaked, SuperMarioRun.app will quit immediately after launching. It may on the perpose 
of preventing cheating, but, as a developer, where are many more reasons to jailbreak my iOS device while playing 
my SuperMarioRun.

## How

There are many methods of checking jailbreak state for an AppStore APP. The most common method is checking the pathes outside an app's 
sandbox. By disassenble the binary, `fileExistsAtPath` is found to use for checking. Just hook this method and return NO for 
some pathes outside the sandbox.

## Credits
thank @Qusic for [Xgress](https://github.com/Qusic/Xgress), as an example.
