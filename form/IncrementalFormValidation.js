
//function to validate fields
function validateField(oEvent) {
    oEvent = oEvent;
    var txtField = oEvent.target;
    var oXHR = new XMLHttpRequest();
    oXHR.open("get", "ValidateForm.jsp?" + txtField.name + "=" +txtField.value, true);
	
	oXHR.send();
    oXHR.onreadystatechange = function () {
        if (oXHR.readyState == 4) {
            if (oXHR.status == 200) {
                var arrInfo = oXHR.responseText.split("||");
                var imgError = document.getElementById("img" + txtField.id.substring(3) + "Error");
                var btnSignUp = document.getElementById("btnSignUp");
                
                if (!eval(arrInfo[0])) {
                    imgError.title = arrInfo[1];
                    imgError.style.display = "";
                    txtField.valid = false;                    
                } else {
					imgError.title = arrInfo[0];
                    imgError.style.display = "none";
                    txtField.valid = true;
                }
                
                btnSignUp.disabled = !isFormValid();
            } else {
                alert("An error occurred while trying to contact the server.");
            }
        }
    };
    
};

function isFormValid() {
    var frmMain = document.forms[0];
    var blnValid = true;

    for (var i=0; i < frmMain.elements.length; i++) {        
        if (typeof frmMain.elements[i].valid == "boolean") {
            blnValid = blnValid && frmMain.elements[i].valid;            
        }
    }
    
    return blnValid;
}

//if Ajax is enabled, disable the submit button and assign event handlers
window.onload = function () {
    
        var btnSignUp = document.getElementById("btnSignUp");        
        var txtUsername = document.getElementById("txtUsername");
        var txtBirthday = document.getElementById("txtBirthday");
        var txtEmail = document.getElementById("txtEmail");

        btnSignUp.disabled = true;
        txtUsername.onchange = validateField;
        txtBirthday.onchange = validateField;
        txtEmail.onchange = validateField;
        txtUsername.valid = false;
        txtBirthday.valid = false;
        txtEmail.valid = false;
        
    
};