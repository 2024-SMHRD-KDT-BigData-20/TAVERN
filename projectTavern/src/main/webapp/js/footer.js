document.addEventListener("DOMContentLoaded", function() {
	var footer = document.getElementById("footer");
	var container = document.getElementById("container");
	var containerHeight = container.offsetHeight;
	var footerHeight = footer.offsetHeight;

	if (containerHeight + footerHeight < window.innerHeight) {
		footer.style.position = "absolute";
		footer.style.bottom = "0";
	}
});