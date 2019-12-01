$(document).ready(function(){

    // var t=$('.page-con .top span');
    // console.log(t)
    var fsizes2 = ['30px', '40px'];
    var a = 0;
    setInterval(changeFontsize2, 500);
    function changeFontsize2() {
        //console.log(fsizes[a]);
        $(".page-con .top span").css("font-size", fsizes2[a]);
        if (a == fsizes2.length - 1) {
            a = 0;
        } else {
            a++;
        }
    }

  
        
   })



