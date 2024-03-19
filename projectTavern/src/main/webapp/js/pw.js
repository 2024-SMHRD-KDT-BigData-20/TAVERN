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
    let id_e = document.getElementById('id_error');
    // 생년월일 불러오기
    let date = document.getElementById('user_date');
    // 생년월일 error 메시지 불러오기
    let date_e = document.getElementById('date_error_box');
    // 정보 수정 링크 불러오기
    let updateLink = document.getElementById('updateLink');
    // 정보 수정 폼 불러오기
    let updateForm = document.getElementById('Update');

    // 정보 수정 폼 토글 기능
    updateLink.addEventListener('click', function() {
        // 정보 수정 폼이 보이면 숨김, 숨겨져 있으면 보이게 함
        if (updateForm.style.display === 'block') {
            updateForm.style.display = 'none';
        } else {
            updateForm.style.display = 'block';
        }
    });

    // 아이디 : 특수문자 제외
    function isValidId(str) {
        return /^[A-Za-z0-9][A-Za-z0-9]*$/.test(str);
    }

    // 비밀번호 : 6글자 이상 입력
    function isValidPassword(str) {
        return str.length >= 6;
    }

    // 비밀번호 재확인 일치 확인
    function isPasswordMatch(pw1, pw2) {
        return pw1 === pw2;
    }

    // 생년월일 입력 시 이벤트 처리
    function isValidDate(str) {
        return /^\d{8}$/.test(str); // 8자의 숫자만 입력되었는지 확인
    }

    // 아이디 중복 확인 버튼 클릭 시 이벤트 처리
    document.getElementById('checkIdBtn').addEventListener('click', function() {
        var userId = id.value;

        // Ajax를 통해 아이디 중복 확인
        $.ajax({
            url: "idcheck", // 서블릿 주소
            type: "POST",
            data: { id: userId }, // 아이디 데이터 전송
            success: function(response) {
                if (response != null && response.length > 0) {
                    id_e.innerText = "이미 사용 중인 아이디입니다.";
                    id_e.style.display = 'block';
                } else {
                    id_e.innerText = "사용 가능한 아이디입니다.";
                    id_e.style.display = 'block';
                }
            },
            error: function() {
                id_e.innerText = "서버 요청에 실패했습니다.";
                id_e.style.display = 'block';
            }
        });
    });

    // 가입 버튼 클릭 시 폼 유효성 검사
    document.getElementById('joinForm').addEventListener('submit', function(event) {
        // 아이디 유효성 검사
        if (!isValidId(id.value)) {
            id_e.innerText = "영문자 혹은 영문자와 숫자를 포함해서 만들어주세요";
            id_e.style.display = 'block';
            event.preventDefault(); // 폼 제출 방지
        }

        // 비밀번호 유효성 검사
        if (!isValidPassword(p1.value)) {
            p_e.innerText = "6글자 이상 입력해주세요";
            p_e.style.display = 'block';
            event.preventDefault(); // 폼 제출 방지
        }

        // 비밀번호 재확인 일치 검사
        if (!isPasswordMatch(p1.value, p2.value)) {
            r_p_e.innerText = "비밀번호가 일치하지 않습니다";
            r_p_e.style.display = 'block';
            event.preventDefault(); // 폼 제출 방지
        }

        // 생년월일 유효성 검사
        if (!isValidDate(date.value)) {
            date_e.innerText = "양식에 맞게 써주세요";
            date_e.style.display = 'block';
            event.preventDefault(); // 폼 제출 방지
        }
    });

});