$(document).ready(function () {
    $('#get-email').on('submit', function (e) {
        e.preventDefault();
        var pass = $('.input-pass').val();
        var email = $('.input-pass').data("dataemail");
        var key = $('.forget').data("datakey");
        if (pass != "") {
            $.ajax({
                url: "ProcessChangePass",
                method: "POST",
                data: { 'email': email,'key':key,'pass':pass},
                success: function (data, textStatus, jqXHR) {
                    let obj = $.parseJSON(data);
                    if (obj == true) {
                        swal("Đổi mật khẩu thành công !", "", "success");
                        $('.input-pass').val("");
                        $('.input-pass').data("dataemail","");
                    } else {
                        swal("Đổi mật khẩu thất bại !", "", "error");
                    }
                }
            });
        } else
            swal("Vui lòng nhập đầy đủ thông tin !", "", "error");
    });
});