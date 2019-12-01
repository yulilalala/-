$(document).ready(function () {
    $('.menu-list li').hover(function () {
        $(this).addClass('on')
        $(this).children('a').css('color', '#000')
        // $(this).children('div').css('display','block')

    }, function () {
        $(this).removeClass('on')
        $(this).children('a').css('color', '#fff')
        // $(this).children('div').css('display','none')
    })
    $('.menu-list>li').hover(function () {
        $(this).children('div').stop().fadeToggle();
    })
    $('.pics-box').hover(function () {
        $(this).css('box-shadow', '0 0 23px 0 rgb(60, 174, 250)')
    }, function () {
        $(this).css('box-shadow', '')
    })
    //console.log();

    var fsizes1 = ['12px', '14px'];
    var a = 0;
    setInterval(changeFontsize1, 500);
    function changeFontsize1() {
        //console.log(fsizes[a]);
        $(".glyphicon-fire").css("font-size", fsizes1[a]);
        if (a == fsizes1.length - 1) {
            a = 0;
        } else {
            a++;
        }
    }

})
