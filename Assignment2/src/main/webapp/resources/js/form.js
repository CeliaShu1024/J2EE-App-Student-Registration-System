let form = document.forms['questionnaire'];
console.log(form);
let radios;
var val, tmp;

// Q1 dynamic selection
    radios = form.Q1;

    val = document.getElementById("Q1").value;
    console.log("Q1 value: " + val);

    // dynamic selection
    // initialize
    for(i=0; i<radios.length; i++){
        radios[i].checked = false;
    }
    tmp = 0;
    console.log("Q1 initialized!")
    for(i=0; i<radios.length; i++){
        if(val==radios[i].value){
            radios[i].checked = true;
            console.log("Option " +val+ " is checked")
            tmp = tmp+1;
        }
    }
    if(tmp==0){
        console.log("Q1 Option not found!");
    }

// Q2 dynamic selection
    radios = form.Q2;

    val = document.getElementById("Q2").value;
    console.log("Q2 value: " + val);

    // dynamic selection
    // initialize
    for(i=0; i<radios.length; i++){
        radios[i].checked = false;
    }
    tmp = 0;
    console.log("Q2 initialized!")
    for(i=0; i<radios.length; i++){
        if(val==radios[i].value){
            radios[i].checked = true;
            console.log("Option " +val+ " is checked")
            tmp = tmp+1;
        }
    }
    if(tmp==0){
        console.log("Q2 Option not found!");
    }

// Q3 dynamic selection
    radios = form.Q3;
    
    val = document.getElementById("Q3").value;
    console.log("Q3 value: " + val);

    // dynamic selection
    // initialize
    for(i=0; i<radios.length; i++){
        radios[i].checked = false;
    }
    tmp = 0;
    console.log("Q3 initialized!")
    for(i=0; i<radios.length; i++){
        if(val==radios[i].value){
            radios[i].checked = true;
            console.log("Option " +val+ " is checked")
            tmp = tmp+1;
        }
    }
    if(tmp==0){
        console.log("Q3 Option not found!");
    }