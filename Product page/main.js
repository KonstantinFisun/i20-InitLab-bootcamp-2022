function hoverOnFirst(){
    document.querySelectorAll('.product__view-main')[0].style.backgroundImage = "url('Photo/1.png')"
}

function hoverOnSecond(){
    document.querySelectorAll('.product__view-main')[0].style.backgroundImage = "url('Photo/2.png')"
}

function hoverOnThree(){
    document.querySelectorAll('.product__view-main')[0].style.backgroundImage = "url('Photo/3.png')"
}

function hoverBack(){
    document.querySelectorAll('.product__view-main')[0].style.backgroundImage = "url('Photo/Main.png')"
}

$(document).ready(function() {
    $("body").on('focusout', '.product__counter-value', function(){
        if($(this).val() < 1){
            $(this).val('1');
        }
        if($(this).val() > 100){
            $(this).val('100');
        }
        if(!Number.isInteger($(this).val())){
            $(this).val(Math.round($(this).val()));
        }
    });
    $('.minus').click(function () {
        var $input = $(this).parent().find('input');
        var count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        $input.val(count);
        $input.change();
    });
    $('.plus').click(function () {
        var $input = $(this).parent().find('input');
        var count = parseInt($input.val()) + 1;
        count = count > 100 ? 100 : count;
        $input.val(count);
    });
    
  
});	
