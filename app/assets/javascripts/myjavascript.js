$(document).ready(function() {

  // $('#enter_main_text').keyup(function() {
  //   myFunction();
  // });

  // $('#enter_sub_text').keyup(function() {
  //   myFunction();
  // });

  $('#go_create_image').click(function() {
    drawCanvas();
  });

  $('#draw_the_main_text').click(function() {
    drawMainText();
  });


})

function drawCanvas() {
    var c = document.getElementById("myCanvas");
    var ctx = c.getContext("2d");
    ctx.fillStyle="#000000";
    ctx.fillRect(0,0,530,360);
    var img = document.getElementById("scream");
    ctx.drawImage(img,30,20,470,250);
}

function drawMainText() {
    var c = document.getElementById("myCanvas");
    var ctx = c.getContext("2d");
    ctx.font = "30px Arial";
    ctx.fillStyle = 'white';
    ctx.textAlign = 'center';
    var x = c.width / 2;
    ctx.fillText($('#enter_main_text').val(),x,310);
    getDataUrl();
}

function getDataUrl() {
    var dataURL = myCanvas.toDataURL();
    console.log(dataURL);
}