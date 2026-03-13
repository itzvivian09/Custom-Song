use_bpm 115
use_synth :prophet

# VARIABLES TO STORE SAMPLES
BadBunny = "/Users/vivianvargas/Downloads/titi mi pregunto.mp3"

# array
melody_pattern = [:bb4, :eb4, :gb4, :eb4]
melody_amp = 0.5

#melody
define :play_melody do
  melody_pattern.each do |note|
    play note, amp: melody_amp
    sleep 0.5
  end
end

# cybol
cymbals = [:drum_cymbal_closed, :drum_cymbal_pedal]
8.times do
  cymbals.each do |cymbal|
    sample cymbal, amp: 0.6
    sleep 0.01  
    sleep 0.5
  end
end

# drums
sleep 2
4.times do
  sample :bd_haus, amp: 1
  sleep 0.01
  sleep 2
end

# drum pattern
4.times do
  sample :bd_haus, amp: 1 
  sleep 0.01
  sleep 1
  sample :sn_dub, amp: 0.8 
  sleep 0.01
  sleep 1
end

# melody
4.times do
  melody_pattern.each do |note|
    play note, amp: melody_amp
    sleep 0.5
  end
end

# BAD BUNNY SAMPLE 
sleep 1  
3.times do
  sample BadBunny, amp: 1
  sleep 1.1
end

3.times do
  sample BadBunny, amp: 0.7
  sleep 1.1
end

# kick
sleep 1
2.times do
  sample :bd_haus, amp: 1
  sleep 0.01
  sleep 1
end

live_loop :middle do
  sleep 8
  sample middle, amp: 0.75, beat_stretch: 17
  stop
end

live_loop :ending do
  sleep 16
  
  4.times do
    sample :drum_cymbal_closed, amp: 1
    sleep 0.25
  end
  
  stop
end
