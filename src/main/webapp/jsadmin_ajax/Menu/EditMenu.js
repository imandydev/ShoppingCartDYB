$(document).ready(function () {
    $(".table1 tbody").on('click','.i-edit-menu', function () {
        var curr = $(this).closest('tr');
        var idMenu = curr.find('td:eq(1)').html();
        let data_id = {
            idmenu: idMenu,
        };
        $.ajax({
            url: "load-data-edit-menu",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                $('.id-menu-show').val(obj.id);
                $('.name-menu-show').val(obj.name);
                $('.orther-menu-show').val(obj.orderMenu);
                $('.date-menu-show').val(obj.date);
                $('.orther-menu-show').data('dataorder', obj.orderMenu);
            }
        });
    });
    $('.btn-save-menu').click(function () {
        var idMenu = $('.id-menu-show').val();
        var name =  $('.name-menu-show').val();
        var order =  $('.orther-menu-show').val();
        var orderbf = $('.orther-menu-show').data('dataorder');
        if (name != "" && (order != "" && order > 0)) {
        let data_id = {
            idmenu: idMenu,
            name: name,
            order:order,
            orderbf:orderbf,
        };
        $.ajax({
            url: "process-edit-menu",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == true){
                    swal({
                        title: 'Chỉnh sửa thành công!',
                        icon: 'success',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });
                } else {
                    swal({
                        title: 'Chỉnh sửa thất bại!',
                        icon: 'error',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });
                }
            }
        });
        } else
            swal({
                title: 'Chỉnh sửa thất bại!',
                icon: 'error',
                showConfirmButton: false,
                timer: 1000,
            }).then(function() {
                location.reload();
            });
    });
});