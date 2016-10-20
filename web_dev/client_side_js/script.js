console.log("The script is successfully running!");

// Original with redundant calls
// function addPinkBorder() {	
// 	var image = document.getElementById('bully_pic');
// 	image.style.border = '7px solid pink';
// }

// var image = document.getElementById('bully_pic');
// image.addEventListener("click", addPinkBorder);

// DRY:
function addPinkBorder(event) {	
	event.target.style.border = '7px solid pink';
}

var image = document.getElementById('bully_pic');
image.addEventListener("click", addPinkBorder);