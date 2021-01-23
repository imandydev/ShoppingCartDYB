$(document).ready(function () {
    // load data khi click vao button edit
    $(".table1 tbody").on('click','.i-edit-user', function () {
        var curr = $(this).closest('tr');
        var idUser = curr.find('td:eq(2)').html();
        let data_id = {
            iduser: idUser,
        };
        $.ajax({
            url: "load-data-by-id",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                $('.email-user-show').data('dataemail',obj.email);
                $('.id-user-show').val(obj.id);
                $('.username-show').val(obj.username);
                $('.select-kind-user-show option[value=' + obj.loaiTaiKhoan + ']').attr('selected','selected');
                $('.email-user-show').val(obj.email);
                $('.phone-user-show').val(obj.sdt);
                $('.address-user-show').val(obj.diaChi);
                $('.date-add-user').val(obj.dateAdd);
            }
        });
    })
    $('.btn-save-edit-user').click(function () {
       var idUser = $('.id-user-show').val();
       var loaiTaiKhoan =  $('.select-kind-user-show :selected').val();
       var email =  $('.email-user-show').val();
       var sdt = $('.phone-user-show').val();
       var address =  $('.address-user-show').val();
       var emailbf = $('.email-user-show').data('dataemail');
       if (email != "") {
        let data_id = {
            iduser: idUser,
            loaitaikhoan:loaiTaiKhoan,
            email:email,
            sdt : sdt,
            address : address,
            emailbf: emailbf,
        };
        $.ajax({
            url: "process-edit-account",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == true){
                    swal({
                        title: 'Chỉnh sửa thành công!',
                        icon: 'success',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/load-all-account";
                        }
                    });
                } else {
                    swal({
                        title: 'Chỉnh sửa thất bại!',
                        icon: 'error',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/load-all-account";
                        }
                    });
                }
            }
        });
       } else
           swal("Vui lòng nhập vào địa chỉ email !", "", "error");
    });
})