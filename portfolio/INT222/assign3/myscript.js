 /*************************************************************/
 /* Name :                                                    */
 /* login : int222_091                                        */
 /*************************************************************/


 /*************************************************************/
 /* Function Description                                      */
 /*                                                           */
 /*                                                           */
 /*                                                           */
 /*                                                           */
 /*************************************************************/
function startform()
{
    document.getElementById("F06D").defaultSelected = true;
}

function checkForm(form)
{
    var message = "";
    
    message += validateSurname(form.field01);
    message += validateClientID(form.field02, form.field03);
    message += validateTelephone(form.field03);
    message += validateDate(form.field04);
    message += validateSize(form.field05);
    message += validateSauce(form.field09);
    message += checkToppings();
    
    if (message.length != 0)
    {
        window.alert(message);
        return false;
    }
    
    form.field01.value = toTitleCase(form.field01.value);
    form.field13.value = 'Y';
    calculatePrice()
    
    return true;
}

function validateSurname(fld)
{
    var error = "";

    if (isEmpty(fld.value))
    {
        error = "Client Surname - Must be present\n";
    }
    else if (!isAlphabetic(fld.value))
    {
        error = "Client Surname - Must contain only alphabetic characters\n";
    }
    else if (fld.value.length < 4)
    {
        error = "Client Surname - Must have at least 4 alphabetic characters\n";
    }
    return error;
}

function validateClientID(fld, fld2)
{
    var s = fld.value;
    var num1;
    var num2;
    var error = "";    

    if (isEmpty(fld.value) || fld.value.length != 12)
    {
        error = "Client Id - All 12 positions must be present\n";
    }
    else
    {
        if (fld2.value.substr(0,3) == "416" && s.charAt(0) != 'a')
            error = "Client ID - Position 1 must be Lower case a when area code is 416\n";
        else if (fld2.value.substr(0,3) == "905" && s.charAt(0) != 'f')
            error = "Client ID - Position 1 must be Lower case f when area code is 905\n";
        else if (fld2.value.substr(0,3) == "519" && s.charAt(0) != 'H')
            error = "Client ID - Position 1 must be Upper case H when area code is 519\n";                       
        else if (fld2.value.substr(0,3) == "514" && s.charAt(0) != 'B')
            error = "Client ID - Position 1 must be Upper case B when area code is 514\n";        
        else if (s.charAt(6) != '-')
            error = "Client ID - Position 7 must have a hyphen (-)\n";
        else
        {
            num1 = s.substr(1, 5);
            num2 = s.substr(7);
            
            if (!isNumeric(num1))
                error = "Client ID - Position 2,3,4,5,6 must be numeric (digits only)\n";
            else if (!isNumeric(num2))
                error = "Client ID - Positions 8,9,10,11,12 must be numeric (digits only)\n";
            else if (sumOfDigits(num1) >= sumOfDigits(num2))
                error = "Client ID - the sum of positions 2,3,4,5,6 must be less than the sum of positions 8,9,10,11,12\n";
        }    
    }
    return error;
}

function validateTelephone(fld)
{
    var error = "";

    if (isEmpty(fld.value))
    {
        error = "Telephone No. - Must be present\n";
    }
    else if (fld.value.length != 12 || fld.value.charAt(3) != '-' || fld.value.charAt(7) != '-')
    {
        error = "Telephone No. - Must be in the following format nnn-nnn-nnnn\n";
    }
    else if (!isNumeric(fld.value.substr(4, 3)) || !isNumeric(fld.value.substr(8, 4)))
    {
        error = "Telephone No. - nnn-nnn-nnn must be numeric (digits only) \n";
    }
    else if (fld.value.substr(0, 3) != "416" && fld.value.substr(0, 3) != "905" && fld.value.substr(0, 3) != "519" && fld.value.substr(0, 3) != "514")
    {
        error = "Telephone No. - The area code must be one of the following 3 digits area codes: 416, 905, 519 or 514\n";
    }
    else if (fld.value.substr(4, 3) == "000" && fld.value.substr(8, 4) == "0000")
    {
        error = "Telephone No. - The phone number can't be all zeros\n";
    }
 
    return error;
}

function validateDate(fld)
{
    var error = "";

    if (isEmpty(fld.value))
    {
        error = "Date of Birth - Must be present\n";
    }
    else if (fld.value.length != 7 && !isAlphabetic(fld.value.substr(0, 3)) || !isNumeric(fld.value.substr(3,4)))
    {
        error = "Date of Birth - Must be in the following format dddyyyy\n";
    }
    else if (!isUppercase(fld.value.substr(0, 3)) && !isLowercase(fld.value.substr(0, 3)))
    {
        error = "Date of Birth - The three letter month dddyyyy Must be all upper or lower case\n";
    }
    else if (!validMonth(fld.value.substr(0, 3)))
    {
        error = "Date of Birth - Must be a valid three letter abbreviation for a month\n";
    }
    else if (!validYear(fld.value.substr(3)))
    {
        error = "Date of Birth - Must be at least 19 years of age\n";
    }

 
    return error;
}

