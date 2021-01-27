$(document).ready(function () {
    $('#get-email').on('submit', function (e) {
        e.preventDefault();
        var email = $('.input-email').val();
        if (email != "") {
            $.ajax({
                url: "SendEmailVerify",
                method: "POST",
                data: { 'email': email},
                success: function (data, textStatus, jqXHR) {
                    let obj = $.parseJSON(data);
                    if (obj == true) {
                        swal("Bạn vui lòng kiểm tra trong hộp thư email vừa nhập !", "", "success");
                        $('.input-email').val("");
                    } else {
                        swal("Email không tồn tại, vui lòng nhập lại !", "", "error");
                    }
                }
            });
        } else
            swal("Vui lòng nhập đầy đủ thông tin !", "", "error");
    });
});