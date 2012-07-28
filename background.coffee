notify = ->
  notification =
    window.webkitNotifications.createHTMLNotification "notification.html"
  notification.show()

lastNotifiedAt = null

setInterval(->
    console.log "Checking time: #{new Date()}"
    now = new Date()
    nowParts = [now.getHours(), now.getMinutes()]
    if lastNotifiedAt
      partPairs = _.zip(nowParts, lastNotifiedAt)
      return if _.all(a == b for [a, b], index in partPairs, _.identity)
    # return if now.getMinutes() % 5

    console.log 'Notifying'
    notify()
    lastNotifiedAt = nowParts
  , 5000
)