def traverse_TCP_states(eventList)
  #Variables
  @eventList = eventList                    # Using @ to make Variables Universal
  @state = "CLOSED"
  @error = "ERROR"

  # This method is identical to closed, however it doesn't remove the first
  ### command in the list.
  # Once the program leaves this method it is never visited again.
  if @eventList[0] == "APP_PASSIVE_OPEN"
    listen
  elsif @eventList[0] == "APP_ACTIVE_OPEN"
    syn_sent
  else
    @error
  end
end

def closed
  @state = "CLOSED"                         # Change @state
  @eventList.delete(@eventList[0])          # Delete the first command in the list
  if @eventList.length == 0                 # If the list is empty...
    @state                                  ### Return @state
  elsif @eventList[0] == "APP_PASSIVE_OPEN" # Check the first command in the list
    listen                                  # Go to the corresponding method
  elsif @eventList[0] == "APP_ACTIVE_OPEN"
    syn_sent
  else
    @error                                  # Return "ERROR" if commands don't match
  end
end

def listen
  @state = "LISTEN"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "RCV_SYN"
    syn_rcvd
  elsif @eventList[0] == "APP_SEND"
    syn_sent
  elsif @eventList[0] == "APP_CLOSE"
    closed
  else
    @error
  end
end

def syn_rcvd
  @state = "SYN_RCVD"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "APP_CLOSE"
    fin_wait_1
  elsif @eventList[0] == "RCV_ACK"
    established
  else
    @error
  end
end

def syn_sent
  @state = "SYN_SENT"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "RCV_SYN"
    syn_rcvd
  elsif @eventList[0] == "RCV_SYN_ACK"
    established
  elsif @eventList[0] == "APP_CLOSE"
    closed
  else
    @error
  end
end

def established
  @state = "ESTABLISHED"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "APP_CLOSE"
    fin_wait_1
  elsif @eventList[0] == "RCV_FIN"
    close_wait
  else
    @error
  end
end

def fin_wait_1
  @state = "FIN_WAIT_1"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "RCV_FIN"
    closing
  elsif @eventList[0] == "RCV_FIN_ACK"
    time_wait
  elsif @eventList[0] == "RCV_ACK"
    fin_wait_2
  else
    @error
  end
end

def closing
  @state = "CLOSING"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "RCV_ACK"
    time_wait
  else
    @error
  end
end

def fin_wait_2
  @state = "FIN_WAIT_2"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "RCV_FIN"
    time_wait
  else
    @error
  end
end

def time_wait
  @state = "TIME_WAIT"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "APP_TIMEOUT"
    closed
  else
    @error
  end
end

def close_wait
  @state = "CLOSE_WAIT"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "APP_CLOSE"
    last_ack
  else
    @error
  end
end

def last_ack
  @state = "LAST_ACK"
  @eventList.delete(@eventList[0])
  if @eventList.length == 0
    @state
  elsif @eventList[0] == "RCV_ACK"
    closed
  else
    @error
  end
end

puts traverse_TCP_states(["APP_PASSIVE_OPEN",  "RCV_SYN","RCV_ACK", "RCV_ACK"])
