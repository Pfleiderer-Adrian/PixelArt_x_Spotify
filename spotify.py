import spotipy
from spotipy.oauth2 import SpotifyClientCredentials
import config


# returns an image url of the album cover
def get_album_url(track_id):
    auth_manager = SpotifyClientCredentials(config.config["SPOTIPY_CLIENT_ID"],
                                            config.config["SPOTIPY_CLIENT_SECRET"])
    sp = spotipy.Spotify(auth_manager=auth_manager)

    # Get current playing
    track = sp.track(track_id)

    # Ensure that a track is playing
    if track is not None:
        # Get the album art
        return track['album']['images'][2]['url']
    else:
        return None
