$(document).ready(function () {
    var editorMota = CKEDITOR.replace('mota-pro-show');
    var editorThongTin = CKEDITOR.replace('thongtin-pro-show');
    // thay đổi hình ảnh chính
    $("#img-main-show").change(function () {
        let imgmain = document.getElementById("img-main-show").files[0];
        let currentImage_main = document.getElementById("img-main");
        let reader1 = new FileReader();
        reader1.onload = function () {
            currentImage_main.src = reader1.result;
        }
        reader1.readAsDataURL(imgmain);
    });
    // thay đổi hình ảnh chi tiết sp 1
    $("#img-1-show").change(function () {
        let imgmain = document.getElementById("img-1-show").files[0];
        let currentImage_main = document.getElementById("img-change-1");
        let reader1 = new FileReader();
        reader1.onload = function () {
            currentImage_main.src = reader1.result;
        }
        reader1.readAsDataURL(imgmain);
    });
    // thay đổi hình ảnh chi tiết sp 2
    $("#img-2-show").change(function () {
        let imgmain = document.getElementById("img-2-show").files[0];
        let currentImage_main = document.getElementById("img-change-2");
        let reader1 = new FileReader();
        reader1.onload = function () {
            currentImage_main.src = reader1.result;
        }
        reader1.readAsDataURL(imgmain);
    });
    // thay đổi hình ảnh chi tiết sp 3
    $("#img-3-show").change(function () {
        let imgmain = document.getElementById("img-3-show").files[0];
        let currentImage_main = document.getElementById("img-change-3");
        let reader1 = new FileReader();
        reader1.onload = function () {
            currentImage_main.src = reader1.result;
        }
        reader1.readAsDataURL(imgmain);
    });
    // hiển thị chi tiết sản phảm khi click vào button edit
    $('.table-product tbody').on("click",".i-edit",function () {
        var curr = $(this).closest('tr');
        var idPro = curr.find('td:eq(0)').find('span').data('dataid');
        let data_id = {
            idpro : idPro,
        };
        $.ajax({
            url: "display-modal-product-edit",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                $.each(obj, function (index, value) {
                    if (index == 0) {
                        $('.id-pro-show').val(value.id);
                        $('.name-pro-show').val(value.name);
                        $('.cate-pro-show option[value=' + value.idDanhMuc + ']').attr('selected', 'selected');
                        $('.status-pro-show option[value=' + value.status + ']').attr('selected','selected');
                        $('.price-pro-show').val(value.gia);
                        $('.price-dis-pro-show').val(value.giaKM);
                        CKEDITOR.instances['mota-pro-show'].setData(value.moTa);
                        CKEDITOR.instances['thongtin-pro-show'].setData(value.thongTin);
                    } else {
                        $.each(value,function (index, item) {
                           if (item.endsWith("0.png"))
                               document.getElementById("img-main").src = item;
                           else if (item.endsWith("1.png"))
                               document.getElementById("img-change-1").src = item;
                           else if (item.endsWith("2.png"))
                               document.getElementById("img-change-2").src = item;
                           else if (item.endsWith("3.png"))
                               document.getElementById("img-change-3").src = item;
                        });
                    }
                });
            }
        });

    });
    // nhấp vào button lưu để lưu lại thay đổi
    $('.but-save-show').click(function () {
        var idPro = $('.id-pro-show').val();
        var name = $('.name-pro-show').val();
        var idCate = $('.cate-pro-show :selected').val();
        var idMenu = $('.cate-pro-show :selected').data('dataidmenu');
        var status = $('.status-pro-show :selected').val();
        var price = $('.price-pro-show').val();
        var priceDis = $('.price-dis-pro-show').val();
        var moTa = editorMota.getData();
        var thongTin = editorThongTin.getData();
        var listImg = [];
        var main = document.getElementById("img-main-show");
        var i_1 = document.getElementById("img-1-show");
        var i_2 = document.getElementById("img-2-show");
        var i_3 = document.getElementById("img-3-show");
        // lấy ra các ảnh mới được thêm vào, xét nếu có ảnh mới được chèn vào thì lấy ra rồi update lại
        if (main.files.length != 0)
            listImg.push("0-" + main.files[0].name + ";");
        if (i_1.files.length != 0)
            listImg.push("1-" + i_1.files[0].name + ";");
        if (i_2.files.length != 0)
            listImg.push("2-" + i_2.files[0].name + ";");
        if (i_3.files.length != 0)
            listImg.push("3-" + i_3.files[0].name + ";");
        // append listimg để gửi
        var resultImg = "";
        for (let i =0 ; i < listImg.length; i++)
            resultImg += listImg[i];
        // xét trường hợp rỗng của 2 ckeditor
        let data_send = {
            idpro : idPro,
            name : name,
            idcate: idCate,
            status: status,
            idmenu : idMenu,
            price : price,
            pricedis : priceDis,
            mota: moTa,
            thongtin: thongTin,
            listimg : resultImg,
        };
        $.ajax({
            url: "process-product-edit",
            method: "GET",
            data: data_send,
            success: function (data_send, textStatus, jqXHR) {
                let obj = $.parseJSON(data_send);
                if (obj == true) {
                    swal({
                        title: 'Chỉnh sửa thành công!',
                        icon: 'success',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/edit-product?idPro=" + idPro;
                        }
                    });

                }else
                    swal({
                        title: 'Chỉnh sửa thất bại!',
                        icon: 'error',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/edit-product?idPro=" + idPro;
                        }
                    });
            }
        });
    });
    $('.table-detail-product tbody').on('click','.i-edit-detail',function () {
        var curr = $(this).closest('tr');
        var idDetail = curr.find('td:eq(0)').find('span').data('dataid');
        let data_id = {
            iddetail : idDetail,
        };
        $.ajax({
            url: "display-modal-detail-product-edit",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                $('.id-detail-pro-show').val(obj.id);
                $('.id-pro-show-detail').val(obj.idPro);
                $('.id-pro-show-detail').attr('data-dataidprobf',obj.idPro);
                $('.color-detail-pro-show').val(obj.mau);
                $('.size-detail-pro-show').val(obj.size);
                $('.amount-detail-pro-show').val(obj.soLuong);
                $('.price-detail-pro-show').val(obj.gia);
                $('.price-detail-dis-pro-show').val(obj.giaGiam);
                $('.selec-discount-detail-show option[value=' + obj.giamGia + ']').attr('selected','selected');
            }
        });
    });
    $('.but-save-detail-show').click(function () {
        var idDetail = $('.id-detail-pro-show').val();
        var idProBf = $('.id-pro-show-detail').data('dataidprobf');
        var idPro = $('.id-pro-show-detail').val();
        var color = $('.color-detail-pro-show').val();
        var size = $('.size-detail-pro-show').val();
        var amount = $('.amount-detail-pro-show').val();
        var price = $('.price-detail-pro-show').val();
        var priceDis = $('.price-detail-dis-pro-show').val();
        var giamGia = $('.selec-discount-detail-show :selected').val();
        let data_id = {
            iddetail: idDetail,
            idpro : idPro,
            color : color,
            size : size,
            amount : amount,
            price : price,
            pricedis : priceDis,
            giamgia : giamGia,
        };
        $.ajax({
            url: "process-detail-product-edit",
            method: "GET",
            data: data_id,
            success: function (data_id, textStatus, jqXHR) {
                let obj = $.parseJSON(data_id);
                if (obj == true){
                    swal({
                        title: 'Chỉnh sửa thành công!',
                        icon: 'success',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/edit-product?idPro=" + idPro;
                        }
                    });
                } else {
                    swal({
                        title: 'Chỉnh sửa thất bại!',
                        icon: 'error',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/edit-product?idPro=" + idProBf;
                        }
                    });
                }

            }
        });
    });
});