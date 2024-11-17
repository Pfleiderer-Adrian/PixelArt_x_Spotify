
# PixelArt x Spotify

Show the actual Album Cover of your Spotify Connect Client on your Pixoo64 Pixel Display.

<img src="demo.png" alt="HTML ERROR" width="530" height="258">



## Requirements

- A working [Raspotify](https://github.com/dtcooper/raspotify) client device with ubuntu
- A [Pixoo64](https://divoom.com/products/pixoo-64) Pixel Display
- A [Spotify Development Account](https://developer.spotify.com/) (free)

## Installation

1. Install [Raspotify](https://github.com/dtcooper/raspotify) on your Client (e.g. RPi3).

2. Clone and install the project into the Raspotify client device under /usr/bin/{Repository-Folder}.
```bash
cd /usr/bin
git clone https://github.com/Pfleiderer-Adrian/PixelArt_x_Spotify
cd PixelArt_x_Spotify
python3 -m venv env
source env/bin/activate
cd /usr/bin/PixelArt_x_Spotify
pip install -r requirements.txt
```

3. Edit the config.py file in the repo folder.
```python
config = {
    "SPOTIPY_CLIENT_ID": 'your_spotify_client_id',
    "SPOTIPY_CLIENT_SECRET": 'your_spotify_client_secret',
    "PIXOO_IP": "your_static_pixoo_ip",
}
```
The first two entrys are the credentials from your Spotify app. Therefore [create a spotify development account](https://developer.spotify.com/) and [register your app](https://developer.spotify.com/dashboard) for api access (both free).

The PIXOO_IP is your static IP for your pixoo64 device in your network. Maybe you must make it static in your router settings.

4. Add the following at the end of your respotfy-config in /etc/raspotify/conf:
```python
LIBRESPOT_ONEVENT="/usr/bin/PixelArt_x_Spotify/launcher.sh"
```

5. Make launcher.sh and main.py executabel
```python
sudo chmod +x /usr/bin/PixelArt_x_Spotify/launcher.sh
sudo chmod +x /usr/bin/PixelArt_x_Spotify/main.py
```

6. Restart Raspotify
```python
sudo systemctl restart raspotify.service
```
## Troubleshooting
Check the Raspotify logs for crashes.
```bash
sudo journalctl -u raspotify -b
```







