function ma() {
    //方式一
    var sharestream_id = document.forms[0].sharestream_id.value;
    var d1 = document.getElementById("d1");
    if (sharestream_id == "" || sharestream_id == null) {
        d1.innerHTML = "<font color=red>用户名不能为空</font>";
    } else {
        d1.innerHTML = "";
    }

}

function mo() {
    var pwd1 = document.forms[0].password.value;
    var pwd2 = document.forms[0].repassword.value;
    if (pwd1 != pwd2) {
        alert("请输入一致的密码！");
        return false;
    } else {
        alert("修改密码成功！");
        return true;
    }
}

function ma2() {
    //方式一
    var sharestream_no = document.forms[0].sharestream_no.value;
    var d2 = document.getElementById("d2");
    if (sharestream_no == "" || sharestream_no == null) {
        d2.innerHTML = "<font color=red>代码不能为空</font>";
    } else if (sharestream_no.length != 6) {
        d2.innerHTML = "<font color=red>代码应为六位！</font>";
    } else {
        d2.innerHTML = "";
    }

}

function ma3() {
    //方式一
    var sharestream_name = document.forms[0].sharestream_name.value;
    var d3 = document.getElementById("d3");
    if (sharestream_name == "" || sharestream_name == null) {
        d3.innerHTML = "<font color=red>用户名不能为空</font>";
    } else {
        d3.innerHTML = "";
    }

}

function ma4() {
    //方式一
    var sharestream_id = document.forms[0].sharestream_id.value;
    var sharestream_no = document.forms[0].sharestream_no.value;
    var sharestream_name = document.forms[0].sharestream_name.value;
    var sharestream_in = document.forms[0].sharestream_in.value;
    var sharestream_out = document.forms[0].sharestream_out.value;
    var sharestream_date = document.forms[0].sharestream_date.value;
    if (sharestream_id == "" || sharestream_id == null || sharestream_name == "" || sharestream_name == null || sharestream_no == "" || sharestream_no == null || sharestream_in == "" || sharestream_in == null || sharestream_out == "" || sharestream_out == null || sharestream_date == "" || sharestream_date == null) {
        alert("请将信息填写完整！");
        //location.href='${pageContext.request.contextPath}/insert.jsp';
        return false;
    } else {
        alert("添加信息成功！");
        return true;
    }

}