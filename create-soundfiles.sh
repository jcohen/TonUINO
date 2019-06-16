#!/bin/bash

language=${1:-de}

source "./strings-$language.sh"

for i in {1..250};
do
    j=$(printf "%04d" $i)
    say -v "$VOICE" $i -o $j.aiff
    sox $j.aiff $j.wav pitch "$PITCH"
    lame -b 128 $j.wav $j.mp3
done

say -v "$VOICE" "${STRINGS[0]}" -o 0300.aiff
sox 0300.aiff 0300.wav pitch "$PITCH"
lame -b 128 0300.wav 0300_new_tag.mp3

say -v "$VOICE" "${STRINGS[1]}" -o 0310.aiff
sox 0310.aiff 0310.wav pitch "$PITCH"
lame -b 128 0310.wav 0310.mp3

say -v "$VOICE" "${STRINGS[2]}" -o 0311.aiff
sox 0311.aiff 0311.wav pitch "$PITCH"
lame -b 128 0311.wav 0311_mode_random_episode.mp3

say -v "$VOICE" "${STRINGS[3]}" -o 0312.aiff
sox 0312.aiff 0312.wav pitch "$PITCH"
lame -b 128 0312.wav 0312_mode_album.mp3

say -v "$VOICE" "${STRINGS[4]}" -o 0313.aiff
sox 0313.aiff 0313.wav pitch "$PITCH"
lame -b 128 0313.wav 0313_mode_party.mp3

say -v "$VOICE" "${STRINGS[5]}" -o 0314.aiff
sox 0314.aiff 0314.wav pitch "$PITCH"
lame -b 128 0314.wav 0314_mode_single_track.mp3

say -v "$VOICE" "${STRINGS[6]}" -o 0315.aiff
sox 0315.aiff 0315.wav pitch "$PITCH"
lame -b 128 0315.wav 0315_mode_audio_book.mp3

say -v "$VOICE" "${STRINGS[7]}" -o 0316.aiff
sox 0316.aiff 0316.wav pitch "$PITCH"
lame -b 128 0316.wav 0316_admin.mp3

say -v "$VOICE" "${STRINGS[8]}" -o 0320.aiff
sox 0320.aiff 0320.wav pitch "$PITCH"
lame -b 128 0320.wav 0320_select_file.mp3

say -v "$VOICE" "${STRINGS[9]}" -o 0330.aiff
sox 0330.aiff 0330.wav pitch "$PITCH"
lame -b 128 0330.wav 0330.mp3

say -v "$VOICE" "${STRINGS[10]}" -o 0331.aiff
sox 0331.aiff 0331.wav pitch "$PITCH"
lame -b 128 0331.wav 0331.mp3

say -v "$VOICE" "${STRINGS[11]}" -o 0332.aiff
sox 0332.aiff 0332.wav pitch "$PITCH"
lame -b 128 0332.wav 0332.mp3

say -v "$VOICE" "${STRINGS[12]}" -o 0400.aiff
sox 0400.aiff 0400.wav pitch "$PITCH"
lame -b 128 0400.wav 0400_ok.mp3

say -v "$VOICE" "${STRINGS[13]}" -o 0401.aiff
sox 0401.aiff 0401.wav pitch "$PITCH"
lame -b 128 0401.wav 0401_error.mp3

say -v "$VOICE" "${STRINGS[14]}" -o 0"$PITCH".aiff
sox 0"$PITCH".aiff 0"$PITCH".wav pitch "$PITCH"
lame -b 128 0"$PITCH".wav 0"$PITCH"_reset_tag.mp3

say -v "$VOICE" "${STRINGS[15]}" -o 0801.aiff
sox 0801.aiff 0801.wav pitch "$PITCH"
lame -b 128 0801.wav 0801_reset_tag_ok.mp3

say -v "$VOICE" "${STRINGS[16]}" -o 0802.aiff
sox 0802.aiff 0802.wav pitch "$PITCH"
lame -b 128 0802.wav 0802_reset_aborted.mp3

say -v "$VOICE" "${STRINGS[17]}" -o 0999.aiff
sox 0999.aiff 0999.wav pitch "$PITCH"
lame -b 128 0999.wav 0999_reset_ok.mp3

rm *.aiff
rm *.wav
