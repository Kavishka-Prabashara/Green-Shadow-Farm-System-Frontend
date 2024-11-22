/*
$('#signupForm').submit(function (e) {
    e.preventDefault();
    const data = {
        email: $('#email').val(),
        firstName: $('#firstName').val(),
        lastName: $('#lastName').val(),
        birthDate: $('#birthDate').val(),
        nic: $('#nic').val(),
        password: $('#password').val()
    };

    $.ajax({
        url: '/api/register',
        method: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(data),
        success: function (response) {
            alert(response.message);
        },
        error: function (xhr) {
            alert(xhr.responseJSON.error);
        }
    });
});
*/
