function idCheck() {
        if (document.frm.id.value == "") {
            alert('아이디를 입력하여 주십시오.');
            document.frm.id.focus();
            return;
        }
        var url = "idcheck.jsp?id=" + document.frm.id.value;
        window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
    }