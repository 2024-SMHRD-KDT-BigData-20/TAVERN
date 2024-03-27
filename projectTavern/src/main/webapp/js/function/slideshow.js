let slides = document.querySelectorAll("#slides > img");
let prev = document.getElementById("prev");
let next = document.getElementById("next");

let current = 0;

showSlides(current);        // 현재 이미지표시
prev.onclick = prevSlide;   // 이전 이미지표시
next.onclick = nextSlide;   // 다음 이미지표시

function showSlides(n) {
	for (let i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";  // 모든 이미지를 화면에서 감춤
	}
	slides[n].style.display = "block"; // n번째 이미지만 화면에 표시
}
function prevSlide() {
	if (current > 0) {           // current값이 0보다 크다면
		current -= 1;          // 이전 위치로
	}
	else {                           // 그렇지 않으면
		current = slides.length - 1;  // 마지막 위치로
	}
	showSlides(current);        // 이동한 위치의 이미지 표시
}
function nextSlide() {
	if (current < slides.length - 1) { //current값이 2보다 작으면
		current += 1;               //다음 위치로
	}
	else {                           //그렇지 않다면
		current = 0;                //첫번째 위치로 이동
	}
	showSlides(current);        //이동한 위치의 이미지 표시
}