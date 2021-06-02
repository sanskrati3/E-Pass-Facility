

/*function getDate(){
   var todaydate = new Date();
   var day = todaydate.getDate();
   var month = todaydate.getMonth() + 1;
   var year = todaydate.getFullYear();
   var datestring = day + "/" + month + "/" + year;
   document.getElementById("start").value = datestring;
  } 
getDate(); 
*/
var date = new Date();
document.getElementById("start").value = (date.getMonth() + 1) + '/' + date.getDate() + '/' + date.getFullYear();