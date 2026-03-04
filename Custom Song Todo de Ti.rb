use_bpm 115
use_synth :prophet

# VARIABLES TO STORE SAMPLES
middle="/Users/vivianvargas/Downloads/titi mi pregunto.mp3"

# FUNCTION
define :melody_pattern do
  play :bb4,amp: 0.5
  sleep 0.5
  play :eb4, amp: 0.5
  sleep 0.5
  play :gb4,amp: 0.5
  sleep 0.5
  play :eb4,amp: 0.5
  
end
live_loop :cybol do
  20.times do
    sample :drum_cymbal_closed, amp: 0.6
    sleep 0.5
    sample :drum_cymbal_pedal, amp: 0.5
    sleep 0.5
  end
  stop
end
sleep 4
live_loop :drums do
  8.times do
    sample :bd_haus, amp: 2
    sleep 2
  end
  stop
end
live_loop :melody do
  sleep 8
  4.times do
    melody_pattern
    sleep 0.5
  end
  stop
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
