$('.submenu__item').find('a').on('focusin', function(e) {
    var $target = $(this);
    $target.closest('.submenu').attr('aria-expanded', 'true');
});

$('.submenu__item').find('a').on('focusout', function(e) {
    var $target = $(this);
    $target.closest('.submenu').attr('aria-expanded', 'false');
});