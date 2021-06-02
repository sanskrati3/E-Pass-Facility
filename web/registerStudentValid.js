
	function validateStudent() { 
            var phoneno = /^\d{10}$/;
		var name = document.forms["RegForm"]["name"]; 
		var email = document.forms["RegForm"]["email"]; 
		var password = document.forms["RegForm"]["pass"]; 
		var clg = document.forms["RegForm"]["clg"]; 
		var phone = document.forms["RegForm"]["phn"]; 
		var enroll = document.forms["RegForm"]["enroll"]; 
                var branch = document.forms["RegForm"]["branch"];

		if (name.value == "") { 
			alert("Please enter your name."); 
			name.focus(); 
			return false; 
                        }
		

		if (email.value == "") { 
			alert( 
			"Please enter a valid e-mail address."); 
			email.focus(); 
			return false; 
		} 
	

		if (password.value == "") { 
			alert("Please enter your password"); 
			password.focus(); 
			return false; 
		} 
                if (clg.value == "") { 
			alert("Please enter your clg name."); 
			name.focus(); 
			return false; 
		} 
		
 
		if (phone.value == "") { 
			alert( 
			"Please enter a valid phone number."); 
			email.focus(); 
			return false; 
		} 
               
            
	
		if (enroll.value == "") { 
			alert("Please enter your id"); 
			password.focus(); 
			return false; 
		} 

		if (branch.selectedIndex < 1) { 
			alert("Please select your branch."); 
			branch.focus(); 
			return false; 
		} 

		return true; 
                
    }      



