//Wizard Init
var form = $("#treatmentform");




$("#wizard").steps({
    headerTag: "h3",
    bodyTag: "section",
    transitionEffect: "slideLeft",
    titleTemplate: '#title#'
    ,autoFocus: true
    
    ,onStepChanging: function (event, currentIndex, newIndex)
    {  
        //list all the data types
        

var _facility=$('#facilityname').val();

var _ccc_number=$('#ccc_number').val();

var _Date_of_Birth=$('#Date_of_Birth').val();

var _Sex=$('#Sex').val();

var _Population_Type=$('#Population_Type').val();

var _Date_Initiated_On_ART=$('#Date_Initiated_On_ART').val();

var _Last_Clinical_Visit_Date=$('#Last_Clinical_Visit_Date').val();

var _Days_of_Dispense=$('#Days_of_Dispense').val();
var _Months_of_Dispense=$('#Months_of_Dispense').val();
var _Next_appointment_Date=$('#Next_appointment_Date').val();
var _Current_Regimen=$('#Current_Regimen').val();
var _Monthly_Patient_Status=$('#Monthly_Patient_Status').val();
var _Screened_For_TB=$('#Screened_For_TB').val();

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
var _care_ending_reason=$('#care_ending_reason').val();
var _Reason_For_LTFU=$('#Reason_For_LTFU').val();
var _Cause_of_Death=$('#Cause_of_Death').val();


var _Stability=$('#Stability').val();
var _DC_Model=$('#DC_Model').val();

var _tb_test_ordered=$('#tb_test_ordered').val();
var _tb_test_results=$('#tb_test_results').val();
var _started_anti_tbs=$('#started_anti_tbs').val();
var _Date_started_on_TB_Treatment=$('#Date_started_on_TB_Treatment').val();



        
//_________________________________At step 1 ________________________________        
        
     if (newIndex === 1 )
        {
            
            var retvl=true;
            
             var cccno=$("#ccc_number").val();
             
             
             
        if(_facility==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Select Facility Name');
        
        retvl=false;
        
        $("#facilityname").focus();
        $("#facilityname").css('border-color','red'); 
        
        }
       else if(cccno==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Patient CCC Number');
        
        retvl=false;
        
        $("#ccc_number").focus();
        $("#ccc_number").css('border-color','red'); 
        
        }
        else if(!isCCCComplete())
        {
            var vlval=false;
            if(_facility==='14177_Family Health options Kenya (Nakuru)' ){
         
            updatemaujumbe('error','Enter Patient CCC Number in 10-14 Digit standard');
                
            }
            else {
         updatemaujumbe('error','Enter Patient CCC Number in 10 digit standard');
            }
        
        
        
        $("#ccc_number").focus();   
          retvl=false;  
        }
        
        else  if(_Date_of_Birth==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Date of Birth');
        
        retvl=false;
        
        //$("#Date_of_Birth").focus();
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
        
       // $("#Date_Initiated_On_ART").focus();
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
            $("#facilityname").css('border-color','#33b775');
             updatemaujumbe('default','');
            
        }
        
            
            
            
            return retvl;
        }
        
        
        
        else   if (newIndex === 2 )
        {
          
            if(_Last_Clinical_Visit_Date==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Date Last Picked ARVs');
        
        retvl=false;
        
       // $("#Last_Clinical_Visit_Date").focus();
        $("#Last_Clinical_Visit_Date").css('border-color','red'); 
        
        }
        
            else if(_Current_Regimen==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Current Regimen');
        
        retvl=false;
        
        $("#Current_Regimen").focus();
        $("#Current_Regimen").css('border-color','red'); 
        
        }
            else if(_Days_of_Dispense==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Days the Regimens will last');
        
        retvl=false;
        
        $("#Days_of_Dispense").focus();
        $("#Days_of_Dispense").css('border-color','red'); 
        
        }
        
            else if(_Next_appointment_Date==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Enter Next Appointment Date');
        
        retvl=false;
        
        //$("#Next_appointment_Date").focus();
        $("#Next_appointment_Date").css('border-color','red'); 
        
        }
        else if (validateTarehe('Last_Clinical_Visit_Date','Next_appointment_Date','Last ARV Pickup Date','Next Appointment Date')==='invalid') {
            
          retvl=false;  
            
            
        }
//        else if (validateTarehe('Last_Clinical_Visit_Date','Date_started_on_TB_Treatment','Last ARV Pickup Date','Date started on TB Treatment')==='invalid') {
//            
//          retvl=false;  
//            
//            
//        }
            else if(_Screened_For_TB==='')
        {
       
        updatemaujumbe('error','Select TB Screening Status');        
        retvl=false;        
        $("#Screened_For_TB").focus();
        $("#Screened_For_TB").css('border-color','red'); 
        
        }
            else if(_Screened_For_TB==='Presumed TB' && (_tb_test_ordered===''))
        {
       
        updatemaujumbe('error','Specify TB Investigative Workup done');        
        retvl=false;        
        $("#tb_test_ordered").focus();
        $("#tb_test_ordered").css('border-color','red'); 
        
        }
        
            else if(_started_anti_tbs==='Yes' && (_Date_started_on_TB_Treatment===''))
        {
       
        updatemaujumbe('error','Specify Date started on TB Treatment');        
        retvl=false;        
        $("#Date_started_on_TB_Treatment").focus();
        $("#Date_started_on_TB_Treatment").css('border-color','red'); 
        
        }
        
        
        
        else 
            if(_care_ending_reason==='LTFU' && _Date_LTFU==='')
            {
           
        updatemaujumbe('error','Enter Date Patient Lost To Follow up');
        
        retvl=false;
        
        $("#Date_LTFU").focus();
        $("#Date_LTFU").css('border-color','red'); 
             
                
            }           
            
  else if(_care_ending_reason==='LTFU' && _Reason_For_LTFU==='')
            {
           
        updatemaujumbe('error','Enter Reason patient was Lost To Follow up');
        
        retvl=false;
        
        $("#Reason_For_LTFU").focus();
        $("#Reason_For_LTFU").css('border-color','red'); 
             
                
            }
            
            
            
             else if(_care_ending_reason==='Dead' && _Cause_of_Death==='')
            {
           
        updatemaujumbe('error','Enter Reason patient dead');
        
        retvl=false;
        
        $("#Cause_of_Death").focus();
        $("#Cause_of_Death").css('border-color','red'); 
             
                
            }
            
            else if(validateDrugsDuration()==='invalid')
            {
              updatemaujumbe('error','Enter Duration of drugs in Days between 14 to 200 days');
        
        retvl=false;
        
        $("#Days_of_Dispense").focus();
        $("#Days_of_Dispense").css('border-color','red'); 
               
                
            }
        
        else {
            
 $("#Days_of_Dispense").css('border-color','#33b775');            
 $("#Next_appointment_Date").css('border-color','#33b775');            
 $("#Current_Regimen").css('border-color','#33b775');            
 $("#Screened_For_TB").css('border-color','#33b775');    
 $("#Days_of_Dispense").css('border-color','#33b775');    
 
 //LTFU section
 
        $("#Date_Restarted_on_ART").css('border-color','#33b775');
         $("#Date_LTFU").css('border-color','#33b775');
         $("#care_ending_reason").css('border-color','#33b775');
         $("#Reason_For_LTFU").css('border-color','#33b775');
         $("#Cause_of_Death").css('border-color','#33b775');
 
    updatemaujumbe('default','');        

            retvl=true; 
            
            
            
            
            
            
            
        }
            
        return retvl;    
        }
        
        
        //_____________________________________________________________________________________________________________________IPT Section
     else  if (newIndex === 3 )
    { 
        retvl=false;
    
           if(_Started_on_IPT==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Specify if Patient is Started On IPT');
        
        retvl=false;
        
        $("#Started_on_IPT").focus();
        $("#Started_on_IPT").css('border-color','red'); 
        
        } 
         else if(_Started_on_IPT==='Yes' && _Date_Started_on_IPT==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Specify date Patient Started IPT');
        
        retvl=false;
        
       // $("#Date_Started_on_IPT").focus();
        $("#Date_Started_on_IPT").css('border-color','red'); 
        
        } 
        
        else if(_IPT_Outcome==='Completed' && _Date_of_IPT_Outcome==='')
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Specify date Patient Completed IPT');
        
        retvl=false;
        
        $("#Date_of_IPT_Outcome").focus();
        $("#Date_of_IPT_Outcome").css('border-color','red'); 
        
        } 
      //If the patient ha s not completed 6 months on IPT  
        else if(_Date_of_IPT_Outcome!=='' && _Date_Started_on_IPT!=='' && daysDiff(_Date_of_IPT_Outcome,_Date_Started_on_IPT)<88 )
        {
       // $("#wizard-t-0").click();  
        
        updatemaujumbe('error','Client has completed '+Math.round(daysDiff(_Date_of_IPT_Outcome,_Date_Started_on_IPT)/30)+' Months i.e <font color=\'orange\'> ('+daysDiff(_Date_of_IPT_Outcome,_Date_Started_on_IPT)+' days )</font> taking IPT/TPT');
        
        retvl=false;
        
        //$("#Date_of_IPT_Outcome").focus();
        $("#Date_Started_on_IPT").css('border-color','red'); 
        $("#Date_of_IPT_Outcome").css('border-color','red'); 
        
        } 
        
        
        else 
        {
            
        $("#Started_on_IPT").css('border-color','#33b775');    
        $("#Date_Started_on_IPT").css('border-color','#33b775');    
        $("#IPT_Outcome").css('border-color','#33b775');    
        $("#Date_of_IPT_Outcome").css('border-color','#33b775');    
        $("#Reason_Not_Completed").css('border-color','#33b775');    
          updatemaujumbe('default','');  
            
          retvl=true;   
            
        }
        
        

        
        return retvl;
    }
      
        //_____________________________________________________________________________________________________________________Viral Load Section
        else if (newIndex===4){
            
            var retvl=true; 
           //check if date initial VL Conducted is happening later than date of last VL
           
            if(validateTarehe('Date_Initiated_On_ART','Date_Last_VL_Conducted','Date Initiated on ART','Date recent viral load conducted')==='invalid')
            {
                           
            retvl=false;                 
                
            }            
            
            else  if(validateTarehe('First_Viral_Load_Date','Date_Last_VL_Conducted','Date initial viral load conducted','Date Last viral load Conducted')==='invalid')
            {
                           
            retvl=false;                 
                
            }
            
           
            else if(_VL_Results!=='< LDL copies/ml'  && _VL_Results!==''  && isNaN(_VL_Results)===true )
            {
        
        updatemaujumbe('error','Viral Load results should be numeric values or filled using the LDL check box');
       
        retvl=false;
        
        //$("#First_Viral_Load_Date").focus();
        $("#VL_Results").css('border-color','red'); 
                
            }
            
           
            
            
            //_________Check if the last Viral Load has been populated before populating the last updated
            else if(_First_Viral_Load_Date==='' && _Date_Last_VL_Conducted!=='' )
            {
                
        updatemaujumbe('error','Update the date of Initial Viral Load Collection date');
        
        retvl=false;
        
        //$("#First_Viral_Load_Date").focus();
        $("#First_Viral_Load_Date").css('border-color','red'); 
                
             retvl=true;     
            }
            
            
          
            
            //_____________________IF Date of Viral Load has been done or there are results, ensure the Justification has also been updated_________________
             else if(_Justification==='' && (  _Date_Last_VL_Conducted!=='' || _VL_Results!=='' ) )
            {
                
            updatemaujumbe('error','Update the VL justification ');
        
        retvl=false;
        
        $("#Justification").focus();
        $("#Justification").css('border-color','red'); 
                
             retvl=false;     
            }
            
            
            
               else if( _Date_Last_VL_Conducted==='' && ( _Justification!=='' || _VL_Results!=='' ) )
            {
                
            updatemaujumbe('error','Update date most recent VL was conducted ');
        
        retvl=false;
        
        $("#Date_Last_VL_Conducted").focus();
        $("#Date_Last_VL_Conducted").css('border-color','red'); 
                
             retvl=false;     
            }
            
            
       else if( _Sex==='Female' && _PMTCT_Status==='' &&  ( _VL_Results!=='' ||  _Date_Last_VL_Conducted!=='' || _Justification!=='' )  )
            {
                
            updatemaujumbe('error','Indicate the PMTCT Status at the time of VL sample Collection');
        
            retvl=false;
        
            $("#PMTCT_Status").focus();
            
            $("#PMTCT_Status").css('border-color','red'); 
                
             retvl=false;     
            }
            
            
            
            
            
            else {
                
                
                
           
               if(_VL_Results==='' && daysDiff(_Date_Last_VL_Conducted,_Date_Initiated_On_ART)>=180 )
            {
        
        updatemaujumbe('warning','You have not entered VL Results for this patient. Are you sure this patient does not have a recent vl sample which has results?');
        alert('You have not entered VL Results for this patient.Ensure you enter the most recent vl done results');
       
        retvl=true;
        
        //$("#First_Viral_Load_Date").focus();
        $("#VL_Results").css('border-color','red'); 
                
            }
                 else if(_First_Viral_Load_Date!=='' && _Date_Last_VL_Conducted!=='' && daysDiff(_Date_Last_VL_Conducted,_First_Viral_Load_Date)<180 )
            {
        updatemaujumbe('warning','Viral Load for non PMTCT Patients should be done atleast 6 months after the initial Viral Load');
        
        retvl=true;
        
      
        $("#First_Viral_Load_Date").css('border-color','red'); 
                
            }
            
               //_________Check if the last Viral Load has been populated before populating the last updated
            else if(_First_Viral_Load_Date==='' && _Date_Last_VL_Conducted!=='' )
            {
                
        updatemaujumbe('warning','Update the date of Initial Viral Load Collection date');
        
        retvl=true;
        
        //$("#First_Viral_Load_Date").focus();
        $("#First_Viral_Load_Date").css('border-color','red'); 
                
             retvl=true;     
            }
            
                
//            var _First_Viral_Load_Date=$('#First_Viral_Load_Date').val();
//var _Date_Last_VL_Conducted=$('#Date_Last_VL_Conducted').val();
//var _Justification=$('#Justification').val();
//var _VL_Results=$('#VL_Results').val();
//var _PMTCT_Status=$('#PMTCT_Status').val(); 
 
$("#First_Viral_Load_Date").css('border-color','#33b775'); 
$("#Date_Last_VL_Conducted").css('border-color','#33b775'); 
$("#Justification").css('border-color','#33b775'); 
$("#VL_Results").css('border-color','#33b775'); 
$("#PMTCT_Status").css('border-color','#33b775'); 
updatemaujumbe('default','');                
                
            retvl=true;     
            }
            
            
      return retvl;      
            
        }
        
        
 //________________________________________________________Differentiated Care________________________________________________
 
 else if (newIndex===5){
            
            var retvl=true; 
            
            
            if(_Stability==='Stable' && _DC_Model==='')
            {
           
        updatemaujumbe('error','Select DC Model');
        
        retvl=false;
        
        $("#DC_Model").focus();
        $("#DC_Model").css('border-color','red'); 
             
                
            }           
            
       else {
             
                
         retvl=true; 
                //
         $("#DC_Model").css('border-color','#33b775');
         updatemaujumbe('default','');       
            }
            
 return retvl;
        }
      
        else if (newIndex===6){
            
            var retvl=true; 
 if(validateTarehe('date1','date2','Date Of First Dose','Date of Second Dose')==='invalid')
            {
                           
            retvl=false;                 
                
            }  
            else if(validateTarehe('date1','date_booster','Date Of First Dose','Date Received Booster Vaccine')==='invalid')
            {
                           
            retvl=false;                 
                
            } 
            else if(validateTarehe('date2','date_booster','Date Of Second Dose','Date Received Booster Vaccine')==='invalid')
            {
                           
            retvl=false;                 
                
            } 
            
            else {
             
                
         retvl=true; 
                //
         $("#date1").css('border-color','#33b775');
         $("#date2").css('border-color','#33b775');
         $("#date_booster").css('border-color','#33b775');
         updatemaujumbe('default','');       
            }
            
 return retvl;
        
        }
        
        
   else {
            
            
            
            
            
            return true;
        }
    
    
    }
   
    , onFinishing: function (event, currentIndex)
    {
    
 
   return true;
    
    
    }
    ,onFinished: function (event, currentIndex)
    {
        
    
       
        
        submitDataToPouch();
         
    }
});



