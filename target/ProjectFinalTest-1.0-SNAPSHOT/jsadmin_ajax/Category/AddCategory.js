$(document).ready(function () {
    $('.btn-save-category').click(function () {
        var name =  $('.name-cate-show-add').val();
        var idMenu = $('.select-cate-pro-main-show-add :selected').val();
        var order = $('.order-cate-show-add').val();
        let data_id = {
            name: name,
            idmenu:idMenu,
            order :order,
        };
        $.ajax({
            url: "process-add-category",
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
                    })
                }
            }
        });
    })
});