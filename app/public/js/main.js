jQuery(function($) {
  return $('#contact').submit(function(event) {
    event.preventDefault();
    return $.ajax({
      url: '/',
      dataType: 'json',
      type: 'POST',
      data: $(event.target).serialize(),
      accepts: "application/json",
      success: function(json) {
        return console.log(json);
      }
    });
  });
});
