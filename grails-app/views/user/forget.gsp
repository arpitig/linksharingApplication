<%--
  Created by IntelliJ IDEA.
  User: arpit-singhal
  Date: 10/9/13
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="linksharing"/>
  <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="http://jquery.bassistance.de/validate/jquery.validate.js"></script>
    <script type="text/javascript">
        /**
         * Basic jQuery Validation Form Demo Code
         * Copyright Sam Deering 2012
         * Licence: http://www.jquery4u.com/license/
         */
        (function($,W,D)
        {
            var JQUERY4U = {};

            JQUERY4U.UTIL =
            {
                setupFormValidation: function()
                {
                    //form validation rules
                    $("#forgetform").validate({
                        rules: {
                            emailforget: {
                                required: true,
                                email:true
                            }
                        },
                        messages: {
                            emailforget:{
                                required : "Please enter your Email" ,
                                email    : "Please Enter correct Email ID"
                            }

                        },
                        submitHandler: function(form) {
                            form.submit();
                        }
                    });
                }
            }

            //when the dom has loaded setup form validation rules
            $(D).ready(function($) {
                JQUERY4U.UTIL.setupFormValidation();
            });

        })(jQuery, window, document);
    </script>
</head>
<body>
    <H1>Forget Password   <g:link controller="authentication" action="login">Log in to existing Account</g:link></H1>

    <div>
      <g:form name="forgetform" controller="user" action="forgetsend">
      <table>
          <tr>
              <td>Enter Your Email ID:</td>
              <td><g:textField name="emailforget"/></td>
              <td><g:submitButton name="send" value="Send" /></td>
          </tr>
      </table>
      </g:form>
    </div>
</body>
</html>