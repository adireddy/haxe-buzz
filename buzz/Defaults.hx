package buzz;

@:native("buzz.defaults")
extern class Defaults {
    // auto, metadata, none (default:auto)
    public var preload:String;

    //default:false
    public var autoplay:Bool;

    //default:false
    public var loop:Bool;

    // value to display when a time convertion is impossible (default: --)
    public var placeholder:String;

    // default: 5000
    public static var duration:String;

    // Audio formats of your files (default:['ogg', 'mp3', 'aac', 'wav'])
    public static var formats:String;
}
