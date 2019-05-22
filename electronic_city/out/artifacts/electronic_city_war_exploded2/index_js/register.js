$(function(){

    var error_name = false;
    var error_password = false;
    var error_check_password = false;
    var error_email = false;
    var error_check = false;
    var error_phone = false;


    $('#user_name').blur(function() {
        check_user_name();
    });

    $('#pwd').blur(function() {
        check_pwd();
    });

    $('#cpwd').blur(function() {
        check_cpwd();
    });
    $('#phone').blur(function() {
        check_phone();
    });
    $('#email').blur(function() {
        check_email();
    });

    $('#allow').click(function() {
        if($(this).is(':checked'))
        {
            error_check = false;
            $(this).siblings('span').hide();
        }
        else
        {
            error_check = true;
            $(this).siblings('span').html('请先阅读并同意协议');
            $(this).siblings('span').show();
        }
    });


    function check_user_name(){
        var len = $('#user_name').val().length;
        if(len<5||len>10)
        {
            $('#user_name').next().html('用户名为5~10位英文或数字')
            $('#user_name').next().show();
            error_name = true;
        }
        else
        {
            $('#user_name').next().hide();
            error_name = false;
        }
    }

    function check_pwd(){
        var len = $('#pwd').val().length;
        if(len<6||len>15)
        {
            $('#pwd').next().html('密码应大于6位,小于15位')
            $('#pwd').next().show();
            error_password = true;
        }
        else
        {
            $('#pwd').next().hide();
            error_password = false;
        }
    }


    function check_cpwd(){
        var pass = $('#pwd').val();
        var cpass = $('#cpwd').val();

        if(pass!=cpass)
        {
            $('#cpwd').next().html('两次输入密码不一致')
            $('#cpwd').next().show();
            error_check_password = true;
        }
        else
        {
            $('#cpwd').next().hide();
            error_check_password = false;
        }

    }
    function check_phone(){
        var phone = $('#phone').val();
        var phoneTest = /^1[345789]\d{9}$/;

        if(phoneTest.test(phone)){
            $('#phone').next().hide();
            error_phone = false;
        }else{
            $('#phone').next().html('手机号码有误，请重填');
            $('#phone').next().show();
            error_phone = true;
        }
    }
    function check_email(){
        var re = /^[a-z0-9][\w\.\-]*@[a-z0-9\-]+(\.[a-z]{2,5}){1,2}$/;

        if(re.test($('#email').val()))
        {
            $('#email').next().hide();
            error_email = false;
        }
        else
        {
            $('#email').next().html('邮箱格式不正确')
            $('#email').next().show();
            error_email = true;
        }

    }


    $('#reg_form').submit(function() {
        check_user_name();
        check_pwd();
        check_cpwd();
        check_email();
        check_phone();

        if(error_phone == false && error_name == false && error_password == false && error_check_password == false && error_email == false && error_check == false)
        {
            return true;
        }
        else
        {
            return false;
        }

    });

})