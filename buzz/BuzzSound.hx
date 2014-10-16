package buzz;

@:native("buzz.sound")
extern class BuzzSound {
    function new(src:String, options:Dynamic);

    function load():Void;
    function play():Void;
    function togglePlay():Void;
    function pause():Void;
    function isPaused():Bool;
    function stop():Void;
    function isEnded():Bool;
    function loop():Void;
    function unloop():Void;
    function mute():Void;
    function unmute():Void;
    function toggleMute():Void;
    function isMuted():Bool;
    function setVolume(volume:Float):Void;
    function getVolume():Float;
    function increaseVolume(volume:Float):Void;
    function decreaseVolume(volume:Float):Void;
    function setTime(time:Float):Void;
    function getTime():Float;
    function setPercent(percent:Float):Void;
    function getPercent():Float;
    function setSpeed(duration:Float):Void;
    function getSpeed():Float;
    function getDuration():Float;
    function getPlayed():Float;
    function getBuffered():Float;
    function getSeekable():Float;
    function getErrorCode():Int;
    function getErrorMessage():String;
    function getStateCode():Int;
    function getStateMessage():String;
    function getNetworkStateCode():Int;
    function getNetworkStateMessage():String;
    function set(key:String, value:String):Void;
    function get(key:String):Void;
    function bind(types:String, func:Dynamic):Void;
    function unbind(types:String):Void;
    function bindOnce(types:String, func:Dynamic):Void;
    function trigger(types:String):Void;
    function fadeTo(fadeto:Float, duration:Float, callback:Dynamic):Void;
    function fadeIn(duration:Float, callback:Dynamic):Void;
    function fadeWith(sound:String, duration:Float):Void;
}
