//Wizard Init
var form = $("#treatmentform");

//form.validate({
//    errorPlacement: function errorPlacement(error, element) { element.before(error); },
//    rules: {
//        confirm: {
//            equalTo: "#password"
//        }
//    }
//});

$("#wizard").steps({
    headerTag: "h3",
    bodyTag: "section",
    transitionEffect: "slideLeft",
    titleTemplate: '#title#'
    ,autoFocus: true
    
    ,onStepChanging: function (event, currentIndex, newIndex)
    {
        
        
        //liat all the data types
        
        var _facility=$('#facility').val();
var _ccc_number=$('#ccc_number').val();
var _Date_of_Birth=$('#Date_of_Birth').val();
var _Sex=$('#Sex').val();
var _Population_Type=$('#Population_Type').val();
var _Date_Initiated_On_ART=$('#Date_Initiated_On_ART').val();
var _Current_Regimen=$('#Current_Regimen').val();
var _Last_Clinical_Visit_Date=$('#Last_Clinical_Visit_Date').val();
var _Screened_For_TB=$('#Screened_For_TB').val();
var _Days_of_Dispense=$('#Days_of_Dispense').val();
var _Months_of_Dispense=$('#Months_of_Dispense').val();
var _Next_appointment_Date=$('#Next_appointment_Date').val();
var _Monthly_Patient_Status=$('#Monthly_Patient_Status').val();
var _Started_on_IPT=$('#Started_on_IPT').val();
var _Date_Started_on_IPT=$('#Date_Started_on_IPT').val();
var _IPT_Outcome=$('#IPT_Outcome').val();
var _Date_of_IPT_Outcome=$('#Date_of_IPT_Outcome').val();
var _Reason_Not_Completed=$('#Reason_Not_Completed').val();
var _First_Viral_Load_Date=$('#First_Viral_Load_Date').val();
var _Date_Last_VL_Conducted=$('#Date_Last_VL_Conducted').val();
var _Justification=$('#Justification').val();
var _VL_Results=$('#VL_Results').val();
var _PMTCT_Status=$('#PMTCT_Status').val();
var _Date_Restarted_on_ART=$('#Date_Restarted_on_ART').val();
var _Date_LTFU=$('#Date_LTFU').val();
var _Reason_For_LTFU=$('#Reason_For_LTFU').val();
var _Cause_of_Death=$('#Cause_of_Death').val();
var _Stability=$('#Stability').val();
var _DC_Model=$('#DC_Model').val();

        
//_________________________________At step 1 ________________________________        
        
     if (newIndex === 1 )
        {
            
            var retvl=true;
            
             var cccno=$("#ccc_number").val();
             
             
             
             
             
        if(cccno==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Patient CCC Number');
        
        retvl=false;
        
        $("#ccc_number").focus();
        $("#ccc_number").css('border-color','red'); 
        
        }
        
        else  if(_Date_of_Birth==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Date of Birth');
        
        retvl=false;
        
        $("#Date_of_Birth").focus();
        $("#Date_of_Birth").css('border-color','red'); 
        
        }
        
        
          else  if(_Sex==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Select Patient Sex');
        
        retvl=false;
        
        $("#Sex").focus();
        $("#Sex").css('border-color','red'); 
        
        }
        
        
           else  if(_Population_Type==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Choose Population Type');
        
        retvl=false;
        
        $("#Population_Type").focus();
        $("#Population_Type").css('border-color','red'); 
        
        }
        
            else  if(_Date_Initiated_On_ART==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Date the Patient was started on ART');
        
        retvl=false;
        
        $("#Date_Initiated_On_ART").focus();
        $("#Date_Initiated_On_ART").css('border-color','red'); 
        
        }
       //_____________________Date Patient Started ON ART______________ 
              else  if(_Date_Initiated_On_ART==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Date the Patient was started on ART');
        
        retvl=false;
        
        $("#Date_Initiated_On_ART").focus();
        $("#Date_Initiated_On_ART").css('border-color','red'); 
        
        }
        
        else {
            
            $("#ccc_number").css('border-color','#33b775');
            $("#Date_of_Birth").css('border-color','#33b775'); 
            $("#Sex").css('border-color','#33b775'); 
            $("#Population_Type").css('border-color','#33b775');
             updatemaujumbe('error','');
            
        }
        
            
            
            
            return retvl;
        }
        else {
            
            return true;
        }
    
    
    }
   ,onFinished: function (event, currentIndex)
    {
        
        
       
        
        
    
        alert("Submitted!");
         
    }
});




