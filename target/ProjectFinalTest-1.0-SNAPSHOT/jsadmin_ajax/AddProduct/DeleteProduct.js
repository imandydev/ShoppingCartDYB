$(document).ready(function () {
    $(".table1 tbody").on('click','.i-del', function () {
        var curr = $(this).closest('tr');
        var idPro = curr.find('td:eq(1)').find('span').data('dataid');
        $(".btn-delete").click(function () {
            let data_id = {
                idpro : idPro,
            };
            $.ajax({
                url: "delete-product",
                method: "GET",
                data: data_id,
                success: function (data_id, textStatus, jqXHR) {
                    let obj = $.parseJSON(data_id);
                    if (obj == true) {
                        swal({
                            title: 'Xóa sản phẩm thành công!',
                            icon: 'success',
                            showConfirmButton: false,
                            allowOutsideClick: false,
                        }).then(okay => {
                            if (okay) {
                                window.location.href = "/ProjectFinalTest_war_exploded/list-product-manager";
                            }
                        });
                    }else
                        swal("Xóa thất bại !", "", "error");
                }
            });
        })
    });
})