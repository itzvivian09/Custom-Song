use_bpm 115

# VARIABLES
middle="/Users/vivianvargas/Downloads/titi mi pregunto.mp3"
FirstPart="/Users/vivianvargas/Downloads/Andrea begginign.mp3"

# ARRAY
party_pattern = [:d5, :d5, :cs5, :b4,:cs5,:d5,:cs5,:b4]
use_synth :beep
party_amp = 1

# FUNCTION
use_synth :dpulse
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

# PARAMETERIZED FUNCTION 
define :play_notes do |notes, amp_level|
  notes.each do |n|
    play n, amp: amp_level
    sleep 0.5
  end
end

live_loop :cybol do
  with_fx :reverb do   # EFFECT ADDED
    48.times do
      sample :drum_cymbal_closed, amp: 0.6
      sleep 0.5
      sample :drum_cymbal_pedal, amp: 0.5
      sleep 0.5
    end
  end
  stop
end

sleep 8

live_loop :drums do
  20.times do
    sample :bd_haus, amp: 2
    sleep 2
  end
  stop
end

sleep 8

live_loop :melody do
  16.times do
    melody_pattern
  end
  
  # USE PARAMETERIZED FUNCTION 
  play_notes(party_pattern, 1)
  play_notes(party_pattern, 0.5)
  
  stop
end

sleep 8

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
  sample middle, amp: 0.75, beat_stretch: 17
  stop
end

sleep 12

# FADE OUT 
x = 1
4.times do
  sample  :bd_boom, amp: x
  sleep 1
  x = x - 0.25
end

sleep 8


sample FirstPart, amp: 4
sleep 12

live_loop :melody2 do
  8.times do
    party_pattern.each do |note|
      play note, amp: party_amp
      sleep 0.5
    end
  end
  stop
end

sleep 8

live_loop :drums2 do
  16.times do
    sample :bd_haus, amp: 2
    sleep 0.5
    sample :drum_cymbal_closed, amp: 0.7
    sleep 0.5
  end
  stop
end

live_loop :stopper do
  sleep 80
  stop
end
