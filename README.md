haxe-buzz
=========

![haxe buzz logo](https://raw.githubusercontent.com/adireddy/haxe-buzz/master/logo.png)

Extern classes of Buzz for Haxe - A Javascript HTML5 Audio library.

### Installation ###

```haxe
haxelib install buzz
```

### Usage ###

```haxe

package ;

import buzz.Buzz;
import buzz.BuzzSound;
import buzz.events.BuzzEvent;

class Main {

	private var _sound:BuzzSound;

	public function new() {
	    // autoplay is false by default
	    //this is just to show how you can set default properties like autoplay, loop, preload, etc
  		Buzz.defaults.autoplay = false;
  		_sound = new BuzzSound("sounds/test", { formats: [ "ogg", "mp3" ], preload: true });
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

This content is released under the (http://opensource.org/licenses/MIT) MIT License.
