def passCheck(password,helptext="What's the password?",minlength=0,maxlength=8,casesensitive=false)
  code=pbEnterText(helptext,minlength,maxlength)
  if code==password || (casesensitive==false && code.downcase==password.downcase)
	return true
  else
	return false
  end
end
