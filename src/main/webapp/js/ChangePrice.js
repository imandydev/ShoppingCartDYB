
    $(document).ready(function () {
    $("#color-selec").change(function () {
        $("#size-selec").find('option').remove();
        $('#price').find('span').remove();
        $('#price').find('del').remove();
        $('#buy-product').find('#buy-price').remove();
        let colorVal = $("#color-selec").val();
        let idProduct = $("#id-pro").text();
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
                    $('#size-selec').append('<option value="' + value.size + '">' + value.size + '</option>')
                });
            },
            error: function (jqXHR, textStatus, errorThrown) {
                $('#size-selec').append('<option>Fail</option>');
            },
            cache: false
        });
        // set gia theo size được chọn, màu được chọn, id sản phẩm
        let data_result = {
            action: "price-change",
            color: colorVal,
            id: idProduct,
        }
        $.ajax({
            url: "single-infor",
            method: "GET",
            data: data_result,
            success: function (data_result, textStatus, jqXHR) {
                let obj_2 = $.parseJSON(data_result);
                $.each(obj_2, function (key, value) {
                    if(value.priceSale == 0) {
                        $('#price').append('<span class="item_price" id="price-main">' + value.price +'đ</span>');
                        $('#buy-product').append('<input id="buy-price" type="hidden" name="amount" value='+value.price +'>');
                    // nếu có giảm giá
                    } else {
                        $('#price').append('<span class="item_price" id="price-main">' + value.priceSale +'đ</span>');
                        $('#price').append('<del id="price-sale"> '+  value.price + 'đ</del>');
                        $('#buy-product').append('<input id="buy-price" type="hidden" name="amount" value='+value.priceSale +'>');

                        // nếu không có giá có chi tiết sản phẩm thì lấy giá của sản phẩm
                    }
                });
            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            cache: false
        });


    });
    $("#size-selec").change(function () {
    $('#price').find('span').remove();
    $('#price').find('del').remove();
    let colorVal = $("#color-selec").val();
    let idProduct = $("#id-pro").text();
    let sizeVal = $("#size-selec").val();
    let data = {
    action: "size-change",
    color: colorVal,
    id: idProduct,
    size: sizeVal,
};
    $.ajax({
    url: "single-infor",
    method: "GET",
    data: data,
    success: function (data, textStatus, jqXHR) {
    let obj = $.parseJSON(data);
    $.each(obj, function (key, value) {
    
    // nếu không có giảm giá thì chỉ hiển thị giá gốc

    if(value.priceSale == 0) {
    $('#price').append('<span class="item_price" id="price-main">' + value.price +'đ</span>');
    $('#buy-product').append('<input id="buy-price" type="hidden" name="amount" value='+value.price +'>');
    // nếu có giảm giá
    } else {
    $('#price').append('<span class="item_price" id="price-main">' + value.priceSale +'đ</span>');
    $('#price').append('<del id="price-sale"> '+  value.price + 'đ</del>');
    $('#buy-product').append('<input id="buy-price" type="hidden" name="amount" value='+value.priceSale +'>');
    // nếu không có giá có chi tiết sản phẩm thì lấy giá của sản phẩm
}
});
},
    error: function (jqXHR, textStatus, errorThrown) {
},
    cache: false
});
    // set gia theo size được chọn, màu được chọn, id sản phẩm
    let data_result = {
    action: "price",
    color: colorVal,
    id: idProduct,
}
});

});

