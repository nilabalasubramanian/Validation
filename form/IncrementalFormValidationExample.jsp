<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Incremental Form Validation Example</title>
        <script type="text/javascript" src="zxml.js"></script>
        <script type="text/javascript" src="IncrementalFormValidation.js"></script>
    </head>
    <body>
        <h1>Sign Up!</h1>
        <p>Please fill in the following information to sign up.</p>
        <form method="post" action="Success.jsp">
            <table>
                <tr>
                    <td><label >First Name</label></td>
                    <td><input type="text" id="txtFirstName" name="txtFirstName" /></td>
                </tr>
                <tr>
                    <td><label >Last Name</label></td>
                    <td><input type="text" id="txtLastName" name="txtLastName" /></td>
                </tr>
                <tr>
                    <td><label >E-mail</label></td>
                    <td><input type="text" id="txtEmail" name="txtEmail" /><img src="error.gif" alt="Error" id="imgEmailError" style="display:none" /></td>
                </tr>
                <tr>
                    <td><label>Username</label></td>
                    <td><input type="text" id="txtUsername" name="txtUsername" /><img src="error.gif" alt="Error" id="imgUsernameError" style="display:none" /></td>
                </tr>
                <tr>
                    <td><label >Birthday</label></td>
                    <td><input type="text" id="txtBirthday" name="txtBirthday" /><img src="error.gif" alt="Error" id="imgBirthdayError" style="display:none" /> (m/d/yyyy)</td>
                </tr>
                <tr>
                    <td><label >Gender</label></td>
                    <td><select id="selGender" name="selGender"><option>Male</option><option>Female</option></select></td>
                </tr>
            </table>
            <input type="submit" id="btnSignUp" value="Sign Up!" />
        </form>
    </body>
</html>
