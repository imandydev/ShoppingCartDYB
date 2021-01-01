$(document).ready(function () {
    $('.submit-pro').on('submit', function (e) {
        e.preventDefault();
        var valPro = $(this).find('.submit-cart').data('dataid');
        alert(valPro);
        $.ajax({
            url: "cart/add",
            method: "POST",
            data: {'id' : valPro, 'amount': 1},
            success: function (response){
            }
        });
    })
});