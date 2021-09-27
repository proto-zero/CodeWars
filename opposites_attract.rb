def lovefunc( flower1, flower2 )
  if flower1.odd? && flower2.even?
    return true
  elsif flower1.even? && flower2.odd?
    return true
  else
    return false
  end
end
