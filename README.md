haxe-buzz ![Build Status](https://travis-ci.org/adireddy/haxe-buzz.svg?branch=master) [![Built with Grunt](https://cdn.gruntjs.com/builtwith.png)](http://gruntjs.com/)
=========

![haxe buzz logo](https://raw.githubusercontent.com/adireddy/haxe-buzz/master/logo.png)

Externs of Buzz for Haxe - A Javascript HTML5 Audio library.

### Installation ###

```haxe
haxelib install buzz
```

### Demo ###

* [Haxe Buzz Demo](http://adireddy.github.io/demos/haxe-howler/)

Look at the `samples` folder for the source code of above example.

### Usage ###

```haxe

package ;

import buzz.Buzz;
import buzz.BuzzSound;
import buzz.events.BuzzEvent;

class Main {

	private var _sound:BuzzSound;

	public function new() {
	    //autoplay is false by default
	    //this is just to show how you can set default properties
	    //like autoplay, loop, preload, etc
  		Buzz.defaults.autoplay = false;
  		Buzz.defaults.webAudioApi = true;
  		_sound = new BuzzSound("sounds/test", { 
  			formats: [ "ogg", "mp3" ],
  			preload: true 
  		});
  		_sound.bind(BuzzEvent.CAN_PLAYTHROUGH, _playSound);
	}
	
	private function _playSound():Void {
      	_sound.play();
  	}

	private static function main() {
		new Main();
	}
}
```

### Licensing Information ###

<a rel="license" href="http://opensource.org/licenses/MIT">
<img alt="MIT license" height="40" src="http://upload.wikimedia.org/wikipedia/commons/c/c3/License_icon-mit.svg" /></a>

This content is released under the [MIT](http://opensource.org/licenses/MIT) License.

Buzz is written by [Jay Salvat](http://buzz.jaysalvat.com/) and licensed under the [MIT](http://opensource.org/licenses/MIT) License.
