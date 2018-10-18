$(function(){
    $('#sear').on('change', function(e){
        e.preventDefault();
        var search = $(this).val();
        console.log(search);
    });
});
