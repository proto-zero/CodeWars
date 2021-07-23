def alphabet_war(fight)
  sides = {
    "w"=>4,
    "p"=>3,
    "b"=>2,
    "s"=>1,
    "m"=>-4,
    "q"=>-3,
    "d"=>-2,
    "z"=>-1}
  score = []

  fight.each_char do |x|
    score << sides[x]
  end

  if score.compact.sum > 0
    return "Left side wins!"
  elsif score.compact.sum < 0
    return "Right side wins!"
  else
    return "Let's fight again!"
  end

end
