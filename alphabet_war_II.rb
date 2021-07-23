# A hash with all of the values for the sides
BATTALIONS = {
    w: 4,
    p: 3,
    b: 2,
    s: 1,
    m: -4,
    q: -3,
    d: -2,
    z: -1,
}

def alphabet_war(fight)
  # Variables
  letters = fight.chars
  lefties = "wpbs"
  righties = "mqdz"
  score = []

  letters.each_with_index do |letter, index|
      # Checking the first letter
      if index == 0
          if lefties.include? letter
              if letters[index + 1] == "j"
                  score << -(BATTALIONS.fetch(letter.to_sym))
              else
                  score << BATTALIONS.fetch(letter.to_sym)
              end
          elsif righties.include? letter
              if letters[index + 1] == "t"
                  score << -(BATTALIONS.fetch(letter.to_sym))
              else
                  score << BATTALIONS.fetch(letter.to_sym)
              end
          else
              score << 0
          end

      # Checking the last letter
      elsif index == (letters.length - 1)
          if lefties.include? letter
              if letters[index - 1] == "j"
                  score << -(BATTALIONS.fetch(letter.to_sym))
              else
                  score << BATTALIONS.fetch(letter.to_sym)
              end
          elsif righties.include? letter
              if letters[index - 1] == "t"
                  score << -(BATTALIONS.fetch(letter.to_sym))
              else
                  score << BATTALIONS.fetch(letter.to_sym)
              end
          else
              score << 0
          end
      # Checking the body
      else
          if lefties.include? letter
              if (letters[index - 1] == "j" && letters[index + 1] != "t") ||
                (letters[index + 1] == "j" && letters[index - 1] != "t")
                  score << -(BATTALIONS.fetch(letter.to_sym))
              else
                  score << (BATTALIONS.fetch(letter.to_sym))
              end
          elsif righties.include? letter
              if (letters[index - 1] == "t" && letters[index + 1] != "j") ||
                  (letters[index + 1] == "t" && letters[index - 1] != "j")
                  score << -(BATTALIONS.fetch(letter.to_sym))
              else
                  score << (BATTALIONS.fetch(letter.to_sym))
              end
          else
              score << 0
          end
      end
  end

  return "Left side wins!" if score.sum > 0
  return "Right side wins!" if score.sum < 0
  return "Let's fight again!"
end

puts alphabet_war("z")
