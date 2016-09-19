$(document).ready(function() {
	
	/* VALIDATION FOR USER NAME TO ACCEPT ONLY CHARACTERS START */
	function onlyAlphabets(e,t) {
        try {
            if (window.event) {
                var charCode = window.event.keyCode;
            }
            else if (e) {
                var charCode = e.which;
            }
            else {
            	return true; 
            	 }
            if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                return true;
            else
                return false;
        }
        catch (err) {
            alert(err.Description);
        } 
    }
	/* VALIDATION FOR USER NAME TO ACCEPT ONLY CHARACTERS END */
	
	
	/* VALIDATION FOR PASSWORD NOT TO ACCEPT SPECIAL CHARACTERS START */
	  function blockSpecialChar(e) {
	  var k = e.keyCode;
   	  return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8   || (k >= 48 && k <= 57));
		}
	/* VALIDATION FOR PASSWORD NOT TO ACCEPT SPECIAL CHARACTERS END */
	
	
		
	/* VALIDATION FOR EMAIL ID FOR A SPECIFIC FORMAT  START*/
		function ValidateEmail(e){
			var emailId = document.getElementById("email").value;
			var fields = emailId.split(/@/);
			var x = fields[0];
			var y = fields[1];
			
			var gmail = "gmail.com";
			var yahoo = "yahoo.com";
			var email = "email.com";
			var ymail = "ymail.com";
			
			var GMAIL = "GMAIL.COM";
			var YAHOO = "YAHOO.COM";
			var EMAIL = "EMAIL.COM";
			var YMAIL = "YMAIL.COM";
			
			
		try{ 
			var val1 = y.localeCompare(gmail);
			var val2 = y.localeCompare(yahoo);
			var val3 = y.localeCompare(email);
			var val4 = y.localeCompare(ymail);
			
			var val5 = y.localeCompare(GMAIL);
			var val6 = y.localeCompare(YAHOO);
			var val7 = y.localeCompare(EMAIL);
			var val8 = y.localeCompare(YMAIL);
			
			
			var foundchar = emailId.includes("@");
		   }
		catch(err)
		
			{
			//alert("else[FALSE]");
			alert("Please enter an valid email address");
			document.getElementById("email").value="";
			return false;
			}
			 // alert(foundchar+"  SOMETHING");
			  
            if(foundchar==true){
				if(val1==0 || val2==0 || val3==0 || val4==0 || val5==0 || val6==0 || val7==0 || val8==0){
					//alert("if[TRUE]")
					return true;
				}
			else
				{
					//alert("else[FALSE]");
					alert("Please enter an valid email address");
					document.getElementById("email").value="";
					return false;
					}
			
		}
            else{
            	//alert("else[FALSE]");
				alert("Please enter an valid email address");
				document.getElementById("email").value="";
				return false;
			
		}
    
	}       
		/* VALIDATION FOR EMAIL ID FOR A SPECIFIC FORMAT  END*/
	
	
	/* VALIDATION FOR CONTACT NUMBER TO ACCEPT ONLY NUMBERS START */
	function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
	/* VALIDATION FOR CONTACT NUMBER TO ACCEPT ONLY NUMBERS END */
	
	
	
	

});