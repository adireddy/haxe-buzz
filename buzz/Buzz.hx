package buzz;

import buzz.defaults.BuzzDefaults;

@:native("buzz")
extern class Buzz {

    // A convenient predefined group containing all the buzz sound instances.
    static function all():BuzzSound;

    static function isSupported():Bool;
    static function isOGGSupported():Bool;
    static function isWAVSupported():Bool;
    static function isMP3Supported():Bool;
    static function isAACSupported():Bool;

    //All the default settings can be set globaly.
    static var defaults:BuzzDefaults;

    //Array of all the sound instances created.
    static var sounds:Array<BuzzSound>;

    // helper functions

    //Format seconds in an easy to read timer like 00:00 or 00:00:00 if long is set to true.
    static function toTimer(seconds:Float, ?long:Bool):String;

    //Convert a timer as 00:00 or 00:00:00 in seconds.
    static function fromTimer(timer:String):Float;

    //Calculate percentage from values.
    static function toPercent(value:Float, total:Float, ?round:Bool):Float;

    //Calculate value from a percentage.
    static function fromPercent(value:Float, total:Float, ?round:Bool):Float;
}