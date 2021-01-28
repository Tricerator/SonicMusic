# Welcome to Sonic Pi

use_bpm 100
#play_pattern [:c, :e, :d]
#play_pattern [:c, :e, :d]

#play chord( :A, :major)
#sleep 1
#play chord( :A,'6*9')
#sleep 1
#play chord( :A, :sus4)
#sleep 1
#play chord( :A, :minor7)
#sleep 1
#play chord( :A,'+5')
#sleep 1


k = 0
loop do
  use_synth :zawa
  use_synth :pretty_bell if (k >= 8)
  use_synth :prophet if (k >= 16)
  use_synth :chipbass if (k >= 24)
  use_synth :dtri if (k >= 32)
  use_synth :piano if (k >= 40)
  
  i = range(0,20,2)[rrand_i(0,10)]
  play (60 + i)
  sample :drum_bass_hard if (k % 4 == 0)
  sample :bass_hard_c, amp: 0.5 if (k % 2 == 0)
  sample :drum_snare_hard if (k % 16 == 0 || k % 7 == 0)
  sample :bass_voxy_hit_c if (k % 3 == 0)
  sleep 0.5
  k += 1
  k = k % 33
end

