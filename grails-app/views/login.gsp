<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="linksharing"/>
    <title>Login Page of Link Sharing Application.</title>
    <style>


    </style>
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
                    $("#homepage").validate({
                        rules: {
                            emailig: {
                                required: true,
                                email:true
                            },

                            passwordig: {
                                required: true
                            }

                        },
                        messages: {
                            emailig: "Please enter your Email",
                            passwordig: "Please enter your password"

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
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:form name="homepage" controller="authentication" action="loginhandler">

    <div style="background-color: #E1F2B6">


        <table style="width: 100%">
            <td style="width: 50%;"></td>
            <td>
                <table>
                    <tr>
                        <td>Enter Email</td>
                        <td>Password</td>
                    </tr>
                    <tr>
                        <td><g:textField name="emailig" /></td>
                        <td><g:passwordField name="passwordig" /></td>
                    </tr>
                    <tr>
                        <td>

                            <g:link action="register"  controller="user" >Sign Up</g:link>
                            <br>
                            <g:link controller="user" action="forget">Forget Password</g:link>
                        </td>
                        <td> <g:submitButton name="login" value="Login" /> </td>
                    </tr>

                </table>
            </td>
        </table>
    </div>

</g:form>
</body>
</html>