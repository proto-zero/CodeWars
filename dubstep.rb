def song_decoder(song)
  song.gsub!("WUB", " ").split.join(" ")
  # gsub! changes song by finding instances of "WUB" and changing them to spaces,
  ### then .split divides the string into an array of isolated words,
  ### then .join puts them back together with only one space between words.
end
