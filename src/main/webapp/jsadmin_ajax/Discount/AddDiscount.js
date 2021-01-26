$('.but-add-discount-add').click(function () {
    var noiDung = $('.content-discount-add').val();
    var price = $('.price-discount-add').val();
    var startDate = $('.start-date-add').val();
    var endDate = $('.end-date-add').val();
    if (noiDung != "" && price != "" && startDate != "" && endDate != "") {
        let data_id = {
           'nd': noiDung,
            'price': price,
            'start':startDate,
            'end' :endDate,
        };
        $.ajax({
            url: "process-add-discount",
            method: "POST",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == true) {
                    swal({
                        title: 'Thêm mã giảm giá thành công !',
                        icon: 'success',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });
                } else {
                    swal({
                        title: 'Thêm mã giảm giá thất bại !',
                        icon: 'error',
                        showConfirmButton: false,
                        timer: 1000,
                    });
                }
            }
        });
    }
})