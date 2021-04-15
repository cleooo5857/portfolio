function FolioMove(top){
    const offset = $("#div" + top).offset();
    $('html, body').animate({scrollTop : offset.top}, 400);
}

let num = 0;
function topbottom(){
$(".slides-item").eq(num).fadeOut();

if(num == 3){
num = 0
}else{
num++;
console.log(num);
}
$('.slides-item').eq(num).fadeIn();
}
const Timer = setInterval(topbottom,3000);

let scrollTop;
        
        // delay 초 후에 active 시킨다.
        function JhsAppear__setTimeActive($node) {
            let delay = $node.attr('data-jhs-appear-delay');
            delay = delay ? parseInt(delay) : 110;
            
            setTimeout(function() {
                if ( $node.hasClass('jhs-appear-found') ) {
                    $node.addClass('jhs-appear-active');
                }
                else {
                    $node.removeClass('jhs-appear-active');
                }
            }, delay);
        }
        
        // jhs appear 엘리먼트 발견 콜백
        function JhsAppear__onFound($node) {
            
        }
        
        // jhs appear 엘리먼트들 초기화
        function JhsAppear__init() {
            let $jhsAppearEl = $('.jhs-appear');
            
            setInterval(function() {
                scrollTop = $(window).scrollTop();
                const scrollHeight = $('body').prop('scrollHeight');
                const windowHeight = $(window).height();
                
                $jhsAppearEl.each(function(index, node) {
                    const $node = $(node);
                    const jhsAppearTriggerElSelector = $node.attr('data-jhs-appear-trigger-el');
                    const $jhsAppearTriggerEl = jhsAppearTriggerElSelector ? $(jhsAppearTriggerElSelector) : $node;
                    
                    let jhsAppearTriggerElAddiTop = $node.attr('data-jhs-appear-trigger-el-addi-top');
                    
                    jhsAppearTriggerElAddiTop = jhsAppearTriggerElAddiTop ? jhsAppearTriggerElAddiTop : '0';
                    
                    if ( jhsAppearTriggerElAddiTop.indexOf("% of window height") !== false ) {
                        jhsAppearTriggerElAddiTop = jhsAppearTriggerElAddiTop.split('% of window height');
                        jhsAppearTriggerElAddiTop = jhsAppearTriggerElAddiTop[0];
                        jhsAppearTriggerElAddiTop = windowHeight * parseInt(jhsAppearTriggerElAddiTop) / 100;
                    }
                    else {
                        jhsAppearTriggerElAddiTop = parseInt(jhsAppearTriggerElAddiTop);
                    }
                    
                    const top = $jhsAppearTriggerEl.offset().top;
                    
                    const condi = scrollTop + windowHeight > top + jhsAppearTriggerElAddiTop;
                    
                    if ( $node.hasClass('jhs-appear-active-only-visible') ) {
                        condi = condi && scrollTop + windowHeight < top + jhsAppearTriggerElAddiTop + windowHeight;
                    }
                    
                    if ( condi ) {
                        if ( $node.hasClass('jhs-appear-found') === false ) {
                            JhsAppear__onFound($node);
                            
                            $node.addClass('jhs-appear-found');
                            JhsAppear__setTimeActive($node);
                        }
                    }
                    else {
                        if ( $node.hasClass('jhs-appear-found') && $node.hasClass('jhs-appear-irreversible') === false ) {
                            $node.removeClass('jhs-appear-found');
                            $node.removeClass('jhs-appear-active');
                        }
                    }
                });
            }, 400);
        }
        
        $(function() {
            JhsAppear__init();
        });