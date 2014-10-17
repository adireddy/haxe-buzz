package buzz.events;

class BuzzEvent {

    //Sent when playback is aborted; for example, if the media is playing and is restarted from the beginning, this event is sent.
    public static inline var ABORT:String = "abort";

    //Sent when enough data is available that the media can be played, at least for a couple of frames. This corresponds to the CAN_PLAY readyState.
    public static inline var CAN_PLAY:String = "canplay";

    //Sent when the ready state changes to CAN_PLAY_THROUGH, indicating that the entire media can be played without interruption, assuming the download rate remains at least at the current level.
    public static inline var CAN_PLAYTHROUGH:String = "canplaythrough";

    //Sent when the ready state changes to DATA_UNAVAILABLE.
    public static inline var DATA_UNAVAILABLE:String = "dataunavailable";

    //The meta data has loaded or changed, indicating a change in duration of the media. This is sent, for example, when the media has loaded enough data that the duration is known.
    public static inline var DURATION_CHANGE:String = "durationchange";

    //The media has become empty; for example, this event is sent if the media has already been loaded (or partially loaded), and the load() method is called to reload it.
    public static inline var EMPTIED:String = "emptied";

    //Sent when an error occurs and the media is empty.
    public static inline var EMPTY:String = "empty";

    //Sent when playback completes.
    public static inline var ENDED:String = "ended";

    //Sent when an error occurs. The element's error attribute contains more information.
    public static inline var ERROR:String = "error";

    //The first frame of the media has finished loading.
    public static inline var LOADED_DATA:String = "loadeddata";

    //The media's meta data has finished loading; all attributes now contain as much useful information as they're going to.
    public static inline var LOADED_META_DATA:String = "loadedmetadata";

    //Sent when loading of the media begins.
    public static inline var LOAD_START:String = "loadstart";

    //Sent when playback is paused.
    public static inline var PAUSE:String = "pause";

    //Sent when playback of the media starts after having been paused; that is, when playback is resumed after a prior pause event.
    public static inline var PLAY:String = "play";

    //Sent when the media begins to play (either for the first time, after having been paused, or after ending and then restarting).
    public static inline var PLAYING:String = "playing";

    //Sent periodically to inform interested parties of progress downloading the media. Information about the current amount of the media that has been downloaded is available in the media element's buffered attribute.
    public static inline var PROGRESS:String = "progress";

    //Sent when the playback speed changes.
    public static inline var RATE_CHANGE:String = "ratechange";

    //Sent when a seek operation completes.
    public static inline var SEEKED:String = "seeked";

    //Sent when a seek operation begins.
    public static inline var SEEKING:String = "seeking";

    //Sent when loading of the media is suspended; this may happen either because the download has completed or because it has been paused for any other reason.
    public static inline var SUSPEND:String = "suspend";

    //The time indicated by the element's currentTime attribute has changed.
    public static inline var TIME_UPDATE:String = "timeupdate";

    //Sent when the audio volume changes (both when the volume is set and when the muted attribute is changed).
    public static inline var VOLUME_CHANGE:String = "volumechange";

    //Sent when the requested operation (such as playback) is delayed pending the completion of another operation (such as a seek).
    public static inline var WAITING:String = "waiting";
}
