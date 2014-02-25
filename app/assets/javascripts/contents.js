$(function(){

  // show new content form
  // in SECTIONS edit view
  var content_path = {content_path: gon.content_path};
  var contentFormHTML = HandlebarsTemplates.contents_form(content_path);
  $("#addContent").append(contentFormHTML);

  // listen for submit on #addContent
  $("#addContent form").on("submit", function(event){
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

    // Get url path from gon variable
    // in sections controller
    $.post(gon.content_path, {content: newContent}).done(function(data){
        console.log(data);

      // Append this content
      var contentHTML = HandlebarsTemplates.contents(data);
      $("#contents").append(contentHTML);
    });
  });// <-- end of submit #addContent function


  // Display all content(s) on the page
  // Get url path from gon variable
  // in sections controller
  $.get(gon.content_path).done(function(data){
    $(data).each(function(index, contentItem){
      var contentHTML = HandlebarsTemplates.contents(contentItem);
      $("#contents").append(contentHTML);
    });
  });


}); // <-- end of entire function