$(document).ready(function () {
    $('.submit-pro').on('submit', function (e) {
        e.preventDefault();
        var idPro = $(this).find('.submit-cart').data('dataid');
        let data = {
            action: "detail",
            id: idPro,
        };
        $.ajax({
            url: "get-color-size",
            method: "POST",
            data: data,
            success: function (data, textStatus, jqXHR){
                let obj = $.parseJSON(data);
                $.each(obj, function (index, value) {
                    if (index == 0) {
                        $('.row1-choose-color').append('<label>' + value.size + '</label>');
                    $('.row1-choose-color').append('<input type="checkbox" value="' + value.size + '" checked>');
                    } else {
                        $('.row1-choose-color').append('<label>' + value.size + '</label>');
                        $('.row1-choose-color').append('<input type="checkbox" value="' + value.size + '">');
                    }
                });
            }
        });
    })
});