// 비밀번호 불러오기
let p1 = document.getElementById('user_pw').value;
// 비밀번호 재 확인 불러오기
let p2 = document.getElementById('user_re_pw').value;
// 비밀번호 error메시지 불러오기
let p_e = document.querySelector('.pw');
// 비밀번호 재 확인 error 메시지 불러오기
let r_p_e = document.querySelector('.re_pw')

// 비밀번호 : 6글자 이상 입력
function repw(pw1, pw2){
	return pw1 === pw2;
}

p2.onkeyup = function(){
	if(p2.value.length !== 0){
		if(repw(p1.value,p2.value)){
			r_p_e.classList.add('error_box'); // 실패 메시지 가려지기
		}
		else{
			r_p_e.classList.remove('error_box');
		}
	}
	// 모든 메시지 가리기
	else{
		r_p_e.classList.add('error_box')
	}
}

