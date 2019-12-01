$(document).ready(function () {
    
    $('#info-left>ul>li').click(function () {
        $(this).addClass('active5').siblings().removeClass('active5')
        $(this).children('i').css('display', 'block')
        $(this).siblings().children('i').css('display', 'none')
        var i = $(this).index()
        // $('#info-right').find('.tab-pane:eq(i)').addClass('active')
        // $('#info-right .tab-pane:eq($(this).index)').addClass('active')
        // $('#info-right').find('.tab-pane:eq(i)').siblings().removeClass('active')
        // $(this).parents('#info-left').siblings('#info-right').find('.tab-pane:eq(i)').addClass('active')
        // $(this).parents('#info-left').siblings('#info-right').find('.tab-pane:eq(i)').siblings().removeClass('active')
        // $(this).parent('ul').siblings('#info-right').children().children('.tab-pane')[i].addClass('active')
        // $(this).parent('ul').siblings('#info-right').children().children('.tab-pane')[i].siblings().removeClass('active')
        //$('#info-right').find('.tab-pane:eq(1)').css('display','block')
        //$('#info-right').find('.tab-pane').siblings().css('display','none')
        //console.log(it)

        // $('#info-right').find('.tab-pane')[0]
        // $('#info-right').find('.tab-pane:eq(0)')
    })
    $('#info').click(function () {
        $('#info-box').siblings().removeClass('active')
        $('#info-box').addClass('active')

    })
    
    $('#modify').click(function () {
        $('#modify-box').siblings().removeClass('active')
        $('#modify-box').addClass('active')

    })
    $('#collection').click(function () {
        // console.log($('#collection-box').siblings('.active'));
        $('#collection-box').siblings('.active').removeClass('active')
        $('#collection-box').addClass('active')

    })
    // $('#modal-btn').click(function(){
    //     alert('点击了')
    // })

})