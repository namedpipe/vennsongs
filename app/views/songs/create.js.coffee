$('#new-song-row').remove()

$('<%= escape_javascript(render(:partial => @song))%>')
  .appendTo('#songs')
  .hide()
  .fadeIn()

$('#new-song').show()

$('#song-count').html '<%= @songs_count %>'