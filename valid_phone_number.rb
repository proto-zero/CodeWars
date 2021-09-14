def validPhoneNumber(phoneNumber)
  if phoneNumber.length != 14 ||  # If the phone number has too many or not enough digits...
     phoneNumber[0] != "(" ||     # If it's missing the opening parenthesis
     phoneNumber[4] != ")" ||     # If it's missing the closing parenthesis
     phoneNumber[5] != " " ||     # if it's missing the space
     phoneNumber[9] != "-"        # if it's missing the dash
      return false
  end
  return true
end
