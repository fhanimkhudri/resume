---
# this ensures Jekyll reads the file to be transformed into CSS later
# only Main files contain this front matter, not partials.
---
class Resume
  constructor:(@skillBar) ->
    @.listen window, 'resize',
    ()=> resize skill for skill in @skillBar

    resize = (skillBar) ->
      newWidth = $ skillBar
      .parent().width() * $ skillBar
      .data 'percent'
      $ skillBar
      .animate width: newWidth, 500

  listen: (el, event, handler) ->
    if el.addEventListener
      el.addEventListener event, handler
    else
      el.attachEvent 'on' + event, ->
        handler.call el

resume = new Resume $ '.skill'
