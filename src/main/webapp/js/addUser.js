// thêm user vào db
$(document).ready(function () {
    $('#create-account').on('submit', function (e) {
        e.preventDefault();
        var username = $('.cre-username').val();
        var mail = $('.cre-email').val();
        var sdt = $('.cre-sdt').val();
        var pass = $('.cre-pass').val();
        var verify = $('.cre-verify').val();
        // nếu có 1 ô trống
        if (username != "" && mail != "" && sdt != "" && pass != "" && verify != "") {
        $.ajax({
            url: "create-account",
            method: "POST",
            data: {'username' : username , 'email': mail, 'sdt':sdt, 'pass':pass, 'verify-pass':verify},
            success: function (data, textStatus, jqXHR) {
                let obj = $.parseJSON(data);
                if (obj == true) {
                    swal("Tạo tài khoản thành công !", "", "success");
                    $('.cre-username').val("");
                    $('.cre-email').val("");
                    $('.cre-sdt').val("");
                    $('.cre-pass').val("");
                    $('.cre-verify').val("");
                } else {
                    swal("Tạo tài khoản thất bại !", "Tên đăng nhập đã tồn tại, vui lòng chọn tên khác.", "error");
                }
            }
        });
        } else
            swal("Vui lòng nhập đầy đủ thông tin !", "", "error");
    });
});