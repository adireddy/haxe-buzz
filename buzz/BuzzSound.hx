package buzz;

@:native("buzz.sound")
extern class BuzzSound {

    @:overload(function (src:Array<String>, ?options:Dynamic):Void {})
    function new(src:String, ?options:Dynamic);

    //Load the sound.
    function load():Void;

    //Load the sound and begin playback.
    function play():Void;

    //Automatically pause or play the sound.
    function togglePlay():Void;

    //Pause the sound. If playback is started again, it will restart from where it was paused.
    function pause():Void;

    //Return true if the sound is paused or is ended. Return false otherwise.
    function isPaused():Bool;

    //Stop the sound. If the playback is started again, it will restart from the start.
    function stop():Void;

    //Return true if the sound is ended. Return false otherwise.
    function isEnded():Bool;

    //Keep re-playing the sound once it has finished.
    function loop():Void;

    //Stop re-playing the sound once it has finished.
    function unloop():Void;

    //Mute the sound.
    function mute():Void;

    //Unmute the sound.
    function unmute():Void;

    //Automatically mute or unmute the sound.
    function toggleMute():Void;

    //Return true if the sound is muted. Return false otherwise.
    function isMuted():Bool;

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

    //Fade-out the volume of the current sound while fade-in a new sound.
    function fadeWith(sound:String, ?duration:Float):Void;


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

    //Get the current playback position in seconds.
    function getTime():Float;

    //Set the playback position in {percent}.
    function setPercent(percent:Float):Void;

    //Get the playback position in percent.
    function getPercent():Float;

    //Get the total duration of the sound in seconds.
    function getDuration():Float;

    //Set the playback speed where 1 is normal speed, 2 is double speed, etc.
    function setSpeed(speed:Float):Void;

    //Get the playback speed.
    function getSpeed():Float;

    //Directly set the native properties of an HTML5 audio element.
    function set(key:String, value:Float):Void;

    //Directly get the native properties of an HTML5 audio element.
    function get(key:String):Void;

    //Time Ranges//

    //Get an array that represents the ranges of the sound that the browser has played.
    function getPlayed():Array<Dynamic>;

    //Get an array with ranges of the sound that the browser has buffered.
    function getBuffered():Array<Dynamic>;

    //Get an array with ranges of the sound to which it is possible for the browser to seek.
    function getSeekable():Array<Dynamic>;


    //Errors and States//

    /*
        Return the code/message of the current error.
        1 MEDIA_ERR_ABORTED: The fetching process for sound was aborted by the user agent at the user's request.
        2 MEDIA_ERR_NETWORK: A network error of some description caused the browser to stop fetching the sound, after the sound was established to be usable.
        3 MEDIA_ERR_DECODE: An error of some description occurred while decoding the sound, after the resource was established to be usable.
        4 MEDIA_ERR_SRC_NOT_SUPPORTED: The src attribute was not suitable.
     */
    function getErrorCode():Int;
    function getErrorMessage():String;

    /*
        Return the code/message of the sound current state.
        0 HAVE_NOTHING: No information is available.
        1 HAVE_METADATA: Enough of the sound has been obtained to get some info.
        2 HAVE_CURRENT_DATA: Data for the immediate current playback position is available.
        3 HAVE_FUTURE_DATA: Data is available for the immediate current playback position and to advance the current playback position.
        4 HAVE_ENOUGH_DATA: All information are available.
     */
    function getStateCode():Int;
    function getStateMessage():String;

    /*
        Return the code/message of the network current state.
        0 NETWORK_EMPTY: The sound has not yet been initialized.
        1 NETWORK_IDLE: The sound has been selected but it is not actually using the network.
        2 NETWORK_LOADING: The browser is actively trying to download data.
        3 NETWORK_NO_SOURCE: The sound is not available.
     */
    function getNetworkStateCode():Int;
    function getNetworkStateMessage():String;
}
