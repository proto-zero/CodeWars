def in_array(array1, array2)
  # Variables
  r = []

  array1.each do |a1|     # for each word in array1...
    array2.each do |a2|   # for each word in array2...
      if a2.include?(a1)  # if a word in array2 contains array1's word?
        r << a1           # push that word into r
      end
    end
  end
  r.uniq.sort             # remove any multiples and sort the array
end


puts in_array(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"])
