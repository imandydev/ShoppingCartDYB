
$(document).ready(function () {
    $("#color-selec").change(function () {
        $("#size-selec").find('option').remove();
        $('#price').find('span').remove();
        $('#price').find('del').remove();
        $('#buy-product').find('#buy-price').remove();
        let colorVal = $("#color-selec").val();
        let idProduct = $("#id-pro").text();
        let amount = $("#amount-product").val();
        $('.size-box').find('.soluong-conlai').remove();
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
            quantity: amount,
        }
        $.ajax({
            url: "single-infor",
            method: "GET",
            data: data_result,
            success: function (data_result, textStatus, jqXHR) {
                let obj_2 = $.parseJSON(data_result);
                $.each(obj_2, function (key, value) {
                    if(value.soLuongConLai == 0)
                        $('.size-box').append('<span class="soluong-conlai">Hết Hàng</span>');
                    if(value.statusDiscount == 0) {
                        $('#price').append('<span class="item_price" id="price-main">' + value.price +'đ</span>');
                        $('#buy-product').append('<input id="buy-price" type="hidden" name="amount" value='+value.priceR +'>');
                    // nếu có giảm giá
                     }
                    else {
                        $('#price').append('<span class="item_price" id="price-main">' + value.priceSale +'đ</span>');
                        $('#price').append('<del id="price-sale"> '+  value.price + 'đ</del>');
                        $('#buy-product').append('<input id="buy-price" type="hidden" name="amount" value='+ value.priceS +'>');
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
    $('#buy-product').find('#buy-price').remove();
    let colorVal = $("#color-selec").val();
    let idProduct = $("#id-pro").text();
    let sizeVal = $("#size-selec").val();
    let amount = $("#amount-product").val();
    $('.size-box').find('.soluong-conlai').remove();
    let data = {
    action: "size-change",
    color: colorVal,
    id: idProduct,
    size: sizeVal,
        quantity: amount,
};
    $.ajax({
    url: "single-infor",
    method: "GET",
    data: data,
    success: function (data, textStatus, jqXHR) {
    let obj = $.parseJSON(data);
    $.each(obj, function (key, value) {
        // nếu số lượng == 0 thì in ra hết hàng
        if(value.soLuongConLai == 0)
            $('.size-box').append('<span class="soluong-conlai">Hết Hàng</span>');
    // nếu không có giảm giá thì chỉ hiển thị giá gốc
    if(value.statusDiscount == 0) {
    $('#price').append('<span class="item_price" id="price-main">' + value.price +'đ</span>');
    $('#buy-product').append('<input id="buy-price" type="hidden" name="amount" value='+ value.priceR +'>');

    // nếu có giảm giá
    } else {
    $('#price').append('<span class="item_price" id="price-main">' + value.priceSale +'đ</span>');
    $('#price').append('<del id="price-sale"> '+  value.price + 'đ</del>');
    $('#buy-product').append('<input id="buy-price" type="hidden" name="amount" value='+ value.priceS +'>');
    // nếu không có giá có chi tiết sản phẩm thì lấy giá của sản phẩm
}
});
},
    error: function (jqXHR, textStatus, errorThrown) {
},
    cache: false
});

});
    // change amount
    $("#plus").click(function () {
        let amount = $("#amount-product").val();
        let result = parseInt(amount,10) + 1;
        $("#amount-product").val(result);
        $("#amount-submit").val(result);

    });
    $("#minus").click(function () {
        let amount = $("#amount-product").val();
        let result = parseInt(amount,10) - 1;
        if (result < 1) {
            $("#amount-product").val(1);
            $("#amount-submit").val(1);
        } else {
            $("#amount-product").val(result);
           $("#amount-submit").val(result);
        }
    });
    $("#amount-product").blur(function () {
        let amount = $("#amount-product").val();
        if (amount < 1)
            $("#amount-product").val(1);
    });
    $('#buy-product').on('submit', function (e) {
        e.preventDefault();
        var valPro = $(this).find('#submit-cart').data('dataid');
        var amount = $(this).find('#amount-submit').val();
        var color = $("#color-selec").children("option:selected").val();
        var size = $("#size-selec").children("option:selected").val();

        $.ajax({
            url: "cart/add",
            method: "POST",
            data: {'id' : valPro , 'amount': amount, 'color':color, 'size':size},
            success: function (data, textStatus, jqXHR) {
                let obj = $.parseJSON(data);
                if (obj == true)
                    swal("Đã thêm vào giỏ hàng !", "", "success");
                else
                    swal("Thêm thất bại!", "Sản phẩm đã hết, vui lòng chọn sản phẩm khác.", "error");
            }

        });
    })
});

