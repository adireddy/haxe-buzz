package samples;

import js.Browser;
import pixi.core.display.Container;
import pixi.plugins.app.Application;
import pixi.Button;
import buzz.BuzzSound;
import buzz.Buzz;

class Main extends Application {

	var _btnContainer:Container;
	var _bgSound:BuzzSound;
	var _sound1:BuzzSound;
	var _sound2:BuzzSound;

	public function new() {
		super();

		pixelRatio = Math.floor(Browser.window.devicePixelRatio);
		backgroundColor = 0x088A29;
		super.start();

		_btnContainer = new Container();
		stage.addChild(_btnContainer);

		_bgSound = new BuzzSound("assets/loop", { formats: ["mp3"], preload: true, loop:true });
		_sound1 = new BuzzSound("assets/sound1", { formats: ["wav"], preload: true });
		_sound2 = new BuzzSound("assets/sound2", { formats: ["wav"], preload: true });

		_bgSound.play();

		_addButton("SOUND 1", 0, 0, 100, 30, _playSound1);
		_addButton("SOUND 2", 100, 0, 100, 30, _playSound2);
		_addButton("STOP ALL", 220, 0, 100, 30, _stopAll);

		_btnContainer.position.set((Browser.window.innerWidth - 320) / 2, (Browser.window.innerHeight - 30) / 2);
	}

	function _playBGSound() {
		_bgSound.play();
	}

	function _playSound1() {
		_sound1.play();
	}

	function _playSound2() {
		_sound2.play();
	}

	function _stopAll() {
		_bgSound.stop();
		_sound1.stop();
		_sound2.stop();
	}

	function _addButton(label:String, x:Float, y:Float, width:Float, height:Float, callback:Dynamic) {
		var button = new Button(label, width, height);
		button.x = x;
		button.y = y;
		button.action.add(callback);
		button.enable();
		_btnContainer.addChild(button);
	}

	static function main() {
		new Main();
	}
}