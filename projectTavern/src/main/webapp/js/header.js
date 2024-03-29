document.addEventListener('DOMContentLoaded', function() {
	// X 버튼 클릭 시 로그인 폼 닫기
	let loginCloseBtn = document.querySelector("#login .close_btn");
	if (loginCloseBtn) {
		loginCloseBtn.addEventListener('click', function() {
			document.getElementById('login').style.display = 'none';
		});
	}

	// X 버튼 클릭 시 마이페이지 닫기
	let mypageCloseBtn = document.querySelector("#mypage .close_btn");
	if (mypageCloseBtn) {
		mypageCloseBtn.addEventListener('click', function() {
			document.getElementById('mypage').style.display = 'none';
		});
	}

	// X 버튼 클릭 시 정보수정 폼 닫기
	let updateCloseBtn = document.querySelector("#Update .close_btn");
	if (updateCloseBtn) {
		updateCloseBtn.addEventListener('click', function() {
			document.getElementById('Update').style.display = 'none';
			document.getElementById('mypage').style.display = 'block';
		});
	}

	// X버튼 클릭시 회원가입 폼 닫기
	let joinCloseBtn = document.querySelector("#Join .close_btn");
	if (joinCloseBtn) {
		joinCloseBtn.addEventListener('click', function() {
			document.getElementById('Join').style.display = 'none';
			document.getElementById('login').style.display = 'block';
		});
	}


	// 로그인 버튼 클릭 시 로그인 폼 표시
	let loginButton = document.querySelector(".login-link");
	if (loginButton) {
		loginButton.addEventListener('click', function(event) {
			event.preventDefault(); // 링크의 기본 동작 방지
			document.getElementById('login').style.display = 'block'; // 로그인 폼 표시
		});
	}

	// 회원가입 버튼 클릭시 회원가입 폼 표시
	let joinButton = document.querySelector(".join-link");
	if (joinButton) {
		joinButton.addEventListener('click', function() {
			event.preventDefault();
			document.getElementById('Join').style.display = 'block';
			document.getElementById('login').style.display = 'none';
		});
	}

	// 마이페이지 버튼 클릭 시 마이페이지 표시
	let mypageButton = document.querySelector(".mypage-link");
	if (mypageButton) {
		mypageButton.addEventListener('click', function(event) {
			event.preventDefault(); // 링크의 기본 동작 방지
			document.getElementById('mypage').style.display = 'block'; // 마이페이지 표시
		});
	}

	// 정보수정 링크 클릭 시 정보수정 폼 표시
	let updateLink = document.querySelector("#updateLink a");
	if (updateLink) {
		updateLink.addEventListener('click', function(event) {
			event.preventDefault(); // 링크의 기본 동작 방지
			document.getElementById('mypage').style.display = 'none'; // 마이페이지 숨김
			document.getElementById('Update').style.display = 'block'; // 정보수정 폼 표시
		});
	}

});
function alertLogin() {
	alert("로그인이 필요합니다.");
}