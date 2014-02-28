$(function(){
  $('#addSection form').on('submit', function(event){
    event.preventDefault();
    validateForm();
  });

  function validateForm()
  {
    var input_section = document.getElementById("section_title");
    
    if (input_section.value === "" || input_section.value === null ) {
        input_section.value = "Fill me in!";
        input_section.style.color = "red";
        return false;
    }
    if (input_section.value !== "" || input_section.value !== null ) {
      input_section.style.color = "black";
      submitNewSection(input_section);
    }
  }
  var submitNewSection = function(input_section) {
      var newSection = {};

      newSection.title = input_section.value;
      console.log(newSection);

      $.post($("#addSection form").attr("action"), {section: newSection}).done(function(data){
        console.log(data);
        var sectionHTML = HandlebarsTemplates.section(data);
        $("#section_title").val("");
        $("#sections").append(sectionHTML);
      });
   }; 
  


   // get request to show all sections in that course
  $.ajax({
    url: $("#addSection form").attr("action"),
    type: "GET",
  }).done(function(data){
    console.log(data);
    $(data).each(function(index,section){
      var sectionHTML = HandlebarsTemplates.section(section);
      $("#sections").append(sectionHTML);
    });
  });


});



// $('#sections').sortable({
//     axis: 'y',    
//     update: function (event, ui) {
//         var data = $(this).sortable('serialize');
//         console.log(data);


//         $.ajax({
//             data: data,
//             type: 'GET',
//             dataType: 'json',
//             url: '/reads/sorted',
//             success : function(data) {
//               console.log(data);
//             }
//         });
//     }
// });

/////////// STYLIN'
$(function(){

  $("#addSection form").on("submit", function()  {

    $(".intro-column").find("img").attr("src", "/assets/add_content-02.png");


  });



});
