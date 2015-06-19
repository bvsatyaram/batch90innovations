$ ->
  $('#save-draft').click ->
    $('.flash_messages').remove()
    $('#application-form').submit()
    false

  $('#submit-application').click ->
    $('.flash_messages').remove()
    if $('#application_agree_terms')[0].checked
      $('#confirm-submission-modal').modal('show')
    else
      $('#read-agreement-modal').modal('show')
    false

  $('#final-confirm-submission').click ->
    $('#final-submit-tracker').val(true)
    $('#application-form').submit()
