def solution(list)
  range = []
  result = []

  for i in 0...list.length
    if list[i].next == list[i+1]
      range << list[i]
      range << list[i+1]
    else
      if !range.include? list[i]
        result << list[i]
      end
      if !range.empty?
        if range.length > 2
          result << "#{range.first}-#{range.last}"
        else
          result << range
        end
        range = []
      end
    end
  end

  return result.join(",")

end
