def format_duration(time)
  # Variables
  years   = 0
  months  = 0
  days    = 0
  hours   = 0
  minutes = 0
  seconds = 0
  result  = []
  tally   = []
  final_answer = ""

  ### Main Program
  # Reduce time to 0
  if time == 0                    # If time is 0 then it returns the time as "now"
    final_answer = "now"
  else
    while time > 0                ### Loop until time is 0
      if time >= 31536000         # Years
        time -= 31536000          # Removes one year's worth of seconds from time
        years += 1                # Increases years integer by 1

      elsif time >= 2592000          # Months
        time -= 2592000
        months += 1

      elsif time >= 86400         # Days
        time -= 86400
        days += 1

      elsif time >= 3600          # Hours
        time -= 3600
        hours += 1

      elsif time >= 60            # Minutes
        time -= 60
        minutes += 1

      elsif time > 0              # Seconds
        time -= 1
        seconds += 1
      end
    end

    # Check for plural
    if years > 1
      result << "#{years} years"
    elsif years == 1
      result << "1 year"
    end

    if months > 1
      result << "#{months} months"
    elsif years == 1
      result << "1 month"
    end

    if days > 1
      result << "#{days} days"
    elsif days == 1
      result << "1 day"
    end

    if hours > 1
      result << "#{hours} hours"
    elsif hours == 1
      result << "1 hour"
    end

    if minutes > 1
      result << "#{minutes} minutes"
    elsif minutes == 1
      result << "1 minute"
    end

    if seconds > 1
      result << "#{seconds} seconds"
    elsif seconds == 1
      result << "1 second"
    end

    # Place "and" between the last two spots in the result array
    if result.length > 1
      tally << "#{result[-2]} and #{result[-1]}"   # Grab the last two spots in the result array
      2.times do result.pop                       # Remove the last two spots in the result array
      end
      result << tally                             # Replace the last two spots with tally
    end

    final_answer = result.join(", ")              # Add commas where necessary
  end

  # Output
  final_answer
end


# Testing
puts format_duration(0)
puts format_duration(1)
puts format_duration(62)
puts format_duration(120)
puts format_duration(3600)
puts format_duration(3662)
puts format_duration(31536000)
puts format_duration(100000000)
