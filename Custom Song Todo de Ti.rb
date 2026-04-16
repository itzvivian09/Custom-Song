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
  sleep 0.5
end

#starts immediately!
live_loop :cybol do
  48.times do
    sample :drum_cymbal_closed, amp: 0.6
    sleep 0.5
    sample :drum_cymbal_pedal, amp: 0.5
    sleep 0.5
  end
  stop
end

sleep 8

#waits 4 beats after the :cymbol loop starts
live_loop :drums do
  20.times do
    sample :bd_haus, amp: 2
    sleep 2
  end
  stop
end

sleep 8

#starts 4 beats after the :drums loop starts
live_loop :melody do
  print("MELODY")
  16.times do
    melody_pattern
  end
  stop
end

sleep 8

#starts 8 beats after the :melody and :middle loops start
live_loop :ending do
  6.times do
    4.times do
      sample :drum_cymbal_closed, amp: 1
      sleep 0.25
    end
    sleep 3
  end
  stop
end

sleep 24

live_loop :middle do
  print("MIDDLE")
  sample middle, amp: 0.75, beat_stretch: 17
  stop
end

sleep 12

#4.times do loop with a variable for the amp
#FADE OUT
sample :drum_cowbell, amp: 1
sleep 1
sample :drum_cowbell, amp: 0.7
sleep 1
sample :drum_cowbell, amp: 0.4
sleep 1
sample :drum_cowbell, amp: 0.1
sleep 1
