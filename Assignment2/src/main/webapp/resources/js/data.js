// global variables
let form = document.forms['studentinfo'];
console.log(form);
let slct, opts;
var val;

// gender select opts
    slct = form.Gender;     
    opts = form.Gender.options;
    // console.log(slct + ", " + opts);

    val = document.getElementById("Gender").value;
    console.log("Value from DB: " + val);

    // dynamic selection impl
    opts[0].selected = true;
    for(i=1; i<=2; i++){
        if(val==opts[i].value){
            opts[i].selected = true;
            console.log("Selected Gender = " + opts[i].value);
        }
    }

// programme select opts
    slct = form.Programme;     
    opts = form.Programme.options;
    // console.log(slct + ", " + opts);

    val = document.getElementById("Programme").value;
    console.log("Value from DB: " + val);

    // dynamic selection impl
    opts[0].selected = true;
    for(i=1; i<=9; i++){
        if(val==opts[i].value){
            opts[i].selected = true;
            console.log("Selected Programme = " + opts[i].value);
        }
    }

// intake select opts
    slct = form.Intake;
    opts = form.Intake.options;
    // console.log(slct + ", " + opts);
    
    val = document.getElementById("Intake").value;
    console.log("Value from DB: " + val);

    // dynamic selection impl
    opts[0].selected = true;
    for(i=1; i<=6; i++){
        if(val==opts[i].value){
            opts[i].selected = true;
            console.log("Selected Intake = " + opts[i].value);
        }
    }

// register time opts
    slct = form.Regtime;
    opts = form.Regtime.options;
    // console.log(slct + ", " + opts);
    
    val = document.getElementById("Regtime").value;
    console.log("Value from DB: " + val);

    // dynamic selection impl
    opts[0].selected = true;
    for(i=1; i<=6; i++){
        if(val==opts[i].value){
            opts[i].selected = true;
            console.log("Selected Regtime = " + opts[i].value);
        }
    }

// nationality opts
    slct = form.Nationality;     
    opts = form.Nationality.options;
    // console.log(slct + ", " + opts);

    val = document.getElementById("Nationality").value;
    console.log("Value from DB: " + val);

    // dynamic selection impl
    opts[0].selected = true;
    for(i=1; i<=6; i++){
        if(val==opts[i].value){
            opts[i].selected = true;
            console.log("Selected Nationality = " + opts[i].value);
        }
    }