if($("#addContent").length > 0) {
  $(function(){
    $.ajaxSetup({
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    });

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
      

      $.post(gon.content_path, {content: newContent, edit_content_path: gon.edit_content_path}).done(function(data){
        console.log(data);

        // Append this content
        var contentHTML = HandlebarsTemplates.contents(data);
        $("#content_source_url").val(""); //empties value
        $("#content_text").val("");
        $("#contents").append(contentHTML);
        $(document).foundation();
      });
    });// <-- end of submit #addContent function

    var contentItems;
    var currentContentItemId;

    // Display all content(s) on the page
    // Get url path from gon variable
    // in sections controller
    $.get(gon.content_path).done(function(data){
      contentItems = data;
      $(data).each(function(index, contentItem){
        contentItem.content_path = gon.content_path;
        contentItem.edit_content_path = gon.edit_content_path;
        var contentHTML = HandlebarsTemplates.contents(contentItem);
        $(document).foundation();
        $("#contents").append(contentHTML);

      });

      var courseId;
      var sectionId;
      var contentId;
      
      $(".content a.edit_link").click(function() {
        // display the modal
        $("#edit-content").foundation("reveal", "open");
        // keep track of the id of the content item that was clicked
        currentContentItemId = $(this).data("id");
        console.log(currentContentItemId, contentItems);

        for (var i=0; i < contentItems.length; i++) {
          if (contentItems[i].id === currentContentItemId) {


            $("#source_url").val(contentItems[i].source_url);
            $("#source_text").val(contentItems[i].text);
            courseId = contentItems[i].course_id;
            sectionId = contentItems[i].section_id;
            contentId = contentItems[i].id;
            
          }
        }

          var first_substring = $("#edit_content_form").attr("action").substring(0,9);
          var second_substring = $("#edit_content_form").attr("action").substring(19,29);
          var third_substring = $("#edit_content_form").attr("action").substring(40,50);

          $("#edit_content_form").submit(function(event){
          event.preventDefault();

          document.getElementById("edit_content_form").action = first_substring + courseId +
          second_substring + sectionId + third_substring + contentId;


          data = {content: {source_url: $("#source_url").val(), text: $("#source_text").val()}};

          $.ajax({
            url: $("#edit_content_form").attr("action"),
            type: "PATCH",
            data: data
          }).done(function(){
            var redirect_url = first_substring+courseId+second_substring+sectionId+"/edit";
            window.location = redirect_url;
          });

        });
        
        // in the modal set the action to the item being edited
        // populate form with the attributes of the content item
        // that is related to the id of the item that was clicked
      });
    });

  //   $("#edit_content_form").submit(function(){
  //     event.preventDefault();
  //     var updated_content = {id: contentItem.id};
  //     updated_content.source_url = $("#update_content_source_url_"+contentItem.id).val();
  //     updated_content.text = $("#update_content_text_"+contentItem.id).val();
  //     $.ajax({  
  //       url: gon.edit_content_path + updated_content.id+".json",
  //       type: "PATCH",
  //       data: {content: updated_content}
  //     }).done(window.reload);
  //   });
  // });
}); // <-- end of entire function
}

// begin content 

$(".content_button").click(function(){
  $(this).next('#content').toggle('medium');
  if ($(this).text() === "+") {
    $(this).text("-");
  }
  else 
    $(this).text("+");
}
);

$( ".author" ).each(function() {
  if ( $(this).text() !== "" ) {
    $(this).prepend("by ");
  }
});

var total = 0;
$('.count').each(function(){
 total += parseInt($(this).val());
});

$( ".count" ).each(function() {
  if ( $(this).text() !== "" ) {
    $(this).append(" words");
  }
});

$("#count_to").append($("#count_from"));

// end content

// $(function() {  
//     $( "#sortable" ).sortable({   
//         placeholder: "ui-sortable-placeholder"   
//     });  
// }); 


