$(document).ready(function () {
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
        var colPrice = curr.find('td:eq(6)').data('dataid');
        // lấy ra số lượng sản phẩm mỗi dòng
        var colQuantity = curr.find('td:eq(6)').data('dataquan');
        // xóa giá trị tiền cũ để thêm giá tiền mới
        // hiển thị giá tiền
        var disPrice = curr.find('td:eq(6)');
        // xóa hết option size cũ
        curr.find('td:eq(6)').find('span').remove();
        curr.find('td:eq(5)').find('option').remove();
        let data = {
            action: "color-change",
            color: colorVal,
            id: idProduct,
        };
        $.ajax({
            url: "single-infor",
            method: "GET",
            data: data,
            success: function (data, textStatus, jqXHR) {
                let obj = $.parseJSON(data);
                $.each(obj, function (key, value) {
                    // thêm option vào ô size đang xét
                    colSize.append('<option value="' + value.size + '">' + value.size + '</option>')
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
        }
        $.ajax({
            url: "cart/change",
            method: "GET",
            data: data_result,
            success: function (data_result, textStatus, jqXHR) {
                let obj_2 = $.parseJSON(data_result);

                $.each(obj_2, function (key, value) {
                    if(value.statusDiscount == 0) {
                        disPrice.data('dataid',value.priceR);
                        disPrice.append('<span>' + value.price + 'đ</span>');
                        // nếu có giảm giá
                    }
                    else {
                        disPrice.data('dataid',value.priceS);
                        disPrice.append('<span>' + value.priceSale + 'đ</span>');
                        // nếu không có giá có chi tiết sản phẩm thì lấy giá của sản phẩm
                    }
                });
            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });
    });

});