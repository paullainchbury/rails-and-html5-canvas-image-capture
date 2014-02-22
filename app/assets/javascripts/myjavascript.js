$(document).ready(function() {

  // $('#enter_main_text').keyup(function() {
  //   myFunction();
  // });

  // $('#enter_sub_text').keyup(function() {
  //   myFunction();
  // });

  $('#go_create_image').click(function() {
    console.log("user clicked");
    drawCanvas();
  });


})

function drawCanvas() {
    var c = document.getElementById("myCanvas");
    var ctx = c.getContext("2d");
    var img = document.getElementById("scream");
    ctx.drawImage(img,10,10);
    getDataUrl();
}

function getDataUrl() {
    var dataURL = myCanvas.toDataURL();
    console.log(dataURL);
}