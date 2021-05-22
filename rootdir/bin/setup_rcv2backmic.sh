# tinyplay file.wav [-D card] [-d device] [-p period_size] [-n n_periods]
# sample usage: playback.sh 2000.wav  1
set -x

sleep 1

echo "enabling back mic"
audio-factory-test -f enable_back-mic
# start recording
tinycap /data/data/rcv2back_mic.wav -r 48000 -b 16 -T 4 && echo "capture done" &



sleep 1
echo "enabling receiver"
audio-factory-test -f enable_receiver
tinyplay /vendor/etc/rcv_seal.wav

sleep 1


echo "disabling back mic"
audio-factory-test -f disable_back-mic

echo "disabling receiver"
audio-factory-test -f disable_receiver
