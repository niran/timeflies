$ ->
  now = new Date()
  meridian = if now.getHours() < 12 then "am" else "pm"
  hour = now.getHours() % 12
  hour = 12 if hour == 0
  $('#time').text "#{hour}:#{now.getMinutes()} #{meridian}"