//
//
//var _Stability=$('#Stability').val();
//var _DC_Model=$('#DC_Model').val();



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
        $(".maujumbe").html(" <font color='red'> <i class='glyphicon glyphicon-alert'></i> "+ujumbe+"</font>");
    }
    else if (ujumbetype==='warning') 
    {
     $(".maujumbe").html(" <font color='orange'><i class='glyphicon exclamation-sign'></i> "+ujumbe+"</font>");   
    }
    else if (ujumbetype==='success')
    {
      $(".maujumbe").html("  <font color='green'><i class='glyphicon exclamation-check'></i> "+ujumbe+"</font>");   
    }
    else if (ujumbetype==='default') {
      $(".maujumbe").html("  <font color='green'>"+ujumbe+"</font>");    
        
    }
    
}

$('.maujumbe').each(function() {
    var elem = $(this);
    setInterval(function() {
        if (elem.css('visibility') === 'hidden') {
            elem.css('visibility', 'visible');
        } else {
            elem.css('visibility', 'hidden');
        }    
    }, 900);
});



function getAge() 
{
    
    var sikuyakuzaliwa=$("#Date_of_Birth").val(); 
    
    //console.log("called get Age"+ sikuyakuzaliwa);
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


function ShowAge(dob) 
{
    
    var sikuyakuzaliwa=dob; 
    
    //console.log("called get Age"+ sikuyakuzaliwa);
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

function isShowVaccination(){
    
   // $("#modality option[value='anc1']").attr("disabled",true); 
   var miaka=$("#age").val();
    if(miaka<=15){
        
           $(".vaccinated").hide();
    }
    else {
           $(".vaccinated").show();
        
    }
}

function validatePopulationType(){
    isShowVaccination();
   // $("#modality option[value='anc1']").attr("disabled",true); 
   var miaka=$("#age").val();
   var sex=$("#Sex").val();
  //console.log('miaka ni ngapi '+miaka);
   
   if(miaka!==''){
   
   if(miaka<=15){
    $("#Population_Type option[value='MSM']").attr("disabled",true);    
    $("#Population_Type option[value='FSW']").attr("disabled",true);  
 
                }
   else if(miaka>=10){
       if(sex==='Female'){
   $(".ispmtct").show();   
       }
       else {
         $(".ispmtct").hide(); 
         $("#PMTCT_Status").val("Not Applicable");
       }
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
    if (miaka>15){
    $("#Population_Type option[value='MSM']").attr("disabled",false); 
                 }
                 else {
                $("#Population_Type option[value='MSM']").attr("disabled",true);        
                     
                 }
    
    $("#PMTCT_Status option[value='Pregnant']").attr("disabled",true); 
    $("#PMTCT_Status option[value='Breastfeeding']").attr("disabled",true);
    $("#PMTCT_Status option[value='Any Other PMTCT']").attr("disabled",true);
    
    
    $("#PMTCT_Status").val("Not Applicable");
    
    $(".ispmtct").hide();
    
     }
                        
    else if (sex==='Female')
    {
      
    $("#Population_Type option[value='MSM']").attr("disabled",true); 
    if (miaka>15){
    $("#Population_Type option[value='FSW']").attr("disabled",false); 
                 
    $("#PMTCT_Status option[value='Pregnant']").attr("disabled",false); 
    $("#PMTCT_Status option[value='Breastfeeding']").attr("disabled",false);
    $("#PMTCT_Status option[value='Any Other PMTCT']").attr("disabled",false);
                 }
                 else {
                     
              $("#Population_Type option[value='FSW']").attr("disabled",true); 
                 
    $("#PMTCT_Status option[value='Pregnant']").attr("disabled",true); 
    $("#PMTCT_Status option[value='Breastfeeding']").attr("disabled",true);        
    $("#PMTCT_Status option[value='Any Other PMTCT']").attr("disabled",true);        
                     
                 }
    $(".ispmtct").show();
    }
    
    else {
        
      $("#Population_Type option[value='MSM']").attr("disabled",false);
      $("#Population_Type option[value='FSW']").attr("disabled",false);
      $("#PMTCT_Status option[value='Pregnant']").attr("disabled",false); 
      $("#PMTCT_Status option[value='Breastfeeding']").attr("disabled",false);
      $("#PMTCT_Status option[value='Any Other PMTCT']").attr("disabled",false);
        
    }
                        
    
}

function validateTarehe(olddate,latestdate,olddatelabel,latestdatelabel)
{
var oldt="";
var nwdt="";
var Retvl='valid';

oldt=$("#"+olddate).val();
nwdt=$("#"+latestdate).val();

    if(oldt!=='' && nwdt!=='')
    {
      if(Date.parse(oldt) > Date.parse(nwdt))
      {
       //alert(olddatelabel+" cannot be greater than "+latestdatelabel);
       updatemaujumbe('error',olddatelabel+" cannot happen after "+latestdatelabel);
       //$("#"+latestdate).focus(); 
       $("#"+olddate).css('border-color','red'); 
       $("#"+latestdate).css('border-color','red'); 
       Retvl='invalid';
      }
        else 
    
    {
        updatemaujumbe('default',''); 
        $("#"+latestdate).css('border-color','#33b775'); 
        $("#"+latestdate).css('border-color','#33b775'); 
         Retvl='valid';
        
    }
    }
   
 return  Retvl;   
}

    function isCCCComplete()
     {
    var retval=false;
var ccc_number=$("#ccc_number").val();
var idadiyano=ccc_number.length;

var hosi=$('#facilityname').val();

 if(idadiyano!==10){
    
$("#ccc_number").css('border-color','red'); 

$("#noofdigits").html("<font color='red'>["+idadiyano+" digits]</font>");
    retval=false;
                   }
    else if(hosi==='14177_Family Health options Kenya (Nakuru)' && (idadiyano<10 || idadiyano>14 ))
                   {
               $("#ccc_number").css('border-color','red'); 

$("#noofdigits").html("<font color='red'>["+idadiyano+" digits]</font>");        
                       
                   }
             else  {
    
$("#ccc_number").css('border-color','#33b775'); 
$("#noofdigits").html("<font color='green'>["+idadiyano+" digits]</font>");
    
    retval=true;
    
                   }
    
 return  retval;
 
      }

function validateDrugsDuration()
{
    var rtvl='valid';
    
var masikuzadawa=$("#Days_of_Dispense").val();
var idadiyano=masikuzadawa.length;


if(idadiyano>3){
    
var expectedmasiku=masikuzadawa.substring(0,3);

$("#Days_of_Dispense").val(expectedmasiku);

                }
                  //if days are more than 200 days
                  else  if(masikuzadawa>200)
                 {
    
 updatemaujumbe('error',"Drugs Duration cannot be greater than 200 Days ( 6 months ) ");
       $("#Days_of_Dispense").focus(); 
       $("#Days_of_Dispense").css('border-color','red'); 
       rtvl='invalid';

                  }
                  //if days are more than 200 days
                  else  if(masikuzadawa<14)
                 {
    
 updatemaujumbe('error',"Drugs Duration cannot be less than 14 Days ");
       $("#Days_of_Dispense").focus(); 
       $("#Days_of_Dispense").css('border-color','red'); 

rtvl='invalid';
                  }
                  
             else {
                 
                //if the Clinic Visit Date has been filled then, autosuggest the next appointment
              var visitdate= $("#Last_Clinical_Visit_Date").val();
              
               if(visitdate!=='')
               {
        //predict the next appointment date
        
        
        
                }
                
    
$("#Days_of_Dispense").css('border-color','#33b775'); 
updatemaujumbe('default',"");
    
                  }
    
    return rtvl;
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


function PredictDrugs()
{



var visitdate=$("#Last_Clinical_Visit_Date").val();
var tca=$("#Next_appointment_Date").val();


if(tca!=='' && visitdate!=='')
{
   var masikuzadawa=daysDiff(tca,visitdate); 
if(masikuzadawa>=14 && masikuzadawa<=200) {
      $("#Days_of_Dispense").val(masikuzadawa);
                                          }
}
                
                //check the date of the week
                
             pataSikuYaWiki();   

}


function pataSikuYaWiki()
{
    
  var trh=$("#Next_appointment_Date").val();
   
    if(trh!=='')
    {
  $("#sikuyadawa").html(" <font color='orange'>"+jina_sikuyawiki(sikuyawiki(trh))+"</font>"); 
  //console.log("Siku ya dawa"+jina_sikuyawiki(sikuyawiki(trh)));
    }
    
    
}




function jina_sikuyawiki(siku_){
    var jina="Unknown";
    
    var siku=parseInt(siku_);
    
         if(siku===1) {  jina='Monday'; }
    else if(siku===2) {  jina='Tuesday'; }
    else if(siku===3) {  jina='Wednesday'; }
    else if(siku===4) {  jina='Thursday'; }
    else if(siku===5) {  jina='Friday'; }
    else if(siku===6) {  jina='Saturday'; }
    else if(siku===0) {  jina='Sunday'; }
    else   { jina="Unknown"; }
           
            
            return jina;
       
    

    
    
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



function UpdatePatientStatus(){
 
    var retvalue="Not Given ARVs";
 var nextappdate=$("#Next_appointment_Date").val();
 
 
 var leo = formatDate(new Date());
 
 //assuming the patient next appointment date has been updated
 
 
 
 if(nextappdate!==''&&leo!=='')
 {
 
   if(daysDiff(nextappdate,leo)<=0 && daysDiff(nextappdate,leo) >-28 )
                                  {
       
    retvalue='< 28 Days Defaulter';  
    $("#Monthly_Patient_Status").html("<option value='< 28 Days Defaulter'>< 28 Days Defaulter</option>");
    //$("#Population_Type option[value='FSW']").attr("disabled",false);
    isEligibleForLTFU();
    
                                }
 
 else  if(daysDiff(nextappdate,leo)>=0 )
                                {
     $("#Monthly_Patient_Status").html("<option value='Active '>Active On Treatment</option>");   
    retvalue='< 28 Days Defaulter'; 
    isEligibleForLTFU();
                                }
                                
                                 else  if(daysDiff(nextappdate,leo)<28 )
                                {
     $("#Monthly_Patient_Status").html("<option value='LTFU ( > 28 days Defaulter )'>LTFU</option>");   
    retvalue='LTFU ( > 28 days Defaulter )';   
    isEligibleForLTFU();
                                }
                                
                              
                                
 }
 //if today is more than 28 Days since last time of appointment and the LTFU field is , indicate the patient to be Undocumented LTFU
 
 
  return retvalue;  
    
}
//return Newdate - Olddate
//in a normal scenarion, return a positive value
function daysDiff(newdate,olddate)
{
  //if the outcome is Positive, It Means the new Date is greater than old date
  //eg , If th eoutput is >=1 it means date of appointment is in future
    
var olddt = new Date(olddate);
var newdt = new Date(newdate);

return Math.floor((Date.UTC(newdt.getFullYear(), newdt.getMonth(), newdt.getDate()) - Date.UTC(olddt.getFullYear(), olddt.getMonth(), olddt.getDate()) ) /(1000 * 60 * 60 * 24));

}


function AllowFutureDateOnly(FieldName,ReferTo){
    


var refval=$("#"+ReferTo).val();

if(refval!==''){
$('#'+FieldName).attr('data-date-start-date', ''+refval);

                     $('#'+FieldName).datepicker({
     todayHighlight: true, clearBtn: true, autoclose: true,format: "yyyy-mm-dd",StartDate:refval
     });
}  
    
}


function resetART(){
    
 $('#Last_Clinical_Visit_Date').val("");
$('#Screened_For_TB').val("");
$('#Days_of_Dispense').val("");
$('#Months_of_Dispense').val("");
$('#Next_appointment_Date').val("");
//$('#Current_Regimen').val();
$('#Monthly_Patient_Status').val("");  
    
    
    
    
}

function resetVL(){
    
 $('#Date_Last_VL_Conducted').val("");
 $('#Justification').val("");
 $('#VL_Results').val("");
   
    
}

function  IsStartedIPT(){
    
    var sipt=$("#Started_on_IPT").val();
    
    if(sipt==='Yes')
    { 
    //enable the class started on IPT
    $(".if_started_ipt").show();
    
    
    }
    else 
    {
        
    $(".if_started_ipt").hide(); 
    //if you hide the div that depend on starting of IPT, ensure you clear the data
    $("#IPT_Outcome").val("");
    $("#Date_of_IPT_Outcome").val("");   
    $("#Reason_Not_Completed").val(""); 
    
    }
    
    
}



function  IsCompletedIPT(){
    
    var sipt=$("#IPT_Outcome").val();
    
    if(sipt==='Completed')
    { 
    //enable the class started on IPT
    $(".if_completed_ipt").show();
    
    }
    else {
        
       $(".if_completed_ipt").hide();  
       
      
    $("#Date_of_IPT_Outcome").val("");   
    
        
    }
    
    
}


function  IsDiscontinuedIPT(){
    
    var sipt=$("#IPT_Outcome").val();
    
    if(sipt==='Discontinued')
         { 
    //enable the class started on IPT
    $(".if_discontinued_ipt").show();
    
         }
    else {
        
       $(".if_discontinued_ipt").hide(); 
        $("#Reason_Not_Completed").val("");
        
         }
    
    
}

function UpdateLDL(){
    
    var ld=$("#ldl").val();
   // console.log("LDL ni "+ld)
    
    if($('#ldl:checkbox:checked').length > 0)
    {
    $("#VL_Results").val(ld);
      }
    
      
      
      else {
          
         $("#VL_Results").val('');  
          
      }
    
}

function isLDLChecked(){
      if( $("#VL_Results").val()==='< LDL copies/ml')
    {
        
    $('#ldl').prop('checked', true);
    
    } 
    
}


function  IsStable(){
    
    var sipt=$("#Stability").val();
    
    if(sipt==='Stable')
         { 
    //enable the class started on IPT
    $(".isstable").show();
    
         }
    else {
        
       $(".isstable").hide(); 
        $("#DC_Model").val("");
        
         }
    
    
                 }
                 
                 
                 function isDSDValid()
                     {
                     
             _Date_Initiated_On_ART=$("#Date_Initiated_On_ART").val();
             
             var leo = formatDate(new Date()); 
             
                     
       if(daysDiff(leo,_Date_Initiated_On_ART)>=365)
       {
                      
                 $('.ispatient1yr').show();    
                 $('.dsdwarning1yr').hide();    
                         
                         
                         
                     }
                     else 
                     {
                         
                        $('.ispatient1yr').hide();     
                        $('.dsdwarning1yr').show();     
                         
                     }
                     
                     }
                 
                   function isRestartART(){
                 //isrestartart care_ending_reason=LTFU
                 var cer=$("#care_ending_reason").val();
             
                 
                 if(cer==='LTFU')
                 {
                  $('.isrestartart').show();   
                     
                 }
                 else 
                 {
                     
                     $('.isrestartart').hide();  
                     $('#Date_Restarted_on_ART').val("");
                     
                 }
                 
                   }    
                 
                 
                 function isDEAD(){
                 //  This will display Cause_of_Death  
                  //isdead     care_ending_reason=Dead
                 var cer=$("#care_ending_reason").val();
             
                 
                 if(cer==='Dead')
                 {
                  $('.isdead').show();   
                     
                 }
                 else 
                 {
                  
                   $('.isdead').hide(); 
                   $('#Cause_of_Death').val("");
                     
                 }   
                     
                 }
                 
                 function isLTFU() 
                 {
                 //care_ending_reason
                 //This will display Reason For LTFU and Date LTFU  
                  //isltfu     care_ending_reason=LTFU
                 var cer=$("#care_ending_reason").val();
             
                 
                 if(cer==='LTFU')
                 {
                  $('.isltfu').show();   
                     
                 }
                 else 
                 {
                  
                   $('.isltfu').hide(); 
                   $('#Cause_of_Death').val("");
                     
                 }   
                  
                 
                     
                 }
                 
                 function isEligibleForLTFU() 
                 {
                 //care_ending_reason
                 //This will display Reason For LTFU and Date LTFU  
                  //isltfu     care_ending_reason=LTFU
                 var cer=$("#Monthly_Patient_Status").val();
            // console.log(" Care Ending Bit Is "+cer);
                 
                 if(cer==='LTFU ( > 28 days Defaulter )')
                 {
                  $('.iscareend_able').show();   
                    
                           console.log(" Care Ending Bit should show ");
                 }
                 else 
                 {
                  console.log(" Care Ending Bit cannot show ");
                   $('.iscareend_able').hide(); 
                   $('#care_ending_reason').val("");
                     
                 }   
                  
                 
                     
                 }
                 
function activate_doses_and_booster(){
    
    var ever_vaccinated=$("#ever_vaccinated").val();
    if (ever_vaccinated==='yes')
    {
        
      $(".vaccined").show();  
      
    }
    else {
       $(".vaccined").hide();  
         }
    
}
                 
function activate_doses(){
    
    var vaccination_status=$("#vaccination_status").val();
    if (vaccination_status==='Partially Vaccinated')
    {
        
      $(".dose1").show();  
      $(".dose2").hide();  
      activate_booster();
    }
    else if (vaccination_status==='Fully Vaccinated')
    {
        
      $(".dose1").show();  
      $(".dose2").show();  
     activate_booster();   
      
    }
    else {
      $(".dose1").hide();  
      $(".dose2").hide();  
      activate_booster();
         }
    
}
function activate_booster(){
    
    
    var received_booster=$("#received_booster").val();
    if (received_booster==='yes')
    {
        
      $(".booster").show();  
      
    }
    else {
       $(".booster").hide();  
         }
    
}
function activate_tested()
{
    
     var tested_for_covid19=$("#tested_for_covid19").val();
    if (tested_for_covid19==='yes')
    {
        
      $(".tested").show();  
      
    }
    else {
       $(".tested").hide();  
         }
    
}
function activate_presentation(){
    
    
    
     var covid_test_result=$("#covid_test_result").val();
    
    if (covid_test_result==='Positive')
    {
        
      $(".presentation").show();  
      
    }
    else {
       $(".presentation").hide();  
         }
    
}
function activate_hospitalized(){    
     
     var covid_presentation=$("#covid_presentation").val();
    //covid_presentation=Symptomatic
    if (covid_presentation==='Symptomatic')
    {
        
      $(".hospitalized").show();  
      
    }
    else {
       $(".hospitalized").hide();  
         }
    
}
function activate_admission(){
    //hospitalized=yes

     var hospitalized=$("#hospitalized").val();
    //covid_presentation=Symptomatic
    if (hospitalized==='yes')
    {
        
      $(".admission").show();  
      
    }
    else {
       $(".admission").hide();  
         }
    
    
}


/**
 * 
 * 
ever_vaccinated=yes
received_booster=yes
tested_for_covid19=yes;
tested=Positive
covid_presentation=Symptomatic
hospitalized=yes
 * 
 * **/

//if_started_ipt       Started_on_IPT=Yes
//if_completed_ipt     IPT_Outcome=Completed
//if_discontinued_ipt  IPT_Outcome=Discontinued

//isltfu     care_ending_reason=LTFU
//isdead     care_ending_reason=Dead
//var _Date_Restarted_on_ART=$('#Date_Restarted_on_ART').val();
//var _Date_LTFU=$('#Date_LTFU').val();
//var _Reason_For_LTFU=$('#care_ending_reason').val();
//var _Cause_of_Death=$('#Cause_of_Death').val();

//UpdatePatientStatus();