$(document).ready(function () {
    var editorMota = CKEDITOR.replace('mota');
    var editorThongTin = CKEDITOR.replace('thongtin');
    // hiển thị hình ảnh chính
    $("#input-image-main-pro").change(function () {
        let imgmain = document.getElementById("input-image-main-pro").files[0];
        let currentImage_main = document.getElementById("changeimg-main");
        let reader1 = new FileReader();
        reader1.onload = function () {
            currentImage_main.src = reader1.result;
        }
        reader1.readAsDataURL(imgmain);
    });
    // khi thay đổi ảnh phụ
    $("#input-image-pro").change(function () {
        var lengthArr = document.getElementById("input-image-pro").files.length;
        // nếu ít hơn 3 ảnh thì lấy đúng số ảnh đã nhận vào
        if (lengthArr < 3) {
            for (let i = 0; i < lengthArr; i++) {
                let img1 = document.getElementById("input-image-pro").files[i];
                let currentImage_1 = document.getElementById("changeimg" + (i+1));
                let reader1 = new FileReader();
                reader1.onload = function () {
                    currentImage_1.src = reader1.result;
                }
                reader1.readAsDataURL(img1);
            }
        // nếu nhiều hơn 3 thì chỉ lấy đúng 3 ảnh trong nhiều ảnh nhận vào
        } else if(lengthArr >= 3){
            for ( let i = 0; i < 3; i++) {
                let img1 = document.getElementById("input-image-pro").files[i];
                let currentImage_1 = document.getElementById("changeimg" + (i+1));
                let reader1 = new FileReader();
                reader1.onload = function () {
                    currentImage_1.src = reader1.result;
                }
                reader1.readAsDataURL(img1);
            }
        }
        // var path = $('#changeimg1').attr('src');
        // alert(path);

    })
    $('.btn-savesss').click(function () {
        var namePro = $('.input-name-pro').val();
        var main =  document.getElementById("input-image-main-pro");
        var sub = document.getElementById("input-image-pro");
        var linkImgMain = "";
        var arrLinkSub = [];
        // nếu không có ảnh chính thì gán bằng rỗng
        if (main.files.length == 0)
            linkImgMain = "";
        else
            linkImgMain = main.files[0].name;
        // nếu ảnh phụ > 2 thì chỉ lấy 3 ảnh đầu tiên
        if (sub.files.length >= 3) {
            arrLinkSub[0] = sub.files[0].name;
            arrLinkSub[1] = sub.files[1].name;
            arrLinkSub[2] = sub.files[2].name;
            // nếu < 2 thì lấy tất cả
        } else {
            for (let i = 0; i < sub.files.length; i++) {
                 arrLinkSub[i] = document.getElementById("input-image-pro").files[i].name;
            }
            // 3 là set cứng cho mảng 3 ảnh, set rỗng cho các phần chưa có ảnh chèn vào

            for (let i =sub.files.length; i < 3; i++) {
                arrLinkSub[i] = "";
            }
        }
        var idCate = $('.select-cate').children("option:selected").data('dataidcate');
        var idMenu = $('.select-cate').children("option:selected").data('dataidmenu');
        var status = $('.select-status').children("option:selected").val();
        var price = $('.input-price-pro').val();
        var price_dis = $('.input-price-dis-pro').val();
        // nếu không nhập giá thì set giá  = 0
        if (price == "")
            price = 0;
        if (price_dis == 0)
            price_dis = 0;
        var mota = editorMota.getData();
        var thong_tin = editorThongTin.getData();
        if (namePro != "") {
        $.ajax({
            url: "process-product-add",
            method: "POST",
            data: {
                'namepro' : namePro ,
                'imgmain': linkImgMain,
                'img1':arrLinkSub[0],
                'img2':arrLinkSub[1],
                'img3':arrLinkSub[2],
                'idcate':idCate,
                'idmenu':idMenu,
                'status':status,
                'price':price,
                'pricedis':price_dis,
                'mota':mota,
                'thongtin':thong_tin,
                },
            success: function (data, textStatus, jqXHR) {
                let obj = $.parseJSON(data);
                if (obj == true) {
                    swal({
                        title: 'Thêm thành công!',
                        icon: 'success',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/display-product-add";
                        }
                    });

                } else {
                    swal({
                        title: 'Thêm thất bại!',
                        icon: 'error',
                        showConfirmButton: false,
                        allowOutsideClick: false,
                    }).then(okay => {
                        if (okay) {
                            window.location.href = "/ProjectFinalTest_war_exploded/display-product-add";
                        }
                    });
                }
            }
        });
    } else
    swal("Vui lòng nhập đầy đủ thông tin !", "", "error");
    })
})