  // Form validation code will come here.
    function validate() {
      
       if( document.loginform.checkbox.value == "" ) {
            alert( "Please provide your a radio button!" );
            document.myForm.Name.focus() ;
            return false;
         }
         if( document.loginform.enroll.value == "" ) {
            alert( "Please provide your id!" );
            document.myForm.Name.focus() ;
            return false;
         }
         if( document.loginform.pass.value == "" ) {
            alert( "Please provide your password!" );
            document.myForm.Name.focus() ;
            return false;
         }
       
         return( true );
      }