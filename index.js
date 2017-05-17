const Stream = require('./node-rtsp-stream');
const streamUrl = process.env.FOSCAM_STREAM_URL;

stream = new Stream({
  name: 'foscam_stream',
  streamUrl: streamUrl,
  wsPort: 9999,
  width: 1280,
  height: 720
});
