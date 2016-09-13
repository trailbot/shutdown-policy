'use strict'

class Shutdown
  constructor : (params) ->
    @exec = require('child_process').exec
    # default power-off
    @flag = params.flag or 'P'
    # default Now
    @time = params.time or 0

  receiver : =>
    if PolicyAPI
      PolicyAPI.raise "shutdown", {flag: @flag, delay: @time}, @shutdown
    else
      @shutdown()

  shutdown : =>
    # run linux command to shutdown machine
    @exec "/sbin/shutdown -#{@flag} +#{@time}", (err, stdout) =>
      if err
        console.log "exec error: #{error}"
      else
        console.log "Shuting down in #{@time} minutes"

module.exports = Shutdown
