displayTime = ->
  time = new Date() unless time?
  meridian = if time.getHours() < 12 then "am" else "pm"
  hour = time.getHours() % 12
  hour = 12 if hour == 0
  minutes = time.getMinutes().toString()
  minutes = "0{#minutes}" if minutes.length == 1
  $('#time').text "#{hour}:#{minutes} #{meridian}"

$ displayTime