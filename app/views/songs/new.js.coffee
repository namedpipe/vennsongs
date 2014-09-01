$('<%= escape_javascript(render(:partial => 'form'))%>')
  .appendTo('#songs')
  .hide()
  .fadeIn()

$('#new-song').hide()