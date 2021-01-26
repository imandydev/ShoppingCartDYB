$(document).ready(function () {
    $('#from-infor').on('submit', function (e) {
        var logo = $('.logo-1-show').val() + ";" + $('.logo-2-show').val();
        var nameC = $('.ten-cong-ty-show').val();
        var hotline = $('.sdt-show').val();
        var email = $('.email-show').val();
        var cpr = $('.coppyr-show').val();
        var fb = $('.fb-show').val();
        var ins = $('.ins-show').val();
        var twi = $('.twi-show').val();
        var pin = $('.pin-show').val();
        var banDo = $('#exampleFormControlTextarea1').val();
        var diaChi = $('.dia-chi-show').val();
        let data_id = {
            'logo' : logo ,
            'email': email,
            'namec': nameC,
            'hotline':hotline,
            'cpr':cpr,
            'fb':fb,
            'ins':ins,
            'twi':twi,
            'pin':pin,
            'bando':banDo,
            'diachi':diaChi,
        };
        $.ajax({
            url: "process-update-infor",
            method: "POST",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == true) {
                    swal({
                        title: 'Cập nhật thành công !',
                        icon: 'success',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });
                } else {
                    swal({
                        title: 'Tạo tài khoản thất bại !',
                        icon: 'error',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });
                }
            }
        });
    })
});