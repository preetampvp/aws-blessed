blessed = require 'blessed'

screen = blessed.screen({
  smartCSR: true
})

screen.title = "my aws"

button = blessed.button({
  content: 'Hello world'
  top: 'center'
  left: 'center'
  border: {
    type: 'line'
  }
  width: '50%'
  height: '50%'
  style: {
    fg: 'white',
    bg: 'magenta'
    border: {
      fg: '#f0f0f0'
    }
  }

})

screen.append(button)


screen.key ['escape', 'q', 'C-c'], (ch, key) ->
  process.exit 0