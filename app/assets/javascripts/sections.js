$(function(){

  $('#addSection').on('submit', function(event){
    event.preventDefault();


    console.log("section was added!", event);

    var newSection = {};

    newSection.name = $("#section_name").val();
    console.log(newSection);




  });



});