function validateSize(fld)
{
    var error = "";
    
    if (fld.selectedIndex == -1 || fld.selectedIndex == 0)
        error = "Pizza Size - Must be selected\n";
        
    return error;
}

function validateSauce(fld)
{
    var error = "";
    var check = false;
    var s;
    
    for (var i = 1; i <= 3; i++)
    {
        s = document.getElementById("sauce" + i);
        
        if (s.checked)
            check = true;
    }
    
    if (!check)
        error = "Sauce - Must be selected\n";
        
    return error;
}
function checkToppings()
{
    var s;
    var d;
    var valid = true;
    var error = "";

    for (var i = 1; i <= 6; i++)
    {
        s = document.getElementById("ms" + i);
        d = document.getElementById("md" + i);
        
        if (s.checked && d.checked)
        {
            valid = false;
            s.checked = false;
            d.checked = false;
        }
        
        s = document.getElementById("vs" + i);
        d = document.getElementById("vd" + i);
        
        if (s.checked && d.checked)
        {
            valid = false;
            s.checked = false;
            d.checked = false;
        }      
    }
    
    if (!valid)
    {
        calculatePrice();
        error = "Toppings - Error, please fill out again!";
    }
    
    return error;
}

function checkPortions(type, sd)
{
    var s;
    var d;
    
    for (var i = 1; i <= 6; i++)
    {
        s = document.getElementById(type + "s" + i);
        d = document.getElementById(type + "d" + i);
        
        if (sd == 's')
            checkSD(s, d);
        else if (sd == 'd')
            checkSD(d, s);
    }
    calculatePrice();
}

function checkSD(fld, fld2)
{
    if (fld.checked)
        fld2.checked = false;
}

function calculatePrice()
{
    var price = 0;
    var s;
    var d;
    
    if (document.pizza.field05.selectedIndex == 1)
        price += 13.55;
    else if (document.pizza.field05.selectedIndex == 2)
        price += 17.25;
    else if (document.pizza.field05.selectedIndex == 3)
        price += 24.00;
    
    for (var i = 1; i <= 6; i++)
    {
        s = document.getElementById("ms" + i);
        d = document.getElementById("md" + i);

        if (s.checked)
            price += 1.47;
        if (d.checked)
            price += 1.93;
             
        s = document.getElementById("vs" + i);
        d = document.getElementById("vd" + i);
        
        if (s.checked)
            price += 1.47;
        if (d.checked)
            price += 1.93;
    }
    
    document.pizza.field07.value = price.toFixed(2);
}

function toTitleCase(str)
{
    str = str.toLowerCase();
    str = str.charAt(0).toUpperCase() + str.substr(1);
    
    return str;
}

function isEmpty(str) 
{
   if ((str.length == 0) || (str == null)) 
   {
        return true;
   }
   else 
   {
        return false;
   }
}	
    
function isAlphabetic(str)
{
    var s = str.toLowerCase();
    var length = str.length;
    
	for (var i = 0 ;i < length; i++)
	{
	    if (s.charAt(i) < 'a' || str.charAt(i) > 'z')
	        return false;
	}
    return true;	     
}

function isNumeric(str)
{
    var length = str.length;
    
	for (var i = 0 ;i < length; i++)
	{
	    if (str.charAt(i) < '0' || str.charAt(i) > '9')
	        return false;
	}
    return true;	     
}

function sumOfDigits(str)
{
    var sum = 0 ;
	for (var i = 0; i < str.length; i++)
	{
		sum += (str.charAt(i) * 1);
	}
	return sum;
}

function isUppercase(str)
{
    var length = str.length;
    
    for (var i = 0 ;i < length; i++)
	{
	    if (!(str.charAt(i) >= 'A' && str.charAt(i) <= 'Z'))
	        return false;
	}
    return true;
}

function isLowercase(str)
{
    var length = str.length;
    
    for (var i = 0 ;i < length; i++)
	{
	    if (!(str.charAt(i) >= 'a' && str.charAt(i) <= 'z'))
	        return false;
	}
    return true;
}

function validMonth(str)
{
    var s = str.toLowerCase();
    if (s == "jan" ||
        s == "feb" ||
        s == "mar" ||
        s == "apr" ||
        s == "may" ||
        s == "jun" ||
        s == "jul" ||
        s == "aug" ||
        s == "sep" ||    
        s == "oct" ||
        s == "nov" ||
        s == "dec")
        return true;
    else 
        return false;       
}

function validYear(str)
{
    var d = new Date();
    var maxYear = d.getFullYear() - 19;   
    
    if (str <= maxYear)
        return true;
    return false; 
}