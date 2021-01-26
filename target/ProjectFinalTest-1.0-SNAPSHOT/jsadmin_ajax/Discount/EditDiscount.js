$(document).ready(function () {
    $(".table1 tbody").on('click','.i-edit-discount', function () {
        var curr = $(this).closest('tr');
        var idDis = curr.find('td:eq(1)').html();
        let data_id = {
            iddis: idDis,
        };
        $.ajax({
            url: "load-data-edit-discount",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                $('.content-discount-show').val(obj.maGiamGia);
                $('.content-discount-show').data('dataid',obj.id);
                $('.discount-price-show').val(obj.giamGia);
                $('.start-date-show').val(obj.dateS);
                $('.end-date-show').val(obj.dateE);

            }
        });
    });
    $('.but-save-discount-show').click(function () {
        var idDis =  $('.content-discount-show').data('dataid');
        var noiDung = $('.content-discount-show').val();
        var giaGiam =  $('.discount-price-show').val();
        var startDate = $('.start-date-show').val();
        var endDate =  $('.end-date-show').val();
        let data_id = {
            iddis: idDis,
            nd: noiDung,
            giagiam : giaGiam,
            dates: startDate,
            datee:endDate,
        };
        $.ajax({
            url: "process-edit-discount",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == true){
                    swal({
                        title: 'Chỉnh sửa thành công!',
                        icon: 'success',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });
                } else {
                    swal({
                        title: 'Chỉnh sửa thất bại!',
                        icon: 'error',
                        showConfirmButton: false,
                        timer: 1000,
                    }).then(function() {
                        location.reload();
                    });
                }
            }
        });
    })
});