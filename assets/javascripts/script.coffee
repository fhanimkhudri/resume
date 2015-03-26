---
# this ensures Jekyll reads the file to be transformed into CSS later
# only Main files contain this front matter, not partials.
---
resizeSkillBar = ()->
  $ ".skill"
  .each ->
    newWidth = $(this).parent().width() * $(this).data "percent"
    $(this).animate width: newWidth, 500
    return
  return

# Invoke `resizeSkillBar()` on initial load
resizeSkillBar()

# Invoke `resizeSkillBar()` each time the window is resized
window
.addEventListener "resize", (event) ->
  resizeSkillBar()
  return
return
