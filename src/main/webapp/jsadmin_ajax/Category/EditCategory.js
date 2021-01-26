$(document).ready(function () {
    $(".table1 tbody").on('click','.i-edit-danh-muc', function () {
        var curr = $(this).closest('tr');
        var idCate = curr.find('td:eq(1)').html();
        let data_id = {
            idcate : idCate,
        };
        $.ajax({
            url: "load-data-edit-category",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);

                    $('.id-cate-show').val(obj.id);
                    $('.name-cate-show').val(obj.name);
                    $('.select-cate-pro-main-show option[value=' + obj.idMenu + ']').attr('selected','selected');
                    $('.order-cate-show').val(obj.order);
                    $('.date-cate-show').val(obj.date);

            }
        });
    });
    $('.btn-save-category').click(function () {
        var idCate =  $('.id-cate-show').val();
        var name =  $('.name-cate-show').val();
        var idMenu = $('.select-cate-pro-main-show :selected').val();
        var order = $('.order-cate-show').val();

        if (name != "" && (order != "" && order > 0)) {
        let data_id = {
            idcate : idCate,
            name: name,
            idmenu:idMenu,
            order :order,
        };
        $.ajax({
            url: "process-edit-category",
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
        }else
            swal({
                title: 'Chỉnh sửa thất bại!',
                icon: 'error',
                showConfirmButton: false,
                timer: 1000,
            }).then(function() {
                location.reload();
            });
    })
});