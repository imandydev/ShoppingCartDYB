$(document).ready(function () {
    $(".table1 tbody").on('click','.i-edit-pro-other', function () {
        var curr = $(this).closest('tr');
        var idOther = curr.find('td:eq(0)').data('dataid');
        let data_id = {
            idother: idOther,
        };
        $.ajax({
            url: "load-data-edit-product",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                $('.id-pro-show').val(obj.idPro);
                $('.select-menu-show option[value=' + obj.idMenu + ']').attr('selected','selected');
                $('.id-pro-show').data('idOther',obj.idProOther);
            }
        });
    });
    $('.btn-save-pro-other').click(function () {
        var idPro =  $('.id-pro-show').val();
        var idProOther =  $('.id-pro-show').data('idOther');
        var idMenu =  $('.select-menu-show :selected').val();
        let data_id = {
            idpro: idPro,
            idother: idProOther,
            idmenu:idMenu,
        };
        $.ajax({
            url: "process-edit-product-other",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == true) {
                    swal({
                        title: 'Sửa thành công !',
                        icon: 'success',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });

                } else {
                    swal({
                        title: 'Sửa thất bại !',
                        icon: 'error',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });
                }
            }
        });
    });
});