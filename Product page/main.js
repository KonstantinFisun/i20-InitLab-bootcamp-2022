
$(document).ready(function() {
    
    //Реализация зума
    
    //Массив блоков с боковыми картинками
    let imgsItems = document.querySelectorAll('.product__view-item img')
    let mainImg = document.querySelector('.product__view-main')
    
    //Цикл по массиву
    imgsItems.forEach((item) =>{
        //Слушатель на наведение картинка
        item.addEventListener('mouseover', function(){
            let path = item.getAttribute('src')
            mainImg.style.backgroundImage = `url(${path})`
        })
        //Слушатель на уход с картинки
        item.addEventListener('mouseout', function() {
            mainImg.style.backgroundImage = `url('Photo/Main.png')` 
        })
    })
    
    
    
    
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


