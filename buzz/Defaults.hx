package buzz;

import js.html.Document;

@:native("buzz.defaults")
extern class Defaults {
	// true/false, metadata (default: metadata)
	var preload:Dynamic;

	//default: false
	var autoplay:Bool;

	//default: false
	var loop:Bool;

	// value to display when a time convertion is impossible (default: --)
	var placeholder:String;

	// default: 5000
	var duration:Float;

	//0 - 100 (default: 80)
	var volume:Int;

	// Audio formats of your files (["ogg", "mp3", "aac", "wav"])
	var formats:Array<String>;

	// Route through Web Audio API to improve performance if available. (default: false)
	var webAudioApi:Bool;

	// iframe support
	var document:Document;
}