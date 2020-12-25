function selectColor(id){

    var b1 = "btn1";
    var b2 = "btn2";
    var b3 = "btn3";
    var b4 = "btn4";
    var b5 = "btn5";
    var b6 = "btn6";
    var btn1=document.getElementById("btn1");
    var btn2=document.getElementById("btn2");
    var btn3=document.getElementById("btn3");
    var btn4=document.getElementById("btn4");
    var btn5=document.getElementById("btn5");
    var btn6=document.getElementById("btn6");
    if(id==b1){
        btn1.style.background="#fc636b";
        btn1.style.color="White";	
        btn2.style.background="White";
        btn2.style.color="Black";
        btn3.style.background="White";
        btn3.style.color="black"
        btn4.style.background="White";
        btn4.style.color="Black";
        btn5.style.background="White";
        btn5.style.color="black"
        btn6.style.background="White";
        btn6.style.color="black"
    }
   else if(id==b2){
        btn1.style.background="White";
        btn1.style.color="Black";
        btn2.style.background="#fc636b";
        btn2.style.color="white";
        btn3.style.background="White";
        btn3.style.color="Black";
        btn4.style.background="White";
        btn4.style.color="Black";
        btn5.style.background="White";
        btn5.style.color="black"
        btn6.style.background="White";
        btn6.style.color="black"
    }
   else if(id==b3){
        btn1.style.background="White";
        btn1.style.color="Black";
        btn2.style.background="White";
        btn2.style.color="Black";
        btn3.style.background="#fc636b";
        btn3.style.color="white";
        btn4.style.background="White";
        btn4.style.color="Black";
        btn5.style.background="White";
        btn5.style.color="black"
        btn6.style.background="White";
        btn6.style.color="black"
    }
    else if(id==b4){
        btn1.style.background="White";
        btn1.style.color="Black";
        btn2.style.background="";
        btn2.style.color="Black";
        btn3.style.background="White";
        btn3.style.color="Black";
        btn4.style.background="#fc636b";
        btn4.style.color="White";
        btn5.style.background="White";
        btn5.style.color="black"
        btn6.style.background="White";
        btn6.style.color="black"
    }
    else if(id==b5){
        btn1.style.background="White";
        btn1.style.color="Black";
        btn2.style.background="";
        btn2.style.color="Black";
        btn3.style.background="White";
        btn3.style.color="Black";
        btn4.style.background="White";
        btn4.style.color="Black";
        btn5.style.background="#fc636b";
        btn5.style.color="White"
        btn6.style.background="White";
        btn6.style.color="black"
    }
    else if(id==b6){
        btn1.style.background="White";
        btn1.style.color="Black";
        btn2.style.background="";
        btn2.style.color="Black";
        btn3.style.background="White";
        btn3.style.color="Black";
        btn4.style.background="White";
        btn4.style.color="Black";
        btn5.style.background="White";
        btn5.style.color="black"
        btn6.style.background="#fc636b";
        btn6.style.color="White"
    }

}


function selectSize(id){

    var s =document.getElementById("size1");
    var m =document.getElementById("size2");
    var l =document.getElementById("size3");
    var xl =document.getElementById("size4");
    var xxl =document.getElementById("size5");
    if(id =="size1"){
        s.style.background="#fc636b";
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
    else if(id =="size2"){
        s.style.background="white";
        s.style.color="black";
        m.style.background="#fc636b";
        m.style.color="white";
        l.style.background="white";
        l.style.color="black";
        xl.style.background="white";
        xl.style.color="black";
        xxl.style.background="white";
        xxl.style.color="black";
    }
    else if(id == "size3"){
        s.style.background="white";
        s.style.color="black";
        m.style.background="white";
        m.style.color="black";
        l.style.background="#fc636b";
        l.style.color="white";
        xl.style.background="white";
        xl.style.color="black";
        xxl.style.background="white";
        xxl.style.color="black";
    }
    else if(id=="size4"){
        s.style.background="white";
        s.style.color="black";
        m.style.background="white";
        m.style.color="black";
        l.style.background="white";
        l.style.color="black";
        xl.style.background="#fc636b";
        xl.style.color="white";
        xxl.style.background="white";
        xxl.style.color="black";
    }
   else if(id =="size5"){
        s.style.background="white";
        s.style.color="black";
        m.style.background="white";
        m.style.color="black";
        l.style.background="white";
        l.style.color="black";
        xl.style.background="white";
        xl.style.color="black";
        xxl.style.background="#fc636b";
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