jQuery ($) ->
  $('#contact').submit (event) ->
      event.preventDefault()
      $.ajax(
        url: '/'
        dataType: 'json'
        type: 'POST'
        data : $(event.target).serialize()
        accepts: "application/json"
        success: (json) ->
          console.log json
      )