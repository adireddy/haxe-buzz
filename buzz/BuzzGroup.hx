package buzz;

@:native("buzz.group")
extern class BuzzGroup {

    function new(src:Array<BuzzSound>);

    //Load the sounds.
    function load():Void;

    //Load the sounds and begin playback.
    function play():Void;

    //Automatically pause or play the sounds.
    function togglePlay():Void;

    //Pause the sounds. If playback is started again, it will restart from where it was paused.
    function pause():Void;

    //Stop the sound. If the playback is started again, it will restart from the start.
    function stop():Void;

    //Keep re-playing the sounds once it has finished.
    function loop():Void;

    //Stop re-playing the sounds once it has finished.
    function unloop():Void;

    //Mute the sounds.
    function mute():Void;

    //Unmute the sounds.
    function unmute():Void;

    //Automatically mute or unmute the sounds.
    function toggleMute():Void;

    //Set the volume of the sound. The range is 0-100.
    function setVolume(volume:Int):Void;

    //Return the volume of the sound. The range is 0-100.
    function getVolume():Int;

    //Increase the volume of the sound by 1 or {volume}.
    function increaseVolume(?volume:Int):Void;

    //Decrease the volume of the sound by 1 or {volume}.
    function decreaseVolume(volume:Int):Void;

    //Fade the volume of the sound in (from 0 to 100) in {duration} or {defaults.duration} milliseconds. A {callback} function can be set and called when the fade-in is complete.
    function fadeIn(?duration:Float, ?callback:Dynamic):Void;

    //Fade the volume of the sound out (from current volume to 0) in {duration} or {defaults.duration} milliseconds. A {callback} function can be set and called when the fade-in is complete.
    function fadeOut(?duration:Float, ?callback:Dynamic):Void;

    //Fade the volume of the sound from the current volume to {volume} in {duration} or {defaults.duration} milliseconds. A {callback} function can be set and called when the fade-in is complete.
    function fadeTo(volume:Int, ?duration:Float, ?callback:Dynamic):Void;


    //EVENTS//

    //Add one or many event listeners to a sound.
    //Events can be namespaced. Namespacing allows to unbind or trigger some events of a type without affecting others.
    function bind(event:String, callback:Dynamic):Void;

    //Remove the event listeners bound to a sound. Events to unbind can be namespaced.
    function unbind(event:String):Void;

    //Add one or many event listeners to be executed once.
    function bindOnce(event:String, callback:Dynamic):Void;

    //Execute the handlers attached to an event. Note that only the functions are trigged, not the native event.
    function trigger(event:String):Void;


    //Getters and setters//

    //Set the playback position in seconds.
    function setTime(seconds:Float):Void;

    //Set the playback position in {percent}.
    function setPercent(percent:Float):Void;

    //Set the playback speed where 1 is normal speed, 2 is double speed, etc.
    function setSpeed(speed:Float):Void;

    //Directly set the native properties of an HTML5 audio element.
    function set(key:String, value:Float):Void;
}
