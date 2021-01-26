$(document).ready(function () {
    $(".table1 tbody").on('click','.i-delete-user', function () {
        var curr = $(this).closest('tr');
        var idUser = curr.find('td:eq(2)').html();
        $('.btn-delete-user').click(function () {
            let data_id = {
                iduser: idUser,
            };
            $.ajax({
                url: "process-delete-account",
                method: "GET",
                data: data_id,
                success: function (data_id, textStatus, jqXHR) {
                    let obj = $.parseJSON(data_id);
                    if (obj == true){
                        swal({
                            title: 'Xóa thành công!',
                            icon: 'success',
                            showConfirmButton: false,
                            timer: 1000,
                        }).then(function() {
                            location.reload();
                        });
                    } else {
                        swal({
                            title: 'Xóa thất bại!',
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
});