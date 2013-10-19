![TabAhead](https://raw.github.com/janraasch/tab-ahead/master/app/images/icon-128.png)
Tab Ahead [![Build Status](https://travis-ci.org/janraasch/tab-ahead.png?branch=master)](https://travis-ci.org/janraasch/tab-ahead) [![devDependency Status](https://david-dm.org/janraasch/tab-ahead/dev-status.png)](https://david-dm.org/janraasch/tab-ahead#info=devDependencies)
=========

Lightweight [Chrome Extension](https://chrome.google.com/webstore/detail/tab-ahead/naoajjeoiblmpegfelhkapanmmaaghmi) that helps you to quickly find open tabs by title and url.

*Bringing Sublime Text's `Goto Anything...` to your Chrome Tabs.*

Installation
------------

Go to the [Tab Ahead](https://chrome.google.com/webstore/detail/tab-ahead/naoajjeoiblmpegfelhkapanmmaaghmi) page on the [Chrome Web Store](https://chrome.google.com/webstore/) and click `Add To Chrome`.


Keyboard Shortcut
-------------------
* Press `Alt+T` to quickly open the search dialog.
* Go to [chrome://extensions](chrome://extensions) and click `Keyboard shortcuts`/`Configure Commands` to change or remove the default shortcut.


Version History
------------
* v1.0.9 - Update icons to match the popup's color scheme.
* v1.0.8 - New logo and popup icon. Fix #1.
* v1.0.7 - Fix bug where popup was not closed after selection.
* v1.0.6 - Improve build.
* v1.0.5 - Fix issue with popup sometimes not closing as exspected.
* v1.0.4 - Fix UI glitch.
* v1.0.3 - Improve UI.
* v1.0.2 - Small improvements.
* v1.0.1 - Add [fuzzy](http://mattyork.github.io/fuzzy/) search.
* v1.0.0 - Initial release.


Thank You
------------
* [Fuzzy](http://mattyork.github.io/fuzzy/) for the `fuzzy` filter.
* [Bootstrap](http://twitter.github.io/bootstrap/) for the `<input id="typeahead">` field.
* [Flatstrap](http://littlesparkvt.com/flatstrap/) for the lack of rounded corners and gradients.
* [Font Awesome](http://fortawesome.github.io/Font-Awesome/) for the logo, i.e. `icon-folder-close (&#xf07b;)` + `icon-terminal (&#xf120;)`.
* [Sublime Text](http://www.sublimetext.com/) for the inspiration i.e. `command+T/P` on OSX, `ctrl+P` on Linux and Windows.
* [Christian](https://twitter.com/ChristianKapke) for helping me out with the popup icon.

Alternatives
-------------
* [TabJuggler](https://chrome.google.com/webstore/detail/tabjuggler/jgiplclhploodgnkcljjgddajfbmafmp/)
* [TabManager](https://chrome.google.com/webstore/detail/tab-manager/coonecdghnepgiblpccbbihiahajndda/)
* [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb/)

Development
------------
[Fuse.js](http://kiro.me/projects/fuse.html) seems like a very nice fuzzy search implementation, too, but only supports queries of up to 32 characters and it does not report on the actual characters matched ([yet?](https://github.com/krisk/Fuse/issues/6)).

Contributing
--------------
Pull requests and constructive issues are very welcome.

### Available Grunt Commands
* `grunt test` for linting and running tests.
* `grunt build` for building the extension and generating the dist `.zip`.
* `grunt` to get your development going. This will start a `watch` task running tests, whenever files are changed.

License
---------
Copyright (c) 2013 Jan Raasch

This project and its contents are open source under the MIT license.
