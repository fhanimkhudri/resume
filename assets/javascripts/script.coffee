---
# this ensures Jekyll reads the file to be transformed into CSS later
# only Main files contain this front matter, not partials.
---
$ =>
  $ ".skill"
  .each ->
   newWidth = $(this).parent().width() * $(this).data "percent"
   $(this).animate width: newWidth, 1000
   return
  window
  .addEventListener "resize", (event) ->
   clearTimeout resize
   resize = setTimeout ->
    # resizeSkillBar()
   , 100
