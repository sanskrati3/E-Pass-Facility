 function validate() {
      
       if( document.reqform.enroll.value == "" ) {
            alert( "Please provide your enrollment no" );
            document.myForm.Name.focus() ;
            return false;
         }
         if( document.reqform.a_date.value == "" ) {
            alert( "Please select a date from the calender!!" );
            document.myForm.Name.focus() ;
            return false;
         }
         if( document.reqform.time.value == "" ) {
            alert( "Please select a time" );
            document.myForm.Name.focus() ;
            return false;
         }
        if( document.reqform.reason.value == "" ) {
            alert( "Please provide a reason" );
            document.myForm.Name.focus() ;
            return false;
         }
       
         return( true );
      }


