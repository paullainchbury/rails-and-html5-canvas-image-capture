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
    ctx.fillStyle="#000000";
    ctx.fillRect(0,0,530,360);
    var img = document.getElementById("scream");
    ctx.drawImage(img,30,20,470,250);
    getDataUrl();
}

function getDataUrl() {
    var dataURL = myCanvas.toDataURL();
    console.log(dataURL);
}