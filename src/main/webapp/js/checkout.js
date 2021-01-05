$(document).ready(function () {
    // thay đổi màu
    $(".table1 tbody").on('change','.selec-color', function () {

        // lấy ra bảng hiện tại
        var curr = $(this).closest('tr');
        // lấy ra id và màu đang chọn của sản phẩm
        var colorVal = curr.find('td:eq(4)').find('select').children("option:selected").val();
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

                $.each(obj, function (key, value) {
                    $(".last_2").append('<span>'+ value +'đ</span>');
                });
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

                $.each(obj, function (key, value) {
                    $(".last_2").append('<span>'+ value +'đ</span>');
                });
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

                $.each(obj, function (key, value) {
                    $(".last_2").append('<span>'+ value +'đ</span>');
                });
            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });
    });
    // xóa sản phẩm
    $(".table1 tbody").on('click','.close1', function () {
        var curr = $(this).closest('tr');
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
                   if (index == 0)
                       $(".last_2").append('<span>'+ value +'đ</span>');
                   else
                       $(".sl-product").append('<span >'+ value +' Sản phẩm</span>');
                });


            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });
    });


});