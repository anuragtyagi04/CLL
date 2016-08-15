/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $('.menu a').hover(function () {
        $(this).stop().animate({
            opacity: 1
        }, 200);
    }, function () {
        $(this).stop().animate({
            opacity: 0.3
        }, 200);
    });
});