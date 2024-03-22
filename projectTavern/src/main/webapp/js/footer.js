window.addEventListener("scroll", function() {
    let footer = document.getElementById("footer");
    // 현재 스크롤 위치
    let scrollPosition = window.scrollY || window.pageYOffset;
    // 화면의 높이
    let windowHeight = window.innerHeight;
    // 문서의 높이
    let documentHeight = document.body.clientHeight;
    // footer가 화면에 보일 때의 임계값 (문서의 높이 - 화면의 높이 - footer의 높이)
    let threshold = documentHeight - windowHeight - footer.clientHeight;

    // 스크롤 위치가 임계값 이상이면 footer를 보여줌
    if (scrollPosition >= threshold) {
        footer.style.display = "block";
    } else {
        footer.style.display = "none";
    }
});