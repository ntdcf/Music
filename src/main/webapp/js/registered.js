

function getForm() {
    //获取用户表单信息
    var username = $("#username").val();
    var password = $("#password").val();
    var password2 = $("#password2").val();
    var name = $("#name").val();
    var sex = $("input[id='sex1']:checked").val()==1? true: false;
    var age = $("#age").val();
    var date = $("#date").val();

    //判断密码
    if (password != password2) {
        alert("两次输入密码不一致");
        return;
    }

    if (password.length < 6) {
        alert("对不起，密码太简单");
        return;
    }

    //看必要信息是否填写
    if (username == "" || password == "" || name == "") {
        alert("请填写必要信息！");
        return;
    }

    //将表单信息转化为json
    var array = {
        "username":username,
        "password":password,
        "name":name,
        "sex":sex,
        "age":age,
        "date":date
    };

    //返回json格式
    return JSON.stringify(array);
}

$(document).ready(function(){
    $("#btn_reg").click(function(){
        var SendData = getForm();
        // alert(SendData);
        $.ajax({
            url:"Register",
            data:"data="+SendData,
            type:"post",
            dataType:"json",
            success: function (data) {
                if (data == 1) {
                    $("#msg_user").html("注册成功");
                    return true;
                }
                if (data == 2) {
                    alert("此用户名已存在");
                    return false;
                }
                alert("注册失败，请重新注册");
                return false;
            }
        })
    });
});