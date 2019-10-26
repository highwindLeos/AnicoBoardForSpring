/**
 *  Register [Create By Leos - 2019.19.16]
 */
$(document).ready(function(){
	// hide alert Message Box
	$("#alert-success").hide();
    $("#alert-danger").hide();
	
	// Regist Member
    $('#registerBtn').on('click', function() {
      	
      	var eMail = $('#email').val();
  		var passWord = $('#password1').val();
  		var rePassWord = $('#password2').val();
  		var userName = $('#userName').val();
  
  		 console.log(passWord.length);
  		if (false) {
  			Swal.fire({
    			  type: 'error',
    			  title: '패스워드는 8 ~ 13자 입니다.',
    			  text: '',
    			  footer: ''
    			})
    			return;
  		}	
  		
  		if (passWord !== rePassWord) {
  			Swal.fire({
  			  type: 'error',
  			  title: '패스워드가 틀립니다.',
  			  text: '',
  			  footer: ''
  			})
  			return;
  		}
  		
  		var url = "<c:url value='/member/regist' />";
  		var member = {
 				eMail : eMail ,
 				passWord : passWord ,
 				rePassWord : rePassWord ,
 				userName : userName
  		};
  		
  		console.log(JSON.stringify(member));
  		
  		$.ajax({
  			  url : url,
  			  type : 'POST',
  			  /* dataType : 'json', */
  			  data : member,
  			  success : function(data){
  				  console.log(JSON.stringify(data));
  				  console.log('성공');
  			  },
  			  error : function (jqXHR, status, errorThrown) {
  				  console.log('ERROR !!! ' + status + ' : ' + errorThrown)
  			  }
 			});
    });

	// Password Validation
    $("input[type='password']").keyup(function(event) {
    	
        let password1 = $("#password1").val();
        let password2 = $("#password2").val();
                    
        if(password1 != "" || password2 != "")
        {
            if(password1 == password2)
            {
                $("#alert-success").show();
                $("#alert-danger").hide();
                $("#submit").removeAttr("disabled");
            } else {
                $("#alert-success").hide();
                $("#alert-danger").show();
                $("#submit").attr("disabled", "disabled");
            }    
        }
    });
});