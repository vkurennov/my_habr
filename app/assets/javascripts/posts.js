$(document).ready(function() {
    $('form.new_post').submit(function() {
        var post_title = $(this).find('#post_title');
        console.log(post_title);
        var title = post_title.val();
        if (title == '' || title == undefined) {
            post_title.addClass('field_with_errors');
            alert('Введите название поста');
            return false;
        }
    })
});

