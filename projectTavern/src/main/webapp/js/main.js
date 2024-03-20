document.addEventListener('DOMContentLoaded', function() {
    // 로그인 버튼 클릭 시 로그인 폼 표시
    document.querySelector("#header .link.login-link").addEventListener('click', function(event) {
        event.preventDefault(); // 링크의 기본 동작 방지
        document.getElementById('login').style.display = 'block'; // 로그인 폼 표시
    });

    // 로그아웃 버튼 클릭 시 로그인 네비 표시
    document.querySelector("#header .link.logout-link").addEventListener('click', function(event) {
        event.preventDefault(); // 링크의 기본 동작 방지
        document.querySelector("#header .link.login-link").style.display = 'inline'; // 로그인 네비 표시
        document.querySelector("#header .link.logout-link").style.display = 'none'; // 로그아웃 네비 숨김
        document.querySelector("#header .link.mypage-link").style.display = 'none'; // 마이페이지 네비 숨김
    });

    // 마이페이지 버튼 클릭 시 마이페이지 표시
    document.querySelector("#header .link.mypage-link").addEventListener('click', function(event) {
        event.preventDefault(); // 링크의 기본 동작 방지
        document.getElementById('mypage').style.display = 'block'; // 마이페이지 표시
    });

    // 정보수정 링크 클릭 시 정보수정 폼 표시
    document.querySelector("#updateLink a").addEventListener('click', function(event) {
        event.preventDefault(); // 링크의 기본 동작 방지
        document.getElementById('mypage').style.display = 'none'; // 마이페이지 숨김
        document.getElementById('Update').style.display = 'block'; // 정보수정 폼 표시
    });
});
