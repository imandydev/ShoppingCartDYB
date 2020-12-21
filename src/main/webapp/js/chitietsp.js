function selectColor(id){
    var b1 = "btn1";
    var b2 = "btn2";
    var b3 = "btn3";
    var btn1=document.getElementById("btn1");
    var btn2=document.getElementById("btn2");
    var btn3=document.getElementById("btn3");
    if(id==b1){
        btn1.style.background="#fb383b";
        btn1.style.color="White";	
        btn2.style.background="White";
        btn2.style.color="Black";
        btn3.style.background="White";
        btn3.style.color="black"
    }
    if(id==b2){
        btn1.style.background="White";
        btn1.style.color="Black";
        btn2.style.background="#fb383b";
        btn2.style.color="white";
        btn3.style.background="White";
        btn3.style.color="Black";
    }
    if(id==b3){
        btn1.style.background="White";
        btn1.style.color="Black";
        btn2.style.background="White";
        btn2.style.color="Black";
        btn3.style.background="#fb383b";
        btn3.style.color="white";
    }

}


function selectSize(id){
    var s =document.getElementById("ss");
    var m =document.getElementById("sm");
    var l =document.getElementById("sl");
    var xl =document.getElementById("sxl");
    var xxl =document.getElementById("sxxl");
    if(id =="ss"){
        s.style.background="#fb383b";
        s.style.color="white";
        m.style.background="white";
        m.style.color="black";
        l.style.background="white";
        l.style.color="black";
        xl.style.background="white";
        xl.style.color="black";
        xxl.style.background="white";
        xxl.style.color="black";
    }
    if(id =="sm"){
        s.style.background="white";
        s.style.color="black";
        m.style.background="#fb383b";
        m.style.color="white";
        l.style.background="white";
        l.style.color="black";
        xl.style.background="white";
        xl.style.color="black";
        xxl.style.background="white";
        xxl.style.color="black";
    }
    if(id == "sl"){
        s.style.background="white";
        s.style.color="black";
        m.style.background="white";
        m.style.color="black";
        l.style.background="#fb383b";
        l.style.color="white";
        xl.style.background="white";
        xl.style.color="black";
        xxl.style.background="white";
        xxl.style.color="black";
    }
    if(id=="sxl"){
        s.style.background="white";
        s.style.color="black";
        m.style.background="white";
        m.style.color="black";
        l.style.background="white";
        l.style.color="black";
        xl.style.background="#fb383b";
        xl.style.color="white";
        xxl.style.background="white";
        xxl.style.color="black";
    }
    if(id =="sxxl"){
        s.style.background="white";
        s.style.color="black";
        m.style.background="white";
        m.style.color="black";
        l.style.background="white";
        l.style.color="black";
        xl.style.background="white";
        xl.style.color="black";
        xxl.style.background="#fb383b";
        xxl.style.color="white";
    }

    
}

$('input.input-qty').each(function() {
    var $this = $(this),
      qty = $this.parent().find('.is-form'),
      min = Number($this.attr('min')),
      max = Number($this.attr('max'))
    if (min == 0) {
      var d = 0
    } else d = min
    $(qty).on('click', function() {
      if ($(this).hasClass('minus')) {
        if (d > min) d += -1
      } else if ($(this).hasClass('plus')) {
        var x = Number($this.val()) + 1
        if (x <= max) d += 1
      }
      $this.attr('value', d).val(d)
    })
  })