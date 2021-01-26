$(document).ready(function () {
    // thay đổi màu
    $(".table1 tbody").on('change','.selec-color', function () {

        // lấy ra bảng hiện tại
        var curr = $(this).closest('tr');
        // lấy ra id và màu đang chọn của sản phẩm
        var colorVal = curr.find('td:eq(4)').find('select').children("option:selected").val();
        $('.giamgia').remove();
        // lấy ô chứa size và xóa danh sách size hiện tại
        var idProduct = curr.find('td:eq(4)').find('select').data('dataid');
        // lấy select size trong dòng đang xét để tí thêm optionvafo
        var colSize = curr.find('td:eq(5)').find('select');
        // lấy ra giá tiền trong dòng đang xét để thay đổi;
        // lấy ra số lượng sản phẩm mỗi dòng
        var colQuantity = curr.find('td:eq(6)').data('dataquan');
        // xóa giá trị tiền cũ để thêm giá tiền mới
        // hiển thị giá tiền
        var disPrice = curr.find('td:eq(6)');
        // lấy ra id chi tiết sp hiện tại
        var idDetail  = curr.find('td:eq(6)').data('iddetail');
        // xóa hết option size cũ
        curr.find('td:eq(6)').find('span').remove();
        curr.find('td:eq(5)').find('option').remove();
        // xóa tổng giá
        $(".last_2").find('span').remove();
        // đổi màu => đổi size
        let data = {
            action: "color-change",
            color: colorVal,
            id: idProduct,
            quantity: colQuantity,
        };
        $.ajax({
            url: "change/infor",
            method: "GET",
            data: data,
            success: function (data, textStatus, jqXHR) {
                let obj = $.parseJSON(data);
                $.each(obj, function (key, value) {
                    // thêm option vào ô size đang xét
                    colSize.append('<option value="' + value.size + '">' + value.size + '</option>');


                });


            },
            error: function (jqXHR, textStatus, errorThrown) {
                $('.selec-size').append('<option>Fail</option>');
            },
            cache: false
        });
        let data_result = {
            action: "price-change",
            color: colorVal,
            id: idProduct,
            quantity: colQuantity,
            iddetail: idDetail,
        }
        // đổi màu => đổi giá
        $.ajax({
            url: "change/infor",
            method: "GET",
            data: data_result,
            success: function (data_result, textStatus, jqXHR) {
                let obj_2 = $.parseJSON(data_result);
                $.each(obj_2, function (key, value) {
                    if(value.statusDiscount == 0) {
                        disPrice.data('dataid',value.priceR);
                        disPrice.data('iddetail',value.idDetail);
                        disPrice.append('<span>' + value.price + 'đ</span>');
                        $(".last_2").append('<span>'+ value.total +'đ</span>');

                        // nếu có giảm giá
                    }
                    else {

                        disPrice.data('dataid',value.priceS);
                        disPrice.data('iddetail',value.idDetail);
                        disPrice.append('<span>' + value.priceSale + 'đ</span>');
                        $(".last_2").append('<span>'+ value.total +'đ</span>');

                        // nếu không có giá có chi tiết sản phẩm thì lấy giá của sản phẩm
                    }
                });
                $('.selec-discount').prop('selectedIndex',0);
                $('.li-giamgia').append('<span class="giamgia">'+ 0 +'đ</span>');
            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });
    });
    // đổi size
    $(".table1 tbody").on('change','.selec-size', function () {

        // lấy ra bảng hiện tại
        var curr = $(this).closest('tr');
        // lấy ra size đang chọn của sản phẩm
        var colorVal = curr.find('td:eq(4)').find('select').children("option:selected").val();
        var sizeVal = curr.find('td:eq(5)').find('select').children("option:selected").val();
        // lấy id sản phẩm
        var idProduct = curr.find('td:eq(4)').find('select').data('dataid');
        // lấy ra số lượng sản phẩm mỗi dòng
        var colQuantity = curr.find('td:eq(6)').data('dataquan');
        // xóa giá trị tiền cũ để thêm giá tiền mới
        // lấy ra id chi tiết sp hiện tại
        var idDetail  = curr.find('td:eq(6)').data('iddetail');
        // hiển thị giá tiền
        var disPrice = curr.find('td:eq(6)');
        // số lượng
        var quantityTag = curr.find('td:eq(3)').find('.value-quantity');
       // xóa giá tiền cũ
        curr.find('td:eq(6)').find('span').remove();
        // xóa tổng giá
        $(".last_2").find('span').remove();
        // đổi size => đổi giá
        // xóa giảm giá
        $('.giamgia').remove();
        let data_size = {
            action: "size-change",
            color: colorVal,
            id: idProduct,
            quantity: colQuantity,
            size: sizeVal,
            iddetail: idDetail,
        };
        $.ajax({
            url: "change/infor",
            method: "GET",
            data: data_size,
            success: function (data_size, textStatus, jqXHR) {
                let obj = $.parseJSON(data_size);
                $.each(obj, function (key, value) {

                    if(value.statusDiscount == 0) {
                        quantityTag.val(colQuantity);
                        disPrice.data('dataid',value.priceR);
                        disPrice.data('iddetail',value.idDetail);
                        disPrice.append('<span>' + value.price + 'đ</span>');
                        $(".last_2").append('<span>'+ value.total +'đ</span>');

                        // nếu có giảm giá
                    }
                    else {
                        quantityTag.val(colQuantity);
                        disPrice.data('dataid',value.priceS);
                        disPrice.data('iddetail',value.idDetail);
                        disPrice.append('<span>' + value.priceSale + 'đ</span>');
                        $(".last_2").append('<span>'+ value.total +'đ</span>');

                        // nếu không có giá có chi tiết sản phẩm thì lấy giá của sản phẩm
                    }
                });
                $('.selec-discount').prop('selectedIndex',0);
                $('.li-giamgia').append('<span class="giamgia">'+ 0 +'đ</span>');
            },
                 error: function (jqXHR, textStatus, errorThrown) {
                $('.selec-size').append('<option>Fail</option>');
            },
            cache: false
        });
    });
    // tăng số lượng
    $(".table1 tbody").on('click','.value-plus', function () {
        var curr = $(this).closest('tr');
        // lấy ra số lượng vừa mới thêm
        var quantity = curr.find('td:eq(3)').find('.value-quantity').val();
        // lấy ra cột chứa giá hiển thị
        var priceTag = curr.find('td:eq(6)');
        // lấy ra giá tiền số lượng sp trước khi thêm
        var priceVal = curr.find('td:eq(6)').data("dataid");
        // lấy ra số lượng trước đó
        var quantityBe = curr.find('td:eq(6)').data("dataquan");
        // tính giá tiền
        var idDetail  = curr.find('td:eq(6)').data('iddetail');
        var result = (parseInt(priceVal)/quantityBe) * quantity;
        priceTag.find('span').remove();
        $('.giamgia').remove();
        $(".last_2").find('span').remove();
        priceTag.data('dataid',result);
        priceTag.data('dataquan', quantity);
        priceTag.append('<span>' + result + 'đ</span>');
        let data_size = {
            action: "amount",
            quantity: quantity,
            iddetail:idDetail,
        };
        $.ajax({
            url: "upordown",
            method: "GET",
            data: data_size,
            success: function (data_size, textStatus, jqXHR) {
                let obj = $.parseJSON(data_size);

                $.each(obj, function (index, value) {
                    if (index == 0)
                    $(".last_2").append('<span>'+ value +'đ</span>');

                });
                $('.selec-discount').prop('selectedIndex',0);
                $('.li-giamgia').append('<span class="giamgia">'+ 0 +'đ</span>');
            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });
    });
    // giảm số lượng
    $(".table1 tbody").on('click','.value-minus', function () {
        var curr = $(this).closest('tr');
        // lấy ra số lượng vừa mới thêm
        var quantity = curr.find('td:eq(3)').find('.value-quantity').val();
        // lấy ra cột chứa giá hiển thị
        var priceTag = curr.find('td:eq(6)');
        // lấy ra giá tiền số lượng sp trước khi thêm
        var priceVal = curr.find('td:eq(6)').data("dataid");
        // lấy ra số lượng trước đó
        var quantityBe = curr.find('td:eq(6)').data("dataquan");
        // tính giá tiền
        var result = (parseInt(priceVal)/quantityBe) * quantity;
        var idDetail  = curr.find('td:eq(6)').data('iddetail');
        priceTag.find('span').remove();
        $(".last_2").find('span').remove();
        $('.giamgia').remove();
        priceTag.data('dataid',result);
        priceTag.data('dataquan', quantity);
        priceTag.append('<span>' + result + 'đ</span>');
        let data_size = {
            action: "amount",
            quantity: quantity,
            iddetail:idDetail,
        };
        $.ajax({
            url: "upordown",
            method: "GET",
            data: data_size,
            success: function (data_size, textStatus, jqXHR) {
                let obj = $.parseJSON(data_size);

                $.each(obj, function (index, value) {
                    if (index == 0)
                        $(".last_2").append('<span>'+ value +'đ</span>');

                });
                $('.selec-discount').prop('selectedIndex',0);
                $('.li-giamgia').append('<span class="giamgia">'+ 0 +'đ</span>');
            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });
    });
    // thay đổi số lượng trực tiếp
    $(".table1 tbody").on('change','.value-quantity', function () {
        var curr = $(this).closest('tr');
        // lấy ra số lượng vừa mới thêm
        var quantity = curr.find('td:eq(3)').find('.value-quantity').val();
        // lấy ra cột chứa giá hiển thị
        var priceTag = curr.find('td:eq(6)');
        // lấy ra giá tiền số lượng sp trước khi thêm
        var priceVal = curr.find('td:eq(6)').data("dataid");
        // lấy ra số lượng trước đó
        var quantityBe = curr.find('td:eq(6)').data("dataquan");
        // tính giá tiền
        var result = (parseInt(priceVal)/quantityBe) * quantity;
        var idDetail  = curr.find('td:eq(6)').data('iddetail');
        priceTag.find('span').remove();
        $(".last_2").find('span').remove();
        $('.giamgia').remove();
        // xét khi giảm số lượng xuống < 0
        if (quantity >= 1) {
        priceTag.data('dataid',result);
        priceTag.data('dataquan', quantity);
        priceTag.append('<span>' + result + 'đ</span>');
        } else {
            result = (parseInt(priceVal)/quantityBe) * 1;
            priceTag.data('dataid',result);
            priceTag.data('dataquan', 1);
            priceTag.append('<span>' + result + 'đ</span>');
        }
        let data_size = {
            action: "amount",
            quantity: quantity,
            iddetail:idDetail,
        };
        $.ajax({
            url: "upordown",
            method: "GET",
            data: data_size,
            success: function (data_size, textStatus, jqXHR) {
                let obj = $.parseJSON(data_size);

                $.each(obj, function (index, value) {
                    if (index == 0)
                        $(".last_2").append('<span>'+ value +'đ</span>');

                });
                $('.selec-discount').prop('selectedIndex',0);
                $('.li-giamgia').append('<span class="giamgia">'+ 0 +'đ</span>');
            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });
    });
    // xóa sản phẩm
    $(".table1 tbody").on('click','.close1', function () {
        var curr = $(this).closest('tr');
        $('.giamgia').remove();
        var idDetail  = curr.find('td:eq(6)').data('iddetail');
        curr.fadeOut('slow', function (c) {
            curr.remove();
        });
        $(".last_2").find('span').remove();
        $(".sl-product").find('span').remove();
        let data_size = {
            action: "remove",
            iddetail:idDetail,
        };
        $.ajax({
            url: "remove-product",
            method: "GET",
            data: data_size,
            success: function (data_size, textStatus, jqXHR) {
                let obj = $.parseJSON(data_size);

                $.each(obj, function (index, value) {
                   if (index == 0)  {
                       $(".last_2").append('<span>'+ value +'đ</span>');

                   } else
                       $(".sl-product").append('<span >'+ value +' Sản phẩm</span>');

                });
                $('.selec-discount').prop('selectedIndex',0);
                $('.li-giamgia').append('<span class="giamgia">'+ 0 +'đ</span>');


            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });
    });
    // khi thay đổi mã giảm giá
    $('.selec-discount').change(function () {
        var priceDis = $('.selec-discount').children("option:selected").data('datadis');
        $('.total-price').remove();
        $('.giamgia').remove();
        let data_id = {
            action: "change-code",
            pricedis:priceDis,

        };
        $.ajax({
            url: "change-discount-code",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                $.each(obj, function (index, value) {
                    if (index == 0){
                            $('.ul-total').append('<li class="last_2 total-price" >' + 'Tổng tiền<span>' + value + 'đ</span></li>');
                    }else
                        $('li.li-giamgia').append('<span class="giamgia">'+ value +'đ</span>')
                });


            },
            error: function (jqXHR, textStatus, errorThrown) {
            },
            cache: false
        });
    });
    // thanh toán
    $('#payment').on('submit', function (e) {
        e.preventDefault();
        var priceDis = $('.selec-discount').children("option:selected").data('datadis');
        var idDis = $('.selec-discount').children("option:selected").data('dataid');
        var ghiChu = $('#exampleFormControlTextarea1').val();
        var curr = $('.rem1');
        let data_id = {
            price_dis:priceDis,
            iddis: idDis,
            ghichu:ghiChu,
        };
        $.ajax({
            url: "payment-cart",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == 1) {
                    swal("Thanh toán thành công !", "Đơn hàng của bạn đang được xử lý!", "success");
                    // remove tất cả các dòng sản phẩm trong bảng
                    curr.fadeOut('slow', function (c) {
                        curr.remove();
                    });
                    // set lại số lượng hiển thị
                    $(".sl-product").find('span').remove();
                    $(".sl-product").append('<span >' + 0 + ' Sản phẩm</span>');
                    $('.total-price').find('span').html("0đ");

                } else if (obj == 0)
                    // nếu chưa đăng nhập thì hiển thị thông báo cho đăng nhập
                    swal({
                        title: 'Bạn chưa đăng nhập, vui lòng đăng nhập để có thể thanh toán !',
                        icon: 'error',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/login";
                        }
                    });
                else if (obj == 3)
                    swal({
                        title: 'Bạn chưa nhập địa chỉ, vui lòng nhập địa chỉ để có thể thanh toán!',
                        icon: 'error',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/address";
                        }
                    });
                else
                    swal("Thanh toán thất bại!", "Giỏ hàng trống, vui lòng thêm sản phẩm vào giỏ hàng để có thể thanh toán!", "error");
             }
             });


        });
});