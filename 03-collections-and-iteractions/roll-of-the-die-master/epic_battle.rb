
range = (1..6).to_a

attacker_losts = 0
defender_losts = 0

puts "Attack | Def"
puts "------------"

range.each do |a1|
  range.each do |a2|
    range.each do |a3|
      range.each do |d1|
        range.each do |d2|

          first = a1 <=> d1
          second = a2 <=> d2

          case first
          when -1
            attacker_losts += 1
          when 0
            attacker_losts += 1
          when 1
            defender_losts += 1
          end

          case second
          when -1
            attacker_losts += 1
          when 0
            attacker_losts += 1
          when 1
            defender_losts += 1
          end

          puts "#{a1} #{a2} #{a3} vs #{d1} #{d2}"
        end
      end
    end
  end
end

percentage = (attacker_losts.to_f/defender_losts) * 100

puts <<~ooo

Final Output
============

Attacker lost #{attacker_losts} armies
Defender lost #{defender_losts} armies

For every 100 armies the attacker loses, the defender loses #{percentage.round} armies.

ooo
