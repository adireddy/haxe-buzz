package demo;

import pixi.display.DisplayObjectContainer;
import pixi.Button;
import pixi.PixiApplication;

import buzz.BuzzSound;

class Main extends PixiApplication {

    var _btnContainer:DisplayObjectContainer;
    var _bgSound:BuzzSound;
    var _sound1:BuzzSound;
    var _sound2:BuzzSound;

    public function new() {
        super();
        backgroundColor = 0x088A29;

        _btnContainer = new DisplayObjectContainer();
        container.addChild(_btnContainer);

        _bgSound = new BuzzSound("assets/loop", { formats: [ "mp3" ], preload: true, loop:true });
        _sound1 = new BuzzSound("assets/sound1", { formats: [ "wav" ], preload: true });
        _sound2 = new BuzzSound("assets/sound2", { formats: [ "wav" ], preload: true });

        _addButton("LOOP SOUND", 0, 0, 100, 30, _playBGSound);
        _addButton("SOUND 1", 100, 0, 100, 30, _playSound1);
        _addButton("SOUND 2", 200, 0, 100, 30, _playSound2);
        _addButton("STOP ALL", 300, 0, 100, 30, _stopAll);

        _btnContainer.x = 200;
        _btnContainer.y = 285;
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