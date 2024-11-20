
# PixelArt x Spotify

Show the actual Album Cover of your Spotify Connect receiver on your Pixoo64 Pixel Display.

<img src="demo.png" alt="HTML ERROR" width="530" height="258">



## Requirements

- A working [Raspotify](https://github.com/dtcooper/raspotify) receiver device with ubuntu
- A [Pixoo64](https://divoom.com/products/pixoo-64) Pixel Display
- A [Spotify Development Account](https://developer.spotify.com/) (free)

## Installation

1. Install [Raspotify](https://github.com/dtcooper/raspotify) on your receiver device (e.g. RPi3).

2. Clone the repo into the Raspotify receiver device (e.g. RPi3) under /usr/bin/{Repository-Folder}.
```bash
cd /usr/bin
sudo git clone https://github.com/Pfleiderer-Adrian/PixelArt_x_Spotify
```

3. Create a virtual enviroment and install the requirements.
```bash
cd /usr/bin/PixelArt_x_Spotify
sudo python3 -m venv env
source env/bin/activate
sudo pip install -r requirements.txt
```

4. Make launcher.sh and main.py executabel
```bash
cd /usr/bin/PixelArt_x_Spotify
sudo chmod +x launcher.sh
sudo chmod +x main.py
```

5. Edit the config.py file in the repo folder.
```python
config = {
    "SPOTIPY_CLIENT_ID": 'your_spotify_client_id',
    "SPOTIPY_CLIENT_SECRET": 'your_spotify_client_secret',
    "PIXOO_IP": "your_static_pixoo_ip",
}
```
> The first two entrys are the API credentials from your Spotify app. Therefore [create a spotify development account](https://developer.spotify.com/) and [register your app](https://developer.spotify.com/dashboard) for api access (both free). The PIXOO_IP is your static IP for your pixoo64 device in your network. You find the pixoo64-IP in your router admin center. Maybe you must make the ip static in your router settings.

6. Install tkinter for the pixoo libary.
```bash
sudo apt-get install python3-tk
```

7. Add the following at the end of your respotfy-config in /etc/raspotify/conf:
```python
LIBRESPOT_ONEVENT="/usr/bin/PixelArt_x_Spotify/launcher.sh"
```

8. Restart Raspotify
```python
sudo systemctl restart raspotify.service
```
## Troubleshooting
Check the Raspotify logs for crashes.
```bash
sudo journalctl -u raspotify -b
```







