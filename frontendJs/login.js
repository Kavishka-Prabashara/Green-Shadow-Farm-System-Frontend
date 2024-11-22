/*
$('#loginForm').submit(function (e) {
    e.preventDefault();
    const email = $('#email').val();
    const password = $('#password').val();

    $.ajax({
        url: '/api/login',
        method: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ email, password }),
        success: function (response) {
            alert(response.message);
        },
        error: function (xhr) {
            alert(xhr.responseJSON.error);
        }
    });
});
*/
