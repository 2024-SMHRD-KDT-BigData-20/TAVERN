// 로그인 링크 클릭 시 로그인 폼 표시
document.querySelector('.login-link').addEventListener('click', function(event) {
    event.preventDefault(); // 링크의 기본 동작 방지
    document.getElementById('login').style.display = 'block'; // 로그인 폼 표시
});

// X 버튼 클릭 시 로그인 폼 숨김
document.querySelector('#login .close_btn').addEventListener('click', function() {
    document.getElementById('login').style.display = 'none'; // 로그인 폼 숨김
}); 