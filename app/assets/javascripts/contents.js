$(function(){

  // show new content form
  // in SECTIONS edit view
  var content_path = {content_path: gon.content_path};
  var contentFormHTML = HandlebarsTemplates.contents_form(content_path);
  $("#addContent").append(contentFormHTML);

  // listen for submit on #addContent
  $("#new-content form").on("submit", function(event){
    event.preventDefault();

    // create newContent using
    // content_source_url and content_text
    // from the content form
    var newContent = {
      source_url: $("#content_source_url").val(),
      text: $("#content_text").val()
    };

    // log the newContent in console
    console.log(newContent);

    // Grab url from form's action
    // specifically from #new-content form
    $.post($("#new-content form").attr("action"), {content: newContent}).done(function(data){
        console.log(data);

      // Append this content
      var contentHTML = HandlebarsTemplates.contents(data);
      $("#contents").append(contentHTML);
    });
  });// <-- end of submit #addContent function


  // Display all content(s) on the page
  // WHAT'S THE URL? 
  $.get($("#new-content form").attr("action")).done(function(data){
    $(data).each(function(index, contentItem){
      var contentHTML = HandlebarsTemplates.contents(contentItem);
      $("#contents").append(contentHTML);
    });
  });


}); // <-- end of entire function