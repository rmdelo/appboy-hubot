module.exports = (robot) ->

   robot.hear /make it rain|making it rain|made it rain/i, (msg) ->
     msg.send "https://s3.amazonaws.com/uploads.hipchat.com/12562/184609/xdhwG85hEGYKVeR/rainingkev-2.gif"

    robot.hear /rock on|rock out|rocking on|rocking out|rocked out|rocked on/i, (msg) ->
     msg.send "https://s3.amazonaws.com/uploads.hipchat.com/12562/195702/8UR8bEoCRxu4O9m/upload.png"

   robot.hear /rain bomb( (\d+))?/i, (msg) ->
     count = msg.match[2] || 5
     for i in [1..count] by 1
        msg.send "https://s3.amazonaws.com/uploads.hipchat.com/12562/184609/xdhwG85hEGYKVeR/rainingkev-2.gif"
  

   robot.respond /corgi me/i, (msg) ->
     msg.http("http://corginator.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).corgi