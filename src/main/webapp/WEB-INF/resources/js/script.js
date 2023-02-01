/**
 * 
 */
 $("#formValidation").validate({
    rules:{
        fullName:{
            minlength: 2
        },
           email:{
            email:true,
            regex :/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/
        },
         password :{
            minlength:8
        },pNo :{
            maxlength:14
        },
    },
    messages:{
       fullName:{
            required : "Please Enter Your First Name",
            minlength:"Name at least 2 chareacters"
        },
        email:{
            required:"Please Enter Your Email Address",
            regax: "Please Enter Valid Number"

        },password :{
            required :"Please Enter Password"
        },pNo:{
            required : "Please Enter Phone Number"
        }
        ,country:{
            required : "Please select your country"
        },address:{
	 required : "Please Enter your Address"
	
}
           
        },
    submitHandler: function(form) {
      form.submit();
    },

   });
