$(function(){
    $("#post_cep").focusout(function(){
        $.ajax({
            url: 'https://api.postmon.com.br/v1/cep/'+$(this).val(),
            dataType: 'json',
            success: function(answer){
                $("#post_street").val(answer.logradouro);
                $("#post_city").val(answer.cidade);
                $("#post_state").val(answer.estado);
                $("#post_number").focus();
            }
        });
    });
});
