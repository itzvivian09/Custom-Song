use_bpm 115
use_synth :prophet

# VARIABLES
middle = "/Users/vivianvargas/Downloads/middle.mp3"

# FUNCTION – melody pattern
define :melody_pattern do
  play :bb4, amp: 0.5
  sleep 0.5
  play :eb4, amp: 0.5
  sleep 0.5
  play :gb4, amp: 0.5
  sleep 0.5
  play :eb4, amp: 0.5
  sleep 0.5
end

live_loop :cybol do
  8.times do
    sample :drum_cymbal_closed, amp: 0.6
    sleep 1
    sample :drum_cymbal_pedal, amp: 0.5
    sleep 1
  end
  stop
end

live_loop :drums do
  sleep 4
  4.times do
    sample :bd_haus, amp: 1.5
    sleep 2
  end
  stop
end

live_loop :melody do
  sleep 8
  4.times do
    melody_pattern
  end
  stop
end

live_loop :middle do
  sleep 8
  sample middle, amp: 0.4, finish: 0.3
  sleep 8
  stop
end

live_loop :ending do
  sleep 16
  
  1.times do
    melody_pattern
  end
  
  4.times do
    sample :drum_cymbal_closed, amp: 0.7
    sleep 0.25
  end
  
  stop
end
