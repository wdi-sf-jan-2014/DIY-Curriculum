$(function(){

  // listen for submit on #addContent
  $("#addContent").on("submit", function(event){
    event.preventDefault();

    // create newContent using
    // content_url and content_text
    // from the content form
    var newContent = {
      source_url: $("#content_url").val(),
      text: $("#content_text").val()
    };

    // log the newContent in console
    console.log(newContent);

    // WHAT'S THE URL? 
    // How would this know which
    // course id and section id?
    $.ajax({
      type: "post",
      url: "",
      data: {content: newContent}
    }).done(function(data){
      console.log(data);

      // Append this content
      var contentHTML = placeholder;// ENTER HANDLEBARSTEMPLATE HERE
      $("#contents").append(contentHTML);
    });
  });// <-- end of submit #addContent function


  // Display all content(s) on the page
  // WHAT'S THE URL? 
  $.get("").done(function(data){
    $(data).each(function(index, contentItem){
      var contentHTML = placeholder;// ENTER HANDLEBARSTEMPLATE HERE
      $("#contents").append(contentHTML);
    });
  });


}); // <-- end of entire function