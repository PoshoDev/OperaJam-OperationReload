function play(snd) {
    audio_play_sound(snd, irandom_range(1, 999), false);
}

function play3(snd1, snd2, snd3) {
    play(choose(snd1, snd2, snd3));
}