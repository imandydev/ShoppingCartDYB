$(document).ready(function () {
    $('.but-save-add-detail-show').click(function () {
        var idProBf = $('.id-pro-show-detail').data('dataidprobf');
        var idPro = $('.id-pro-show-add-detail').val();
        var color = $('.color-add-detail-pro-show').val();
        var size = $('.size-add-detail-pro-show').val();
        var amount = $('.amount-add-detail-pro-show').val();
        var price = $('.price-add-detail-pro-show').val();
        var priceDis = $('.price-add-detail-dis-pro-show').val();
        var discount = $('.selec-add-discount-detail-show').children("option:selected").val();
        if ((idPro != "") && (color != "" || size != "")) {
        $.ajax({
            url: "process-detail-product-add",
            method: "POST",
            data: {
               'idpro':idPro,
                'color':color,
                'size':size,
                'amount':amount,
                'price':price,
                'pricedis':priceDis,
                'discount':discount,
            },
            success: function (data, textStatus, jqXHR) {
                let obj = $.parseJSON(data);
                if (obj == true) {
                    swal({
                        title: 'Thêm thành công!',
                        icon: 'success',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/edit-product?idPro=" + idProBf;
                        }
                    });
                }else
                    swal({
                        title: 'Thêm thất bại!',
                        icon: 'error',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/edit-product?idPro=" + idProBf;
                        }
                    });
            }
        });
        } else
            swal("Thêm thất bại !", "Vui lòng nhập thêm thông tin!", "error");

    });
});