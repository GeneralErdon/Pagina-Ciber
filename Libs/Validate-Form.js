// $(document).ready(function({


    
// }));

$("#formulario").validate({
    rules:{
            user: {
            required: true,
            minlength: 3,
            maxlength: 20,
            Number: false
        },
        email: {
            required: true,
            email: true
        },
        password: {
            required: true,
            minlength: 8

        },
        password2:{
            required: true,
            minlength: 8
        },
        date:{
            required: true
        }
    }
});

$("#form_InicioSesion").validate({
    rules:{
        user: {
            required: true

        },
        password: {
            required: true
        }
    }
})