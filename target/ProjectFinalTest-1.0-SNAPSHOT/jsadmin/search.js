$(document).ready(function() {
    $(".default_op").click(function() {
        $(".dropdown_1 ul").toggleClass("active");
    });
    $(".dropdown_1 ul li").click(function() {
        var text = $(this).text();
        $(".default_op").text(text);
        $(".dropdown_1 ul").removeClass("active");

    })
});