//form.validate({
//    errorPlacement: function errorPlacement(error, element) { element.before(error); },
//    rules: {
//        confirm: {
//            equalTo: "#password"
//        }
//    }
//});

//Form control

$('#firstName').on('change', function(e) {
    $('#enteredFirstName').text(e.target.value || 'Cha');
});

function updatemaujumbe(ujumbetype,ujumbe)

{
   
    if(ujumbetype==='error')
    {  
        $("#maujumbe").html("<font color='red'>"+ujumbe+"</font>");
    }
    else if (ujumbetype==='warning') 
    {
     $("#maujumbe").html("<font color='orange'>"+ujumbe+"</font>");   
    }
    else if (ujumbetype==='success')
    {
      $("#maujumbe").html("<font color='green'>"+ujumbe+"</font>");   
    }
    
}

$('#maujumbe').each(function() {
    var elem = $(this);
    setInterval(function() {
        if (elem.css('visibility') === 'hidden') {
            elem.css('visibility', 'visible');
        } else {
            elem.css('visibility', 'hidden');
        }    
    }, 500);
});



function getAge() 
{
    var sikuyakuzaliwa=$("#Date_of_Birth").val(); 
    if(sikuyakuzaliwa!=='')
    {
    var today = new Date();
    var birthDate = new Date(sikuyakuzaliwa);
    var age = today.getFullYear() - birthDate.getFullYear();
    var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) 
    {
        age--;
    }
    
    $("#age").val(age);
    
        validatePopulationType();
    
    return age;
}
}

function validatePopulationType(){
    
   // $("#modality option[value='anc1']").attr("disabled",true); 
   var miaka=$("#age").val();
   var sex=$("#Sex").val();
  
   
   if(miaka!==''){
   
   if(miaka<=15){
    $("#Population_Type option[value='MSM']").attr("disabled",true);    
    $("#Population_Type option[value='FSW']").attr("disabled",true);    
                }
   else if (miaka>15)
         {
    $("#Population_Type option[value='MSM']").attr("disabled",false);    
    $("#Population_Type option[value='FSW']").attr("disabled",false); 
         }
         else {
             
      $("#Population_Type option[value='MSM']").attr("disabled",false);
      $("#Population_Type option[value='FSW']").attr("disabled",false);
             
         }
    
    
    }
    
    
    //validate by gender
    
      if (sex==='Male')
     {      
    $("#Population_Type option[value='FSW']").attr("disabled",true); 
    $("#Population_Type option[value='MSM']").attr("disabled",false); 
    
    $("#PMTCT_Status option[value='Pregnant']").attr("disabled",true); 
    $("#PMTCT_Status option[value='Breastfeeding']").attr("disabled",true);
    
    
    $("#PMTCT_Status").val("Not Applicable");
    
     }
                        
    else if (sex==='Female')
    {
      
    $("#Population_Type option[value='MSM']").attr("disabled",true); 
    $("#Population_Type option[value='FSW']").attr("disabled",false); 
    
    $("#PMTCT_Status option[value='Pregnant']").attr("disabled",false); 
    $("#PMTCT_Status option[value='Breastfeeding']").attr("disabled",false);
    }
    
    else {
        
      $("#Population_Type option[value='MSM']").attr("disabled",false);
      $("#Population_Type option[value='FSW']").attr("disabled",false);
      $("#PMTCT_Status option[value='Pregnant']").attr("disabled",false); 
      $("#PMTCT_Status option[value='Breastfeeding']").attr("disabled",false);
        
    }
                        
    
}

