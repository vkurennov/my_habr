$(document).ready(function() {
    // alert('Страница загружена');
    $('a.edit_category_link').click(function() {
        $('form.edit_category').hide();
        $('.edit_category_link.cancel').html('Edit');
        $('.category').show();

        var category_id = $(this).data('categoryId');
        var form = $('#edit_category_' + category_id);
        var title = $('#category_' + category_id);

        if($(this).hasClass('cancel')) {
            $(this).html('Edit');
            $(this).removeClass('cancel');

        } else {
            $(this).html('Cancel')
            $(this).addClass('cancel')
        }

        form.toggle();
        title.toggle();
    });
});