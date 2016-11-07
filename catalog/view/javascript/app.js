$(document).ready(function () {

    $('.menu-icon').click(function () {
        if ($('#navigator').css("left") == "-250px") {
            $('#navigator').animate({left: '0px'}, 350);
            $('.menu-icon').animate({left: '250px'}, 350);
            $('.menu-text').animate({left: '300px'}, 350).empty().text("Close");
        }
        else {
            $('#navigator').animate({left: '-250px'}, 350);
            $(this).animate({left: '0px'}, 350);
            $('.menu-text').animate({left: '50px'}, 350).empty().text("Menu");

        }
    });
    $('.menu-icon').click(function () {
        $(this).toggleClass("on");
    });

    $('#login').on('click', function () {
        $('#myModal').show();
        $('.menu-icon').trigger('click');
    });

    var modal = document.getElementById('myModal');

// When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

//    on login submit
    $('#login-button').on('click',function(e){
        e.preventDefault();
        var email = $('#login-form input[name=\'email\']').val();
        var password = $('#login-form input[name=\'password\']').val();

        $.ajax({
            url: 'index.php?route=account/login/loginValidate',
            type: 'post',
            data: 'email=' + email + '&password=' + password,
            dataType: 'json',
            success: function(json) {
                $('.error-login').remove();
                if (json['redirect']) {
                    location = json['redirect'];
                }

                if(json['warning']){
                    $('#login-form h3').after('<span class="error-login">'+json['warning']+'</span>');
                }

                if (json['success']) {
                    $('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    })


});

var min_w = 300;
var vid_w_orig;
var vid_h_orig;
$(function () {

    vid_w_orig = parseInt($('video').attr('width'));
    vid_h_orig = parseInt($('video').attr('height'));

    $(window).resize(function () {
        fitVideo();
    });
    $(window).trigger('resize');

});

function fitVideo() {

    $('#video-viewport').width($('.fullsize-video-bg').width());
    $('#video-viewport').height($('.fullsize-video-bg').height());

    var scale_h = $('.fullsize-video-bg').width() / vid_w_orig;
    var scale_v = $('.fullsize-video-bg').height() / vid_h_orig;
    var scale = scale_h > scale_v ? scale_h : scale_v;

    if (scale * vid_w_orig < min_w) {
        scale = min_w / vid_w_orig;
    }
    ;

    $('video').width(scale * vid_w_orig);
    $('video').height(scale * vid_h_orig);

    $('#video-viewport').scrollLeft(($('video').width() - $('.fullsize-video-bg').width()) / 2);
    $('#video-viewport').scrollTop(($('video').height() - $('.fullsize-video-bg').height()) / 2);

}