function validateTarehe(olddate,latestdate,olddatelabel,latestdatelabel)
{
var oldt="";
var nwdt="";

oldt=$("#"+olddate).val();
nwdt=$("#"+latestdate).val();

    if(oldt!=='' && nwdt!=='')
    {
      if(Date.parse(oldt) > Date.parse(nwdt))
      {
       //alert(olddatelabel+" cannot be greater than "+latestdatelabel);
       updatemaujumbe('error',olddatelabel+" cannot be greater than "+latestdatelabel);
       $("#"+latestdate).focus(); 
       $("#"+olddate).css('border-color','red'); 
       $("#"+latestdate).css('border-color','red'); 
      }
        else 
    
    {
        updatemaujumbe('error',''); 
        $("#"+latestdate).css('border-color','#33b775'); 
        $("#"+latestdate).css('border-color','#33b775'); 
        
    }
    }
   
    
}

function isCCCComplete()
{
    
var ccc_number=$("#ccc_number").val();
var idadiyano=ccc_number.length;

if(idadiyano!==10){
    
$("#ccc_number").css('border-color','red'); 

$("#noofdigits").html("<font color='red'>["+idadiyano+" digits]</font>");

                  }
             else {
    
$("#ccc_number").css('border-color','#33b775'); 
$("#noofdigits").html("<font color='green'>["+idadiyano+" digits]</font>");
    
                  }
    
  
}

function validateDrugsDuration()
{
    
var masikuzadawa=$("#Days_of_Dispense").val();
var idadiyano=masikuzadawa.length;


if(idadiyano>3){
    
var expectedmasiku=masikuzadawa.substring(0,3);

$("#Days_of_Dispense").val(expectedmasiku);

                }
                  //if days are more than 180 days
                  else  if(masikuzadawa>180)
                 {
    
 updatemaujumbe('error',"Drugs Duration cannot be greater than 180 Days ( 6 months ) ");
       $("#Days_of_Dispense").focus(); 
       $("#Days_of_Dispense").css('border-color','red'); 

                  }
                  //if days are more than 180 days
                  else  if(masikuzadawa<28)
                 {
    
 updatemaujumbe('error',"Drugs Duration cannot be less than 28 Days ");
       $("#Days_of_Dispense").focus(); 
       $("#Days_of_Dispense").css('border-color','red'); 

                  }
                  
             else {
                 
                //if the Clinic Visit Date has been filled then, autosuggest the next appointment
              var visitdate= $("#Last_Clinical_Visit_Date").val();
              
               if(visitdate!=='')
               {
        //predict the next appointment date
        
        
        
                }
                
    
$("#Days_of_Dispense").css('border-color','#33b775'); 
updatemaujumbe('error',"");
    
                  }
    
  
}


//add days to a given Date
function  addDays(date,days) 
{
    
    var masiku=parseInt(days);
    
  var result = new Date(date);
  result.setDate(result.getDate() + masiku);
  
  
 // return formatDate(result);
  return formatDate(result);
}

function sikuyawiki(tarehe){
 var result = new Date(tarehe);   
  var n = result.getDay();    
   return n; 
}



function PredictnextDate()
{

var masikuzadawa=$("#Days_of_Dispense").val();
var visitdate=$("#Last_Clinical_Visit_Date").val();


if(masikuzadawa!==''){

      $("#Next_appointment_Date").val(addDays(visitdate,masikuzadawa));
   }
                
                //check the date of the week
                
             pataSikuYaWiki();   

}

function pataSikuYaWiki()
{
    
  var trh=$("#Next_appointment_Date").val();
   
    if(trh!=='')
    {
  $("#sikuyadawa").html(jina_sikuyawiki(sikuyawiki(trh))); 
    }
    
    
}


function jina_sikuyawiki(siku){
    var jina="Unknown";
    
    switch (siku) {
        case 1:
           jina='Monday'; 
            break;
            
            case 2:
           jina='Tuesday'; 
            break;
            
          case 3:
           jina='Wednesday'; 
            break;   
            
           case 4:
           jina='Thursday'; 
            break; 
            
           case 5:
           jina='Friday'; 
            break;  
            
           case 6:
           jina='Saturday'; 
            break; 
            
            case 0:
           jina='Sunday'; 
            break; 
            
        default:
            jina='Unknown';
            break;
            
            return jina;
    }   
    

    
    
}


   function formatDate(date) 
   {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) 
        month = '0' + month;
    if (day.length < 2) 
        day = '0' + day;

    return [year, month, day].join('-');
} 


//alert(addDays('2020-05-10','30'));