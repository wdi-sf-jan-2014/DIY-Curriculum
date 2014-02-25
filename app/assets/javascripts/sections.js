$(function(){

  $('#addSection').on('submit', function(event){
    event.preventDefault();


    console.log("section was added!", event);

    var newSection = {};

    newSection.title = $("#section_title").val();
    console.log(newSection);

    $.post("/courses/"+ Number(window.location.href.split("/courses/")[1].split("/sections/new")[0]) +"/sections.json", {section: newSection}).done(function(data){
      console.log(data);
      var sectionHTML = HandlebarsTemplates.section(data);
      $("#sections").append(sectionHTML);
    })
  });

   // get request to show all sections in that course
  $.ajax({
    url: "/courses/"+ Number(window.location.href.split("/courses/")[1].split("/sections/new")[0]) +"/sections.json",
    type: "GET",
  }).done(function(data){
    console.log(data)
    $(data).each(function(index,section){
      var sectionHTML = HandlebarsTemplates.section(section);
      $("#sections").append(sectionHTML);
    })
  })


});