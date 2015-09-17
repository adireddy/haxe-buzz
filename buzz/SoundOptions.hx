package buzz;

import js.html.Document;

typedef SoundOptions = {
	@:optional var autoplay:Bool;
	@:optional var duration:Float;
	@:optional var formats:Array<String>;
	@:optional var loop:Bool;
	@:optional var placeholder:String;
	@:optional var preload:String;
	@:optional var volume:Float;
	@:optional var webAudioApi:Bool;
	@:optional var document:Document;
}