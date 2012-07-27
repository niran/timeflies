{print} = require 'sys'
{spawn} = require 'child_process'

task 'watch', 'Watch src/ for changes', ->
    coffee = spawn 'coffee', ['-w', '-c', '-o', 'lib/compiled', '.']
    coffee.stderr.on 'data', (data) ->
      process.stderr.write data.toString()
    coffee.stdout.on 'data', (data) ->
      print data.toString()