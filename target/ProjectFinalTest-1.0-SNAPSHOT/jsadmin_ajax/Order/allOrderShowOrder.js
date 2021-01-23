$(document).ready(function () {
    // khi click vào button sửa trên 1 dòng bất kì
    $(".table1 tbody").on('click','.i-edit', function () {
        var curr = $(this).closest('tr');
        var idOrder = curr.find('td:eq(0)').html();
        $('.tbody-show').remove();
        let data_id = {
            idOrder : idOrder,
        };
        $.ajax({
            url: "load-data-table-dashboard",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                $.each(obj, function (index, value) {
                    // vị trí thứ 0 lấy ra order
                    if (index == 0) {
                        $('.id-order-show').val(value.id);
                        $('.id-user-show').val(value.idUser);
                        $('.date-order-show').val(value.time);
                        $('.status-order-show option[value="' + value.trangThai+ '"]').prop("selected", true);
                        if (value.idGiamGia == -1)
                            $('.id-discount-show').val("Không có mã giảm giá");
                        else
                            $('.id-discount-show').val(value.idGiamGia);
                        $('.total-price-show').val(value.tongTien + 'đ');
                        $('.address-user-show').val(value.diaChi);
                        $('.ghichu-show').val(value.ghiChu);
                        // lấy ra list orderdetail
                    } else if (index == 1){
                        $('.table-show').append('<tbody class="tbody-show"></tbody>')
                        $.each(value, function (index, item) {
                            $('.tbody-show').append('<tr class="tr-' +index+ '"></tr>')
                            // col 1
                            $('.tr-'+index).append('<td class="td-0-' + index + '"></td>');
                            $('.td-0-'+index).append('<span>' + item.idPro +'</span>');
                            // col 2
                            $('.tr-'+index).append('<td class="td-1-' + index + '"></td>');
                            $('.td-1-'+index).append('<span>' + item.namePro +'</span>');
                            // col 3
                            $('.tr-'+index).append('<td class="td-2-' + index + '"></td');
                            $('.td-2-'+index).append('<span>' + item.size +'</span>');
                            // col 4
                            $('.tr-'+index).append('<td class="td-3-' + index + '"></td');
                            $('.td-3-' +index).append('<span>' + item.color +'</span>');
                            // col 5
                            $('.tr-'+index).append('<td class="td-4-' + index + '"></td');
                            $('.td-4-'+index).append('<span>' + item.amount+'</span>');
                            // col 6
                            $('.tr-'+index).append('<td class="td-5-' + index + '"></td');
                            $('.td-5-'+index).append('<span>' + item.price+'đ</span>');
                        });
                        // thêm vào tổng số sản phẩm
                    } else
                        $('.sum-amount-show').val(value);
                });

            },
            error: function (jqXHR, textStatus, errorThrown) {
            },
            cache: false
        });
    });
    $('.but-save-show').click(function () {
        var idOrder = $('.id-order-show').val();
        var statusOrder = $('.status-order-show').children("option:selected").val();
        let data_id = {
            idorder : idOrder,
            statusorder: statusOrder,
        };
        $.ajax({
            url: "update-status-dashboard",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == true) {
                    swal({
                        title: 'Chỉnh sửa thành công!',
                        icon: 'success',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/display-order";
                        }
                    });
                }else
                    swal("Chỉnh sửa thất bại !", "", "error");
            }
        });
    });
});