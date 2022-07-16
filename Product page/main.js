//Реализация зума
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
    //Обработка счетчика товара
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
    
    //Обработка уменьшения
    $('.minus').click(function () {
        let $input = $(this).parent().find('input');
        let count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        $input.val(count);
        $input.change();
    });
    
    //Обработка добавления
    $('.plus').click(function () {
        let $input = $(this).parent().find('input');
        let count = parseInt($input.val()) + 1;
        count = count > 100 ? 100 : count;
        $input.val(count);
    });
    
    //Уведомление
    $('.product__button.button-blue').on('click', function () {
    let count = $(".product__counter-value").val();
    $.toast({ 
        text: `В <a href="#">корзину</a> добавлено ${count} товаров!`,
        hideAfter: false,
        icon: 'success',
        position:'bottom-right',
        hideAfter: 3000,
    })
    });
    
});	


