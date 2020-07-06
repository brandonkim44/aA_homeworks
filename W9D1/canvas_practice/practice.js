document.addEventListener("DOMContentLoaded", function(){
    const canvasEl = document.getElementById('mycanvas'); //canvas is keyword, so use canvasEl
    canvasEl.width = 500;
    canvasEl.height = 500;

    const ctx = canvasEl.getContext('2d'); //getting the context of the variable
    ctx.fillStyle = "blue";
    ctx.fillRect(20, 20, 300, 300);

    ctx.beginPath();
    ctx.arc(150, 150, 20, 0, 2 * Math.PI);
    ctx.strokeStyle = 'white';
    ctx.lineWidth = '5';
    ctx.fillStyle = "white";
    ctx.fill();
    ctx.stroke();
});
