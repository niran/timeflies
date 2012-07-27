notifyTime = (time) ->
  time = new Date() if not time?
  meridian = if time.getHours() < 12 then "am" else "pm"
  hour = time.getHours() % 12
  hour = 12 if hour == 0
  $('#time').text "#{hour}:#{time.getMinutes()} #{meridian}"

$ notifyTime