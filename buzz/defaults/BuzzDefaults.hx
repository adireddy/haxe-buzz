package buzz.defaults;

@:native("buzz.defaults")
extern class BuzzDefaults {
    // true/false, metadata (default: metadata)
    public var preload:String;

    //default: false
    public var autoplay:Bool;

    //default: false
    public var loop:Bool;

    // value to display when a time convertion is impossible (default: --)
    public var placeholder:String;

    // default: 5000
    public static var duration:Float;

    //0 - 100 (default: 80)
    public static var volume:Int;

    // Audio formats of your files (["ogg", "mp3", "aac", "wav"])
    public static var formats:String;

    // Route through Web Audio API to improve performance if available. (default: false)
    public static var webAudioApi:Bool;
}