# Foscam Streamer

A small tool to stream your Foscam IP camera on the web, plugin-free.

## To test

- Set the `FOSCAM_STREAM_URL` environment variable (e.g. `rtsp://user:pass@abcde.myfoscam.org:88/video`).
- Start the server with `node index.js`.
- Open the `test_client.html`.

## Watchdog

The watchdog will keep tailing the server log and restart the service if the log stops increasing in size (i.e. the camera is down).

- `python watchdog.py`

## Supervisor

It includes some supervisor configurations to run the server and the watchdog.

**IMPORTANT**: Make sure the absolute paths match your setup.

## TODO

- Absolute paths should be environment variables.
