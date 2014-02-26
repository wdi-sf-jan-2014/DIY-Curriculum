if($("#enroll").length > 0) {
 
  $(function(){ 

    console.log("enrollment.js page has loaded");
    var pathname = window.location.pathname;
    var idArray = pathname.match(/\d+\.?\d*/g);
    var courseId = idArray[0];


    $('#enroll').on("click", function(){

      $.ajax({
        url: "/courses/"+idArray+"/enroll"
      }).done(function(data){
        console.log(data);
        });

      $('#toggles button').toggle();

    });

    $('#unenroll').on("click", function(){

      $.ajax({
        url: "/courses/"+idArray+"/unenroll"
      }).done(function(data){
        console.log(data);
        });

      $('#toggles button').toggle();
      
    });

  });

}