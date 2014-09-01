$('#chart').remove()

$('<%= escape_javascript(render(partial: "bubble_chart"))%>')
  .appendTo('#container')
  .hide()
  .fadeIn()
