$(document).ready(function () {
    $('.submit-pro').on('submit', function (e) {
        e.preventDefault();
        var valPro = $(this).find('.submit-cart').data('dataid');
        alert("id san pham " + valPro );
        // var data = {
        //     id: valPro,
        // };
        $.ajax({
            url: "cart/add",
            method: "POST",
            data: {'id' : valPro, 'amount': 1},
            success: function (response){

            }
        });
    })
});