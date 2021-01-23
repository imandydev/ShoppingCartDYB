$(document).ready(function () {
    $('#form-create').on('submit', function (e) {
        var loaiTaiKhoan = $('.select-kind-account :selected').val();
        var username = $('.username-acc').val();
        var email = $('.email-acc').val();
        var address = $('#exampleFormControlTextarea1').val();
        var sdt = $('.sdt-acc').val();
        var pass = $('.pass-acc').val();
        if (username != "" && email != "" && (sdt != "" && sdt > 0) && pass != "") {
            let data_id = {
                'username' : username ,
                'email': email,
                'sdt': sdt,
                'pass':pass,
                'loaitk':loaiTaiKhoan,
                'address':address,
            };

            $.ajax({
                url: "process-account-add",
                method: "POST",
                data: data_id,
                success: function (data_id, textStatus, jqXHR) {
                    let obj = $.parseJSON(data_id);
                    if (obj == true) {
                        swal({
                            title: 'Tạo tài khoản thành công !',
                            icon: 'success',
                            showConfirmButton: false,
                            timer: 1200,
                        });
                        $('.username-acc').val("");
                        $('.email-acc').val("");
                        $('.sdt-acc').val("");
                        $('.pass-acc').val("");
                        $('#exampleFormControlTextarea1').val("");
                    } else {
                        swal({
                            title: 'Tạo tài khoản thất bại !',
                            icon: 'error',
                            showConfirmButton: false,
                            timer: 1200,
                        });
                    }
                }
            });
        } else
            swal("Vui lòng nhập đầy đủ thông tin !", "", "error");

    });
});