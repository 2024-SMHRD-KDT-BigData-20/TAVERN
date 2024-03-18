document.addEventListener('DOMContentLoaded', function() {
	// 비밀번호 불러오기
	let p1 = document.getElementById('user_pw');
	// 비밀번호 재 확인 불러오기
	let p2 = document.getElementById('user_re_pw');
	// 비밀번호 error 메시지 불러오기
	let p_e = document.getElementById('pw_error');
	// 비밀번호 재 확인 error 메시지 불러오기
	let r_p_e = document.getElementById('re_pw_error');
	// 아이디 불러오기
	let id = document.getElementById('user_id');
	// 아이디 error 메시지 불러오기
	let id_e = document.getElementById('id_error')

	// 아이디 : 특수문자 제외
	function i(str) {
		return /^[A-Za-z0-9][A-Za-z0-9]*$/.test(str);
	}

	// 비밀번호 : 6글자 이상 입력
	function pw(str) {
		return str.length >= 6;
	}

	// 비밀번호 재확인 일치 확인
	function repw(pw1, pw2) {
		return pw1 === pw2;
	}

	// 아이디 입력 시 이벤트 처리
	id.addEventListener('keyup', function() {
		if (i(id.value)) {
			id_e.style.display = 'none';
		} else {
			id_e.style.display = 'block';
		}
		
	});

	// 비밀번호 입력 시 이벤트 처리
	p1.addEventListener('keyup', function() {
		if (pw(p1.value)) {
			p_e.style.display = 'none';
		} else {
			p_e.style.display = 'block';
		}
	});

	// 비밀번호 재확인 입력 시 이벤트 처리
	p2.addEventListener('keyup', function() {
		if (repw(p1.value, p2.value)) {
			r_p_e.style.display = 'none';
		} else {
			r_p_e.style.display = 'block';
		}
	});
});
