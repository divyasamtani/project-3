$(document).ready(function(){
  console.log('auth ready')
  $('#logoutButton').hide();


  $.auth.configure({
    apiUrl: 'http://localhost:3000'
  });

  var SignupClick = function(){
    var params = {
      email: $('#createEmail').val(),
      password: $('#createPassword').val(),
      password_confirmation: $('#confirmPassword').val()
    }

    $.auth.emailSignUp(params).then(function(user){
      // User succesfuly registered an account
      window.location = "http://localhost:3000/user/lists"
    }).fail(function(resp) {
      alert(resp.reason);
    });
  }

  $('#registerButton').click(function(e){
    e.preventDefault();
    SignupClick();
  })

  var LoginClick = function(){
    var params = {
      email: $('#email').val(),
      password: $('#password').val()
    }

    $.auth.emailSignIn(params).then(function(resp){
      alert('Logged In!');
      $('#logoutButton').show();
      $('#sign_inButton').hide();
    }).fail(function(resp) {
      console.log(resp)
    })
  }

  $('#loginButton').click(function(e){
    e.preventDefault();
    LoginClick();
  })


  var LogoutClick = function(e){
    $.auth.signOut().then(function(user){
      window.location.replace("http://localhost:3000/");
    }).fail(function(resp){
      console.log(resp)
    })
  }

  $('#logoutButton').click(function(e){
    e.preventDefault();
    LogoutClick();
  })

});