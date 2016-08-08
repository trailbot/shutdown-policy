'use strict'

class Shutdown
  constructor : (params) ->
    @exec = require('child_process').exec
    # default power-off
    @flag = params.flag or 'P'
    # default Now
    @time = params.time or 0

  receiver : =>
        # run linux command to shutdown machine
        @exec "/sbin/shutdown -#{@flag} +#{@time}", (err, stdout) =>
            console.log "exec error: #{error}" if err
            console.log "Shuting down in #{@time}"

module.exports = Shutdown
