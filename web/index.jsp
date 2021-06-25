<%-- 
    Document   : index
    Created on : Mar 17, 2016, 3:17:19 PM
    Author     : Emmanuel E
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<head>
                <!--<meta http-equiv="origin-trial" content="Agd7fSYxSHE+4XwOTgC99LrjXP6QGFdDlXTkV9oERCmy/PEBD9mT1nCfoZGZYe0zQGCqJW/TG+avQgB9nbuyWg0AAABteyJvcmlnaW4iOiJodHRwczovL2hzZHNhY2x1c3RlcjIuZmhpMzYwLm9yZzo0NDMiLCJmZWF0dXJlIjoiQXBwQ2FjaGUiLCJleHBpcnkiOjE2MTc3NTM1OTksImlzU3ViZG9tYWluIjp0cnVlfQ==">-->
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>VLMIS</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
                <link href="css/jquery.dataTables.min.css" rel="stylesheet">
		<link href="css/bootstrap.css" rel="stylesheet">
                <link href="css/bootstrap-datepicker.min.css" rel="stylesheet">
                <link rel="stylesheet" href="css/select2.css">
                <link rel="shortcut icon" href="images/vl.png">
                <link href="wizard/assets/css/mafonti.css" rel="stylesheet">                
                <link rel="stylesheet" href="wizard/assets/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="wizard/assets/css/bd-wizard.css">  
		<link href="css/styles.css" rel="stylesheet">
                                <style type='text/css'>
input:focus {
    border-color: red;
    }
    .control-group .select2-container {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
  display: table;
  table-layout: fixed;
  border-color: rgb(51, 183, 117);
}


/*@media screen and (min-width: 600px) and (max-width: 1199px)  {
  #treatmentform {
    margin-left:20%;
    margin-right:20%;
  }
}

@media screen and (min-width: 1200px) {
  #treatmentform {
    margin-left:30%;
    margin-right:30%;
  }
}

.form-control input {
border-color: #5cb85c; 
border:#5cb85c;
    
}*/

/*.select2-container--default .select2-selection--single
{
padding: 5px 25px;
    min-height: 50px;
    max-width: 550px;
    border-radius: 4px;
    border: solid 1px green; 
    width: 190px;
}*/

</style>

                
	</head>
	<body>
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        
        <div class="navbar-header">
            <button id="toolid" style="float:left;color:white;" class="navbar-toggle btn btn-default col-md-6" > <i class="glyphicon glyphicon-scale"></i>VLMIS 3.0.2 </button> 
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
        </div>
        <div class="navbar-collapse collapse">
                       

            
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
              
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
          
                
                 <li><a title="Add Widget" id="adduserbutton" data-toggle="modal" href="#userdetails"><i class="glyphicon glyphicon-user"></i><span id="usernamelabel"> Update user</span></a></li>
                 <li><a id="clearcachebtn"  title=""   href="" onclick='clearsws();'<i class="glyphicon glyphicon-log-in"></i> Clear Cache</a></li>
                 <li><a id="cleardatabtn"  title=""    onclick='cleardata();'<i class="glyphicon glyphicon-fire"></i>Delete all Data</a></li>
                 <li ><a  title="Add Widget" data-toggle="modal"  id="exportdataanchor2" href="#addWidgetModal1"><i class="glyphicon glyphicon-cloud-upload"></i> Export all Data</a></li>
                 <li ><a  title="Add Widget" data-toggle="modal"  id="importfromserver" href="#addWidgetModal3"><i class="glyphicon glyphicon-cloud-download"></i>Pull data from server</a></li>
                 <li ><a   href="report.jsp"><i class="glyphicon glyphicon-stats"></i>Reports</a></li>
                 <li ><a  title="Add Widget" data-toggle="modal"  id='loginbtn' href="#accesscodemodal">.</a></li>
                 <li>
                  <a  title="Help" data-toggle="modal" href="#help">
                            <i class="glyphicon glyphicon-question-sign"></i>
                            Help
                        </a>
                 </li>
                              <li><a href="#" style="display:none;" onclick="closeapp();"><i class="glyphicon glyphicon-lock"></i> Exit</a></li>
            </ul>
        </div>
        
    </div>
    <!-- /container -->
    
</div>
<!-- /Header -->
     <div class="well well-sm" style="display:none" >
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
   <strong>Note!</strong> Targets have been hidden from the screen. To show targets for each site, un check the button besides. <b>Hide targets </b> <input type="checkbox" onclick="togglehidding();" checked id="hidetargets" />
  </div>
<!-- Main -->
<div class="container-fluid">
    <div class="row">
        
        <!-- /col-3 -->
        <div class="col-sm-12">

            
            
           

     
          <div class="row">
                <!-- center left-->
                
          <div class="col-md-12" style="padding-left:3px;padding-right:3px;">
                    

                  

                    <div class="btn-group btn-group-justified">
                        <a href="#" id='refreshpage' class="btn btn-success col-md-6">
                            <i class="glyphicon glyphicon-file"></i>
                             VLMIS 3.0.2
                        </a>
                        <a class="btn btn-success col-md-6" href="dashboards/index.html"> <i class="glyphicon glyphicon-dashboard"></i> Open Live Dashboards</a> 
                       
                         
                            
                            <a  class="btn btn-success col-sm-2" id="exportdataanchor1" style="display:none;" title="Add Widget" data-toggle="modal" href="#addWidgetModal">
                                <i class="glyphicon glyphicon-cloud-upload"></i> Export Data 
                                <label id="unexportedno" style="color:yellow;">(0 records )</label>
                            </a>
                             
                       
<!--                         <a href="indextesting.jsp" class="btn btn-primary col-sm-2">
                            <i class="glyphicon glyphicon-link"></i>
                            <br>Index Testing <br/>/ PNS
                        </a>-->
                        
                        <!--<a href="#" class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-cog"></i>
                            <br> Settings
                        </a>-->
                      
                        
<!--                        <a class="btn btn-primary col-sm-2" title="Excel report" href="https://hsdsacluster2.fhi360.org:8443/Reports/rri.jsp">
                            <i class="glyphicon glyphicon-stats"></i>
                            <br> Excel Report
                        </a> -->
                    </div>

                    <hr>


                   

                    <!--tabs-->
                    <div class="panel">
                        
                        <ul class=" nav nav-tabs " id="myTab">
                            <li class="active newdata col-xs-4"><a href="#dataentry" id="newdatabutton" data-toggle="tab">  <i class="glyphicon glyphicon-plus"></i> Data</a></li>
                            <!--<li class="active editdata" style='display:none;' ><a href="#dataentry" id="newdatabutton" data-toggle="tab">  <i class="glyphicon glyphicon-edit"></i> Edit Data</a></li>-->
                            <!--<li><a href="#reports" style="display:none;" id="reportsbutton" data-toggle="tab"> <i class="glyphicon glyphicon-stats"></i> Report</a></li>--> 
                            <li class='col-xs-4'><a href="#searchdata" data-toggle="tab"> <i class="glyphicon glyphicon-edit"></i> Edit</a></li> 
                           <!-- <li><a href="#export" data-toggle="tab"> <i class="glyphicon glyphicon-cloud-upload"></i> Data Export</a></li>-->
                           
                            <li class='col-xs-4'><a href="#viewcounsellors" data-toggle="tab"> <i class="glyphicon glyphicon-bishop"></i>Users</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active well col-md-12" style='padding:0px;' id="dataentry">
                                
                                
                              <!--Data entry code-->
                    <div class="panel panel-default">
                       
                        <div class="panel-body" style="width:100%;padding:2px;">
                            <form class="form form-vertical" action="#" method="post" id="treatmentform">
                                <h4 style='text-align:center;padding:5px; width:100%;' class='maujumbe ' ></h4>
                                
                                <div id='wizard'>
                                    <h3>
                                        <div class='media1'>
                                            <div class='bd-wizard-step-icon'>
                                                <i class='glyphicon glyphicon-user'></i></div>
                                            <div class='media-body'><div class='bd-wizard-step-title'>Patients</div>
                                                <div class='bd-wizard-step-subtitle'></div>

                                            </div>

                                        </div>
                                    </h3>
                                    <section>
                                     <h3  style='text-align: center;background-color:#ccffcc ;font-weight: bold;padding:3px;'>Patient Registration</h3>
                                       
                                        <div class='form-group col-md-3'>



                                        <label><font color='red'>*</font><b>Patient CCC No.<span id="noofdigits"><font color='red'> [10 digit]</font></span></b></label>
                                        
                                        <input onkeyup="isCCCComplete();"  placeholder='Patient CCC Number'  onclick="setmflcode();" autocomplete='off' maxlength="10" onkeypress='return numbers(event);' class='form-control' type='text' name='ccc_number' id='ccc_number' /></div>

                                        <div class='form-group col-md-3'>
                                            <label><font color='red'>*</font><b>Date of Birth</b></label>
                                            <input readonly="true" onchange="validateTarehe('Date_of_Birth','Date_Started_on_IPT','Date Of Birth','Date Started IPT');AllowFutureDateOnly('Last_Clinical_Visit_Date','Date_of_Birth');AllowFutureDateOnly('Date_Initiated_On_ART','Date_of_Birth');validateTarehe('Date_of_Birth','Date_Initiated_On_ART','Date Of Birth','Date Initiated On ART');validateTarehe('Date_of_Birth','Last_Clinical_Visit_Date','Date Of Birth','Last Clinical Visit Date');getAge();isShowWeight();" placeholder='Date of Birth' data-date-end-date='0d'  autocomplete='off'  class='form-control dates' type='text' name='Date_of_Birth' id='Date_of_Birth'  />
                                        <input type='hidden' name='age' id='age'>
                                       
                                        
                                        </div>

                                        <div class='form-group col-md-3'>
                                            <label><font color='red'>*</font><b>Sex</b></label>
                                            <select class='form-control' onchange='validatePopulationType();' style='color:green;' name='Sex' id='Sex' >
                                                <option value=''>Select Sex</option>
                                                <option value='Female'>Female</option>
                                                <option value='Male'>Male</option>
                                            </select>
                                        </div>

                                        <div class='form-group col-md-3'>
                                            <label><font color='red'>*</font><b>Population Type</b></label>
                                            <select class='form-control' name='Population_Type' id='Population_Type' >
                                                <option value=''>Select Population Type</option>
                                                <option value='General'>General</option>
                                                <option value='PWID'>PWID</option>
                                                <option value='MSM'>MSM</option>
                                                <option value='Transgender'>Transgender</option>
                                                <option value='FSW'>FSW</option>
                                                <option value='People in Prison and other closed settings'>People in Prison and other closed settings</option></select>
                                        </div>

                                        <div class='form-group col-md-3'>
                                            <label><font color='red'>*</font><b>Date Initiated On ART</b></label>
                                            <input readonly="true" onchange="isDSDValid();AllowFutureDateOnly('Last_Clinical_Visit_Date','Date_Initiated_On_ART');validateTarehe('Date_of_Birth','Date_Initiated_On_ART','Date Of Birth','Date Initiated On ART');" placeholder='Date Initiated On ART' data-date-end-date='0d'  autocomplete='off'  class='form-control dates' type='text' name='Date_Initiated_On_ART' id='Date_Initiated_On_ART' />
                                        </div>

                                      
                                        
                                        

                                    </section>
                                    
                                    <h3>
                                        <div class='media1'>
                                            <div class='bd-wizard-step-icon'>
                                              <i class='glyphicon glyphicon-link'></i></div><div class='media-body'><div class='bd-wizard-step-title'>ART</div><div class='bd-wizard-step-subtitle'></div></div></div></h3>
                                    <section>

                                        <h4  style='text-align: center;background-color:#ccffcc ;font-weight: bold; padding:5px;'> ARV Drugs and TB Screening  </h4>
                                        <h5 style="text-align:center;"><label onclick='resetART();' class='btn btn-success'><b><i class="glyphicon glyphicon-plus"></i>New ART Encounter</b></label></h5>
                                        <div class='form-group col-md-3'>
                                            <label><font color='red'>*</font><b>Date Given ARVs<font color='orange'> (last clinic date)</font></b></label>
                                            <input onchange="PredictnextDate();validateTarehe('Date_of_Birth','Last_Clinical_Visit_Date','Date Of Birth','Date Given ARV');UpdatePatientStatus();" readonly="true" placeholder='Last ARV pickup Date' data-date-end-date='0d' autocomplete='off'  class='form-control dates' type='text' name='Last_Clinical_Visit_Date' id='Last_Clinical_Visit_Date' />
                                        </div>

                                         <div class='form-group col-md-3'>
                                            <label><font color='red'>*</font><b>Current Regimen</b></label>
                                            <select class='form-control' name='Current_Regimen' id='Current_Regimen' ><option value=''>Select Current Regimen</option>

                                            </select>
                                        </div>

                                        <div class='form-group col-md-3'><label><font color='red'>*</font><b>Duration Of ARV Drugs <font color='orange'>(in Days)</font></b></label>
                                            <input onkeyup="validateDrugsDuration();PredictnextDate();UpdatePatientStatus();" maxlength="3" placeholder='Duration Of ARV Drugs' autocomplete='on'  class='form-control' type='number' name='Days_of_Dispense' id='Days_of_Dispense' /></div>

                                        <div style='display:none;' class='form-group col-md-3'><label><font color='red'>*</font><b>Months of Dispense</b></label><select class='form-control' name='Months_of_Dispense' id='Months_of_Dispense' ><option value=''>Select Months of Dispense</option>
                                                <option value='1'>1</option>
                                                <option value='2'>2</option>
                                                <option value='3'>3</option>
                                                <option value='4'>4</option>
                                                <option value='5'>5</option>
                                                <option value='6'>6</option></select>
                                        </div>

                                        <div class='form-group col-md-3'>
                                            <label><font color='red'>*</font><b>Next appointment Date</b><span id="sikuyadawa"></span></label>
                                            <input onchange="PredictDrugs();validateTarehe('Last_Clinical_Visit_Date','Next_appointment_Date','Last ARV Pickup Date','Next Appointment Date');UpdatePatientStatus();" readonly="true" placeholder='Next appointment Date'  autocomplete='off'  class='form-control dates' type='text' name='Next_appointment_Date' id='Next_appointment_Date' /></div>

                                         <div class='form-group col-md-3'><label><font color='red'>*</font><b>TB Screening Outcome</b></label><select class='form-control' name='Screened_For_TB' id='Screened_For_TB' ><option value=''>Select TB Screening Outcome</option>
                                                <option value='Negative TB Screen'>Negative TB Screen</option>
                                                <option value='Presumed TB'>Presumed TB</option>
                                                <option value='On TB Treatment'>On TB Treatment</option>
                                                <option value='Not Done-ND'>Not Done-ND</option>
                                                <option value='Negative and started INH'>Negative and started INH</option></select>
                                         </div>
                                        
                                        <div class='iscalhiv form-group col-md-3' style='display:none;'>
                                            <label><b>Weight ( in Kgs )</b></label>
                                            <input  placeholder='Weight'  autocomplete='off'  class='form-control' type='number' name='weight' id='weight' />
                                        </div> 
                                        
                                        <div class='form-group col-md-3'><label><b>Patient Status as at Today</b></label>
                                            <select  onchange='isEligibleForLTFU();' readonly="true" class='form-control' style='border:1px solid #ffffff;' name='Monthly_Patient_Status' id='Monthly_Patient_Status' >
                                                <option value=''>Not Given ARVs</option>
<!--                                                <option value='Active '>Active on Treatment</option>
                                                <option value='< 28 Days Defaulter'>< 28 Days Defaulter</option>
                                                <option value='LTFU ( > 28 days Defaulter )'>LTFU ( > 28 days Defaulter )</option>-->
                                            </select>
                                        </div>
                                        
                                        
                                         <div class='iscareend_able form-group col-md-3' style='display:none'>
                                             
                                            <!--isRestartART(); has been disabled for now. The assumption is that If one is lost to followup , the next round is when the patient will be seemed to be restarted ON ART -->
                                             
                                                <label><b>Care End patient</b></label>
                                                <select onchange='isLTFU();isDEAD();' class='form-control' name='care_ending_reason' id='care_ending_reason' >
                                                <option value=''>Select Reason for Care Ending</option>
                                                <option value='LTFU'>LTFU ( > 28 days Defaulter )</option>
                                                <option value='Transferred Out'>Transferred Out</option>
                                                <option value='Dead'>Dead</option>
                                                <option value='Stopped Treatment'>Stopped Treatment</option>
                                                </select>
                                        </div>
                                        
                                        
                                        
                                        <div class='isltfu form-group col-md-3' style='display:none;'>
                                            <label><b>Date LTFU</b></label>
                                            <input readonly='true' placeholder='Date LTFU' data-date-end-date='-30d' autocomplete='off'  class='form-control dates' type='text' name='Date_LTFU' id='Date_LTFU' />
                                        </div>
                                        
                                        
                                        
                                        <div class='isltfu form-group col-md-3' style='display:none;'>
                                            <label><b>Reason For LTFU</b></label><select class='form-control' name='Reason_For_LTFU' id='Reason_For_LTFU' ><option value=''>Select Reason For LTFU</option>
                                                <option value='Out of reach'>Out of reach</option>
                                                <option value='Self Transfer Out'>Self Transfer Out</option>
                                                <option value='Travel ( Occupational/Upcountry)'>Travel ( Occupational/Upcountry)</option>
                                                <option value='Lack/Wrong Locator infor'>Lack/Wrong Locator infor</option>
                                                <option value='Stigma/Denial of Status'>Stigma/Denial of Status</option>
                                                <option value='Relocated'>Relocated</option>
                                                <option value='Discontinued Treatment ( Including PSS issues )'>Discontinued Treatment ( Including PSS issues )</option>
                                                <!--<option value='Alcoholism'>Alcoholism</option>-->
                                                </select>
                                        </div>

                                        <div class='isdead form-group col-md-3' style='display:none;'>
                                            <label><b>Cause of Death</b></label>
                                            
                                            <select class='form-control' name='Cause_of_Death' id='Cause_of_Death' ><option value=''>Select Cause of Death</option>
                                                <option value='HIV disease resulting in TB'>HIV disease resulting in TB</option>
                                                <option value='HIV disease resulting in other infectious and parasitic disease'>HIV disease resulting in other infectious and parasitic disease</option>
                                                <option value='HIV disease resulting in cancer'>HIV disease resulting in cancer</option>
                                                <option value='Other HIV disease, resulting in other diseases or conditions leading to death'>Other HIV disease, resulting in other diseases or conditions leading to death</option>
                                                <option value='Other natural causes'>Other natural causes</option>
                                                <option value='Non-natural causes'>Non-natural causes</option>
                                                <option value='Unknown Cause'>Unknown Cause</option>
                                            </select>
                                        </div>
                                        
                                        <div class='isrestartart form-group col-md-3' style='display:none'>
                                        <label><b>Date Restarted on ART</b></label>
                                        <input readonly="true" placeholder='Date Restarted on ART' data-date-end-date='0d' autocomplete='off'  class='form-control dates' type='text' name='Date_Restarted_on_ART' id='Date_Restarted_on_ART' />
                                        </div>

                             <div id="arthistory" style="display:none;">
                                        <table  class='table table-striped table-bordered'>
                                 <thead>
                                      <tr><th colspan='3' style='text-align:center;background-color:gray;' >ARV History</th></tr>
                                     <tr><th style='width:30%;'>Visit Date</th><th style='width:50%;'>Regimen</th><th style='width:20%;'>Expected Return</th></tr></thead>
                              <tbody></tbody>
                             </table>   
                                 </div>
                                        
                                        
                                        <div class='form-group col-md-3'>
                                         
                                            
                                            
                                        </div>
                                        <div class='form-group col-md-3'>
                                          <br/>  
                                            
                                            
                                        </div>

                                    </section>

                                    
                                    
                                    
   <!--IPT________________________________________________________________________________IPT-->                               
                                    
                                    
                                    
                                    <h3>
                                        <div class='media1'><div class='bd-wizard-step-icon'><i class='glyphicon glyphicon-circle-arrow-up'></i></div><div class='media-body'><div class='bd-wizard-step-title'>IPT</div><div class='bd-wizard-step-subtitle'></div></div></div>
                                    </h3>
                                    <section>
                                       
 <h3  style='text-align: center;background-color:#ccffcc ;font-weight: bold;padding:3px;'>IPT</h3>
                                    
                                        <div class='form-group col-md-3'><label><font color='red'>*</font><b>Started on IPT?</b></label>
                                            <select onchange="IsStartedIPT();validateTarehe('Date_of_Birth','Date_Started_on_IPT','Date Of Birth','Date Started IPT');" class='form-control' name='Started_on_IPT' id='Started_on_IPT' ><option value=''>Select Started on IPT?</option>
                                                <option value='Yes'>Yes</option>
                                                <option value='No'>No</option>
                                            </select>
                                                <!--<option value='To Confirm Later'>To Confirm Later</option></select>-->
                                        </div>

                                        <div class='if_started_ipt form-group col-md-3' style="display:none;">
                                            <label><b>Date Started on IPT</b></label>
                                            <input onchange="validateTarehe('Date_Started_on_IPT','Date_of_IPT_Outcome','Date Started IPT','Date Completed IPT Outcome');" readonly="true" placeholder='Date Started on IPT' data-date-end-date='0d' autocomplete='off'  class='form-control dates' type='text' name='Date_Started_on_IPT' id='Date_Started_on_IPT' /></div>

                                        <div class='if_started_ipt form-group col-md-3' style="display:none;">
                                            <label><b>IPT Outcome</b></label>
                                            <select onchange="IsCompletedIPT();IsDiscontinuedIPT();" class='form-control' name='IPT_Outcome' id='IPT_Outcome' ><option value=''>Select IPT Outcome</option>
                                                <option value='Completed'>Completed</option>
                                                <option value=''>Continueing</option>
                                                <option value='LTFU'>LTFU</option>
                                                <option value='Died'>Died</option>
                                                <option value='Transferred Out'>Transferred Out</option>
                                                <option value='Discontinued'>Discontinued</option></select>
                                        </div>

                                        <div class='if_completed_ipt form-group col-md-3' style="display:none;">
                                            <label><b>Date of IPT Outcome</b></label>
                                            <input onchange="validateTarehe('Date_Started_on_IPT','Date_of_IPT_Outcome','Date Started IPT','Date Completed IPT Outcome');" readonly="true" placeholder='Date Completed IPT' data-date-end-date='0d' autocomplete='off'  class='form-control dates' type='text' name='Date_of_IPT_Outcome' id='Date_of_IPT_Outcome' />
                                        </div>

                                        <div  class='if_discontinued_ipt form-group col-md-3' style="display:none;">
                                        <label><b>Reason Discontinued</b></label>
                                        <input placeholder='Reason Discontinued' autocomplete='off'  class='form-control' type='text' name='Reason_Not_Completed' id='Reason_Not_Completed' />
                                        </div>

                                    </section>
   
   <!--VL___________________________________________________________________________________________________________VL-->
   
   
   
                                    <h3>
                                        <div class='media1'>
                                            <div class='bd-wizard-step-icon'><i class=' glyphicon glyphicon-baby-formula'></i></div>
                                            <div class='media-body'>
                                                <div class='bd-wizard-step-title'>VL</div><div class='bd-wizard-step-subtitle'></div>

                                            </div>
                                                
                                        </div>
                                    </h3>
                                    <section>
                                        <!--<h2  style='text-align: center;'>ViralLoad</h2>-->
     <h3  style='text-align: center;background-color:#ccffcc ;font-weight: bold;padding:3px;'>Viral Load Results</h3>
    
                                 <h5 style="text-align:center;"><label onclick='resetVL();' class='btn btn-success'><b><i class="glyphicon glyphicon-plus"></i>New VL Sample</b></label></h5>   
                                        
                                   <div class='form-group col-md-3'>

                                   <label><b>Was Client active on ART six Months Ago?</b></label>
                                   
                                   <select class='form-control' name='eligible' id='eligible' >
                                   <option value=''>Select Yes</option>
                                   <option value='Yes'>Yes</option>
                                   <option value='No'>No</option>
                                   </select>
                                 
                                   </div>
                                 
                                 
                                 <div class='form-group col-md-3'>

                                            <label><b>Initial Viral Load Date</b></label>
                                            <input readonly='true' onchange="validateTarehe('First_Viral_Load_Date','Date_Last_VL_Conducted','Date initial viral load conducted','Date Last viral load Conducted');" placeholder='First Viral Load Date' data-date-end-date='0d' autocomplete='off'  class='form-control dates' type='text' name='First_Viral_Load_Date' id='First_Viral_Load_Date' />
                                        </div>

                                        <div class='form-group col-md-3'>
                                            <label><b>Date Latest VL Sample (with Results) was Collected</b></label>
                                            <input onchange="validateTarehe('First_Viral_Load_Date','Date_Last_VL_Conducted','Date initial viral load conducted','Date Last viral load Conducted');" readonly="true" placeholder='Date VL sample collected' data-date-end-date='0d' autocomplete='off'  class='form-control dates' type='text' name='Date_Last_VL_Conducted' id='Date_Last_VL_Conducted' /></div>

                                        <div class='form-group col-md-3'><label><b>Justification For Last VL</b></label>
                                            <select class='form-control' name='Justification' id='Justification' ><option value=''>Select Justification</option>
                                                <option value='Routine VL'>Routine VL</option>
                                                <option value='Baseline'>Baseline</option>
                                                <option value='Confirmation of Treatment Failure (Repeat VL)'>Confirmation of Treatment Failure (Repeat VL)</option>
                                                <option value='Single Drug Substitution'>Single Drug Substitution</option>
                                                <option value='Clinical Failure'>Clinical Failure</option>
                                            </select>
                                        </div>

                                        <div class='form-group col-md-3'>
                                            <label><b>VL Results</b> </label>
                                            <input  placeholder='VL Results in copies/ml' autocomplete='off' onkeypress='return numbers(event);'  class='form-control' type='text' name='VL_Results' id='VL_Results' />
                                        <font color="orange"> <input  onclick='UpdateLDL();' type="checkbox" value='< LDL copies/ml' id='ldl'> < LDL copies/ml </font>
                                        </div>

                                        <div class='ispmtct form-group col-md-3'><label><b>PMTCT Status when VL Sample was Collected?</b></label>
                                            <select class='form-control' name='PMTCT_Status' id='PMTCT_Status' >
                                                <option value=''>Select PMTCT Status</option>
                                                <option value='Pregnant'>Pregnant</option>
                                                <option value='Breastfeeding'>Breastfeeding</option>
                                                <option value='Any Other PMTCT'>Any other PMTCT</option>
                                                
                                            <option value='Not Applicable'>Not Applicable</option>
                                            </select>
                                        </div>
                                 
         <div id="vlhistory" style="display:none;">
                             <table  class='table table-striped table-bordered'>
                                 <thead>
                                     <tr><th colspan='3' style='text-align:center;background-color:gray;' >Viral Load History</th></tr>
                                     <tr><th style='width:30%;'>Date</th><th style='width:50%;'>Justification</th><th style='width:20%;'>Results</th></tr></thead>
                              <tbody></tbody>
                             </table>  
         </div>
                       
                                    </section>
                                    
  <!--DSD_______________________________________________________________________________________________________________DSD-->                                  
                                     <h3 style>
                                        <div class='media1'>
                                            <div class='bd-wizard-step-icon'><i class='glyphicon glyphicon-stats'></i></div>
                                            <div class='media-body'>
                                                <div class='bd-wizard-step-title'>DSD</div><div class='bd-wizard-step-subtitle'></div>

                                            </div>

                                        </div>
                                    </h3>
                                    <section>
 <h3  style='text-align: center;background-color:#ccffcc ;font-weight: bold;padding:3px;'>Differentiated Care Model</h3>
                                    
                                        <!--<h2  style='text-align: center;'>Differentiated Care Model</h2>-->

                                        <div class='ispatient1yr form-group col-md-3'><label><b>Stability</b></label>
                                            <select onchange='IsStable();' class='form-control' name='Stability' id='Stability' ><option value=''>Select Stability</option>
                                                <option value='Stable'>Stable</option>
                                                <option value='Unstable'>Unstable</option>
                                                <option value='Uncategorized'>Uncategorized</option></select>
                                        </div>

                                        <div  class='isstable form-group col-md-3' style='display:none;'>
                                            <label><b>DC Model</b></label><select class='form-control' name='DC_Model' id='DC_Model' ><option value=''>Select DC Model</option>
                                                <option value='Fast Track (FT)'>Fast Track (FT)</option>
                                                <option value='Community ART Distribution Group (CADG)'>Community ART Distribution Group (CADG)</option>
                                                <option value='Community ART Distribution Points (CADP)'>Community ART Distribution Points (CADP)</option>
                                                <option value='Facility ART Distribution Groups (FADG)'>Facility ART Distribution Groups (FADG)</option>
                                                <option value='Standard Care'>Standard Care</option></select>
                                        </div>
                                        
                                        
                                         <div  class='dsdwarning1yr form-group col-md-3' style='display:none;'>
                                             <h4 style='width:100%;' font color='orange'><i class='glyphicon glyphicon-alert' ></i> Patient has not completed 1 year since starting ART and thus not eligible for differentiated Care</h4>
                                         </div>
                                        
                                        
                                    </section>
                                    
                                    
<!--                                    <h3>
                                        <div class='media1'>
                                            <div class='bd-wizard-step-icon'><i class='glyphicon glyphicon-remove-sign'></i></div>
                                            <div class='media-body'><div class='bd-wizard-step-title'>Care Ending</div><div class='bd-wizard-step-subtitle'></div></div>
                                                
                                        </div>
                                    </h3>-->
                                    <!--<section>-->

                                        <!--<h2  style='text-align: center;'>Lost To Follow up or  Restarted on ART</h2>-->

                                        

                                        

                                        
                                       
                                    <!--</section>-->
                                   


                                </div>
<h4 style='text-align:center;padding:5px;' class='maujumbe' id='maujumbe'></h4>
          

 
                                
                                
                                <div class="form-group col-md-5"  >
                                    <label  ><b>Data Entered By</b></label>
                                   
                                        <select  onchange="" required  name="counsellor" id="counsellor" class="form-control" >
                                            <option value=''>Select user</option>

                                        </select>
                                      <input type='hidden' name='rowid' id='rowid'>
                                    
                                </div>
                                <div class="form-group col-md-5"  >
                                    <label  ><b>Facility</b></label>
                                   
                                        <select   onchange="checkids();" style='width:100%;'   name="facilityname" id="facilityname" class="form-control" >
                                            <option>Select Facility Name</option>
                                           
                                        </select>
                                    
              </div>
                                
<!--
facilityname
counsellor
opd_attendance
screened
screenrate
opd_eligible
opd_tested
opd_positive
opd_Yield

pmtct_tested
pmtct_positive
pmtct_Yield

vct_tested
vct_positive
vct_Yield

index_tested
index_positive
index_yield

self_test
Referred_Prep

Total_Tested
Total_Positive
Total_Linked
Total_Linkage
-->

                                      
                                        
<!--                                </td>
                                </tr> -->
                                 
                                 
                                 
                                
<!--                                    </table>
                                         <table class='table table-striped table-bordered' id="dynamicindicators"  > -->
                                   
                                <!------INDICATORS----->
                                                                 
                                  
                                  
                                     
                                <!--<table class="table table-striped table-bordered">-->
                                       <!--<tr><td colspan="3" class="col-xs-12">-->               
                                <div class="control-group col-xs-12">
                               <div id="utumani" class="alert-info"></div>
                                   <br/>
                                    <div class="controls">
                                        <button type="submit" id='savebutton' onmouseover="setrowid();" onclick="validateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-success active">
                                            SAVE
                                        </button>
                                     </div>
                                    <div class="controls">
                                        <button type="submit" id='updatebutton' onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                            UPDATE
                                        </button>
                                    
                                        
                                    </div>
                                    
                                </div>
                                        <!--</td></tr>-->
                                        
                                <!--</table>-->
                            </form>
                        </div>
                        <!--/panel content-->
                    </div>
                    <!--/panel-->

                              
                              <!--Data entry code-->
                            
                            </div>
                            <div class="tab-pane well" id="reports">
                                
                                
                               <!--Dashboard code-->
                            
                               
                               
                               
                                                   <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Dashboard</h4></div>
                        <div class="panel-body">
                            <form id="reportsform">
<table class='table table-striped table-bordered' id="reportstable" >
    
                            </table>
                            </form>
                        </div>
                        <!--/panel-body-->
                    </div>
                    <!--/panel-->

                               
                              
                              <!--Reports entry code-->
                            
                            
                            </div>
                            <div class="tab-pane well" id="export">
                                
                                
                               <!--- Data export---->
                            </div>
                            
                            <div class="tab-pane well" id="searchdata">
                                 <button id="btnDeleteRow" style='display:none;' value="cancel">Delete selected Row</button>
                                <div id="searchtablediv">
                                  
                                </div>    
                               <!--- Data export---->
                            </div>
                            
                            <div class="tab-pane well" id="viewcounsellors">
                                 <button id="btnDeleteRowcns" style='display:none;' value="cancel">Delete selected User</button>
                                <div id="searchtabledivcns">
                                  
                                </div>    
                               <!--- Data export---->
                            </div>
                            
                            
                            </div>
                        </div>

                    </div>
                    <!--/tabs-->

                </div>
                <!--/col-->
               
                <!--/col-span-6-->

            </div>
            <!--/row-->

           


            
        </div>
        <!--/col-span-9-->
    </div>

<!-- /Main -->

<footer class="text-center"> &copy; USAID Tujenge Jamii </footer>

<div class="modal" id="addWidgetModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr1" aria-hidden="true">x</button>
                <h4 class="modal-title">Data Export</h4>
            </div>
            <div class="modal-body">
                <form id="exportdataform">
                   
                    <button class=" btn-lg btn-success" style="text-align: center;" id="exportbutton" onclick="importdata();"> Click here to Export Data</button>
              
              
              <button class=" btn-lg btn-info" style="display:none;text-align: center;"  id="exportmsg" > Exporting Data..</button>
              <p id="exportresponse"> </p>
              </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn" id="refr">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>
<!-- /.modal -->





<div class="modal" id="accesscodemodal" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" >
                <button type="button" id="savecodebtn" onclick="isloggedin();" class="close" data-dismiss="modal" aria-hidden="true">.</button>
                <h4 class="modal-title">Account Details</h4>
                <label style="color:red;" id="useraccountvalidation"></label>
            </div>
            <div class="modal-body">
                <form action="#" class="userform" method="post">
                 <div class="control-group">
                                    <label><font color="red"><b>*</b></font>  Enter System access code</label>
                                    <div class="controls">
                                        <input type="password" size="14" placeholder=""   required name="accesscode" id="accesscode" class="form-control" >
                                    </div>
                                </div> 
                    
                       
                    
                                <div class="control-group">
                                    <label></label>
                                    <div class="controls">
                                        <label onclick=" updateaccount();"    style="margin-left: 50%;"  class="btn-lg btn-success active">
                                            Login
                                        </label>
                                    </div>
                                </div>   
                    
                </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">.</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>







<div class="modal" id="addWidgetModal1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr11" aria-hidden="true">x</button>
                <h4 class="modal-title">Data Re-Export</h4>
            </div>
            <div class="modal-body">
                <form id="exportdataform">
                   
                    <button class=" btn-lg btn-success" style="text-align: center;" id="exportbutton1" onclick="exportalldata();"> Click here to Re-Export Data</button>
              
              
              <button class=" btn-lg btn-info" style="display:none;text-align: center;"  id="exportmsg" > Exporting Data..</button>
              <p id="exportresponse1"> </p>
              </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn" id="refr">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>





<div class="modal" id="zeroreportmodal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr11" aria-hidden="true">x</button>
                <h4 class="modal-title">Submit zero report</h4>
            </div>
            <div class="modal-body">
              <form id="zeroreportform">
                  <div class="control-group col-xs-12" >
               <label class="col-xs-12"> <font color="red"><b>*</b></font>  Date:</label>
               <div class="controls col-xs-12" style="padding-bottom: 15px;">
              <input type="text" onchange="" onblur="" name="zeroreportdate" id="zeroreportdate" data-date-end-date="0d" autocomplete="off" class="form-control dates" readonly="" placeholder="datepicker" style="border-color:#33b775;">
                </div>
                </div>
               <div class="control-group col-xs-12" >
                                    <label class="col-xs-12"> <font color="red"><b>*</b></font>  Facility Name:</label>
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                        <select  onchange="" style='width:100%;'   name="facilityname_zerorpt" id="facilityname_zerorpt" class="form-control" >
                                        <option>Select Facility Name</option>
                                           
                                        </select>
                                    </div>
                                </div>
              
              <button class=" btn-sm btn-success" style="text-align: center;" id="savezeroreportbutton" onclick="savezeroreport();">Submit</button>
              
              
              <button class=" btn-lg btn-info" style="display:none;text-align: center;"   > Exporting Data..</button>
              <p id="savezeromsg"> </p>
              </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn" id="refr">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>








<div class="modal" id="userdetails">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="saveuserbtn" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title">System User Details</h4>
            </div>
            <div class="modal-body">
                <form action="#" id="userform" method="post">
                 <div class="control-group">
                                    <label><font color="red"><b>*</b></font>Enter  Full Name</label>
                                    <div class="controls">
                                        <input  maxlength='30' placeholder="eg John Ndoe"   required name="counsellorreg" id="counsellorreg" class="form-control" />
                                    
                                    </div>
                                </div> 
                    
                     <div class="control-group" style="display:none;" >
                                    <label>County Supporting:</label>
                                    <div class="controls">
                                        <select  name="usercounty" id="usercounty" style="width:100%;" class="form-control">
                                            <option value="">Select County</option>
                                             <option value="Baringo">Baringo</option>
                                             <option value="Kajiado">Kajiado</option>
                                             <option value="Laikipia">Laikipia</option>
                                             <option value="Nakuru">Nakuru</option>
                                             <option value="Narok">Narok</option>
                                             <option value="Samburu">Samburu</option>
                                             <option value="Turkana">Turkana</option>
                                        </select>
                                    </div>
                                </div>
                    
                    <div class="control-group" >
                                    <label>Facility Name</label>
                                    <div class="controls">
                                        <select  name="counsellorfacil" id="counsellorfacil" style="width:100%;" class="form-control">
                                            <option value="">Select Facility</option>
                                            
                                           
                                            
                                           
                                        </select>
                                    </div>
                                </div>
                    
                    
                    
                                <div class="control-group">
                                    <label></label>
                                    <div class="controls">
                                        <button onclick=" updateuser();"  type="submit" style="margin-left: 50%;"  class="btn-lg btn-success active">
                                            Update
                                        </button>
                                    </div>
                                </div>   
                    
                </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>








<div class="modal" id="addWidgetModal3">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="saveuserbtn" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title">Sync Data for a specific facility From the Server</h4>
            </div>
            <div class="modal-body">
                <form action="#" id="userform" method="post">
                 
                    
                    
                    
                    <div class="control-group" >
                                    <label>Facility Name</label>
                                    <div class="controls">
                                        <select  name="mflcode_sync" id="mflcode_sync" style="width:100%;" class="form-control">
                                            <option value="">Select Facility</option>
                                            
                                           
                                            
                                           
                                        </select>
                                    </div>
                                </div>
                    
                    
                    
                                <div class="control-group">
                                    <label></label>
                                    <div class="controls">
                                        <label id="syncfromserverbutton" onclick="pullfromserver();"   style="margin-left: 50%;"  class="btn-lg btn-success active">
                                            Sync
                                        </label>
                                         <img src='images/ajax_loader.gif' alt='loading' style="display:none; margin-left:30% ;" class='loading_fromserver'/>
                                         <br/>
                                        <label id='synclog' style='color:green;'></label>
                                    </div>
                                </div>   
                    
                </form>
            </div>
            <div class="modal-footer">
                <a href="#" onclick="refr();" data-dismiss="modal" class="btn">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>















<div class="modal" id="excelreport">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button"  class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title">Generate Excel Report <span id="needsinternet"></span></h4>
            </div>
            <div class="modal-body">
                <form  id="excelreportsfom" method="post">
                                <div class="control-group" style="display:none;">
                                    <label><font color="red"><b>*</b></font>Report Start Date</label>
                                    <div class="controls">
                                       <input type="text"  name ="startdaterpt" id="startdaterpt"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                    </div>
                                </div> 
                    
                    
                  <div class="control-group" style="display:none;">
                                    <label><font color="red"><b>*</b></font>Report End Date</label>
                                    <div class="controls">
                                       <input type="text"  name ="enddaterpt" id="enddaterpt"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                    </div>
                                </div> 
                    
                      <div class="control-group" style="display:none;">
                                    <label>Report Type</label>
                                    <div class="controls" style="display:none;">
                                        <select  name="rpt_type" id="rpt_type" style="width:100%;" class="form-control">
                                           
                                             <!--<option title="From 1st October of the selected date year to the end date specified inside the same date year " value="excelreport_cumulative">Cumulative</option>-->
                                             <option title="Weekly data breakdown per sites" value="reports">Weekly</option>
                                            
                                            
                                           
                                        </select>
                                    </div>
                                </div>
                    
                    <div class="control-group" >
                                    <label>County</label>
                                    <div class="controls">
                                        <select  name="rpt_county" id="rpt_county" style="width:100%;" class="form-control">
                                            <option value="">Select County (optional)</option>
                                             <option value="Baringo">Baringo</option>
                                             <option value="Kajiado">Kajiado</option>
                                             <option value="Laikipia">Laikipia</option>
                                             <option value="Nakuru">Nakuru</option>
                                             <option value="Narok">Narok</option>
                                              <option value="Samburu">Samburu</option>
                                             <option value="Turkana">Turkana</option>
                                            
                                           
                                        </select>
                                    </div>
                                </div>
                    
                   <!-- <div class="control-group" >
                                    <label>Facility </label>
                                    <div class="controls">
                                        <select  name="rpt_facility" id="rpt_facility" style="width:100%;" class="form-control">
                                            <option>Select Facility</option>
                                             
                                            
                                           
                                        </select>
                                    </div>
                                </div> -->
                    
                    
                                <div class="control-group">
                                    <label></label>
                                    <div class="controls">
                                        <button onclick=" getreport();" id="excelreportbtn"   style="margin-left: 30%;"  class="btn-lg btn-info active">
                                            Generate
                                        </button>
                                        
                                        <img src='images/ajax_loader.gif' alt='loading' style="display:none; margin-left:30% ;" class='loading'/>
                                        
                                    </div>
                                </div>   
                    
                </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>




<div class="modal" id="help">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title">Help</h4>
            </div>
            <div class="modal-body">
                <h3><b>Viral Load Data Management Information System (VLMIS)</b></h3>
                <p>The primary aim of this system is to ensure Afya Nyota Supported ART sites without EMR can monitor and report Viral Load and IPT data accurately as required by PEPFAR. 
Therefore, patients who are currently on ART should have all their  records routinely updated in the system. This will directly or indirectly help the facilities to generate monthly reports on Viral Load , TB Prevention, TB Screening,  TX New and TX_ML</p>
                    <h3>Activating User</h3>
                 <p> The first time of installing/running the application,You should specify the name of the system users from the availed list.</p>
                
                <h3>System Overview</h3>
                <!--<p>The specific elements that we are interested in are;</p>-->
                <ul>

<li>Made for non EMR Sites</li>
<li>Can work fully offline and on both Computer and a mobile phone</li>
<li>By design, requires a user to stick to one device ( either Phone or Computer)  and maintain same browser</li>
<li>Data should be exported frequently to avoid data loss</li>
<li>Requires Internet during first time access and Export of data</li>





                </ul>
                
                <h3>First Time Access</h3>
                <ul>
                <li>Enter the Access code  that was shared via email</li>
<li>Enter full name and facility supporting</li>

<li>Incase you want to change the facility supporting, go to user’s tab, Select the current username, delete it and create a new user account </li>
                 </ul>
                
                <h3>Update ARV For an already Registered Patient</h3>
                
                
                    
    <p>To add a new ART Update for a patient already registered;</p>
    <ul>
<li>Go to Edit Tab</li>
<li>Search the Patient by typing their CCC number</li>
<li>Click the Edit button on the edit column to load their details</li>
<li>On the Patients Data entry/edit wizard, Go to step 2 ( ARV and TB Screening)</li>
<li>By Default, the section will be displaying the last visit ARV and TB details</li>
<li>Click New ART Encounter</li>
<li>Enter the new ARV details</li>
<li>Once done, proceed to the last step and click finish</li>
 </ul>
    
    
           <h3>Update VL for an already registered Patient</h3>
                
                
                    
    <p>To add a new Viral Load update for a patient already registered;</p>
    <ul>
<li>Go to Edit Tab</li>
<li>Search the Patient by typing their CCC number</li>
<li>Click the Edit button on the edit column to load their details</li>
<li>On the patients data entry/edit wizard, go to step 4 ( Viral Load )</li>
<li>By default, the system will be displaying the last entered  VL details for that patient</li>
<li>Enter the new VL details</li>
<li>Once done, proceed to the last step and click finish</li>
 </ul>
                
<!--             <h3>Loading Facilities</h3>
                 <p> The first time of installing/running the application,health facilities are downloaded and saved on the host device (mobile phone or computer browser). This requires internet connectivity. After the download, sites should appear on the facility drop down list.</p>
                 -->
                 
                 <h3>Data Export</h3>
                <p>Data Entered is saved at the browser of the device that the user is using.To export this data to the central server; </p>
                <ul>

<li>Click the Export Data button <i>( available if there is un-exported data ) </i></li>
<li>Click the button Click here to Export Data and wait for the export successful message</li>
<li>Note: This activity requires you to be connected to Internet</li>
<li>Users are encouraged to export data frequently to avoid data loss</li>
               </ul>
                
                
                 <h3>Pulling Data From the Server</h3>
                <p>To pull all data from a specific health facility into the server </p>
                <ul>
<li>Connect to Internet</li>
<li>Ensure any the un-exported data is exported to the server</li>
<li>Click the Pull data from server button </li>
<li>Select The facility to pull its data from</li>
<li>Wait for the data syncing to complete</li>
<li>Refresh the system</li>

                </ul>
                
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
               
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>








<div class="modal" id="whatsappform" style='height:99%;'>
    <div class="modal-dialog">
        <div class="modal-content">
<!--            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr11" aria-hidden="true">x</button>
            <label id='tumawp' class='btn btn-info'>Share <i class='glyphicon glyphicon-share'></i></label>
            </div>-->
            <div class="modal-body">
              
<form id="whatsapp">
 <table border='0px' class='table table-condensed' style='font-size:9px;'>
<tr style='color:white;background-color:gray;'><th colspan='4' style='font-size:11px;text-align:center;'> <b><label id='lbl_facility' ></label></b> : <label id='lbl_date_tested'></label></th></tr>



  
  <tr><td><div alt='' id='pisa' ></div></td></tr>


</table>
              
              </form>
            
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn" id="refr">Close</a>
              
            </div>
        </div>
        
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>








	<!-- script references -->
                <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/scripts.js"></script>
                <script src="js/bootstrap-datepicker.min.js"></script>
                
<!--                <script type="text/javascript" src="select/selectstyle.js"></script>  
                <link href="select/selectstyle.css" rel="stylesheet">-->
    
          
                
                <script src="js/select2.js"></script>
                <script src="js/pouchdb-7.2.1.js"></script>
                <script src="js/pouchdb.upsert.js"></script>
                 
                <script type="text/javascript" src="js/jquery.fileDownload.js"></script>
                <script type="text/javascript" src="js/datatables.min.js"></script>
                <script type="text/javascript" src="js/html2canvas.js"></script>
                <script type="text/javascript" src="js/FileSaver.js"></script>
                
                  <!--<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>-->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <!--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>-->
  <script src="wizard/assets/js/jquery.steps.js"></script>
  <script src="wizard/assets/js/bd-wizard.js"></script>
                
                <!--<script type="text/javascript" src="js/screenshot.js"></script>-->
                
<!--                   <script type="text/javascript" charset="utf-8" src="cordova-1.5.0.js"></script>  -->
                <script>
              //var hostname="https://hsdsacluster2.fhi360.org:8443/htsrri/";
              var hostname="";
//var hostname="http://localhost/hsdsarri";

     // todayHighlight: true, daysOfWeekDisabled: "0,6",clearBtn: true, autoclose: true,format: "yyyy-mm-dd",
                </script>
                <script type="text/javascript">
  $(document).ready(function(){
      
          
                         $('.dates').datepicker({
                             todayHighlight: true, clearBtn: true, autoclose: true,format: "yyyy-mm-dd",
     });
      
  //$('#facilityname').select2();
  
  
  $('#rowid').val("");  
  
  });   
                 </script>


<script>
   
  var user="hsdsa";  
//load data from the cloud server 
   
//load data from the cloud server 
   function getFacilitiesJson(){
       
      
       
        var facilities="<option value=''>Select Facility</option>";
        var facility_syncing="<option value=''>Select Facility</option>";
        
              $.ajax({
                    url:'sites6.json',                            
                    type:'get',  
                    dataType: 'json',  
                    success: function(data) {
                     for(var i=0;i<data.length;i++){
                       
                             if(data[i].isactive==="Yes"){
                  facilities+="<option data-pns='"+data[i].pns+"' value='"+data[i].mflcode+"_"+data[i].facility_name+"'>"+data[i].facility_name+"</option>"; 
                  facility_syncing+="<option  value='"+data[i].mflcode+"'>"+data[i].facility_name+"</option>"; 
                                                        }
             
              
              
                        
                     }
                     //alert(facilities);
                      $("#facilityname").html(facilities);
                      $("#mflcode_sync").html(facility_syncing);
                      $("#counsellorfacil").html(facilities);
                      $("#facilityname_zerorpt").html(facilities);
                      
                      
                   $(document).ready(function() {
            //$('#lyricstable').DataTable();
              $('#facilityname').select2();
              $('#counsellorfacil').select2(); 
              $('#facilityname_zerorpt').select2(); 
              $('#mflcode_sync').select2(); 
              
            //   $('#facilityname').chosen();
            //  $('#facilityname').trigger("chosen:updated");
//               $('#counsellorfacil').chosen();
//             $('#counsellorfacil').trigger("chosen:updated");
             
             
                                 } );
                     
                      }});
   
   }
   
   getFacilitiesJson();
   
    
    
    
    
function getdrugs(){
    
    
     $(document).ready(function(){
         
       
   
         $.getJSON("drugs1.json",function(result){
             var drugid="";
             var drugcode="";
             var drugdetails="";
         
             
             var line1="<option value=''>Select regimen</option>";
             var line2="<option value=''>Select regimen</option>";
             var line3="<option value=''>Select regimen</option>";
             var alllines="<option value=''>Select regimen</option>";
             if(1===1){
             for(a=0;a<result.length;a++){
                 
                 if(result[a].line!=='prep' && result[a].line!=='pep' && result[a].line!=='OI' && result[a].line!=='hepb'){
                 
                  if(result[a].line==='1st line'){
                 
            line1+="<option value='"+result[a].code+"'>"+result[a].id+" ["+result[a].code+"]"+"</option>";
                                                
                                                 }
                 
                 if(result[a].line==='2nd line'){
                 
            line2+="<option value='"+result[a].code+"'>"+result[a].id+" ["+result[a].code+"]"+"</option>";
                                                
                                                 }
                
                 if(result[a].line==='3rd line'){
                 
            line3+="<option value='"+result[a].code+"'>"+result[a].id+" ["+result[a].code+"]"+"</option>";
                                                
                                                 }
             
                  alllines+="<option value='"+result[a].code+"'>("+result[a].line.replace(' line','')+") "+result[a].id+" ["+result[a].code+"]</option>";
                 
                }                            
                }
        
        $("#Current_Regimen").html(alllines);
       // $("#firstregimen").html(line1);
//        $("#secondregimen").html(line2);
//        $("#thirdregimen").html(line3);
        
             }
        
         });
         
    });
    
    }
    
  getdrugs();  
      
      
      //Pouch Db names
      
      var nonemr_all='nonemr_all';
      var nonemr_curr='nonemr_curr';
      var nonemr_ipt='nonemr_ipt';
      var nonemr_vl='nonemr_vl';
      var nonemr_diffcare='nonemr_diffcare';
      var nonemr_txml_ltfu='nonemr_txml_ltfu';
      
      
      
      //_________________________Create functions for adding Users to teh hSystem _______________________________
      //_________________________Patients _______________________________
   
//var PDB = require('pouchdb');
//PDB.plugin(require('pouchdb-upsert'));
    
    
    //_____________________________________________________________ALL Data Records_________________________________________________________________________________________________
    
    
   
 


    
 var nonemr_all_db = new PouchDB(nonemr_all);
 
var remoteCouch = false;
var nonemr_all_details;

 
 function add_nonemr_all(id,mflcode,facility,ccc_number,Date_of_Birth,Sex,Population_Type,Date_Initiated_On_ART,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,Stability,DC_Model,well_unwell,uzito,timestamp,user_id,syncstatus) {
   nonemr_all_details = {
//id should consist of Patientcccno and also datevisit conducted
id_:id,
mflcode:mflcode,
Facility:facility,
ccc_number:ccc_number,
Date_of_Birth:Date_of_Birth,
Sex:Sex,
Population_Type:Population_Type,
Date_Initiated_On_ART:Date_Initiated_On_ART,
Current_Regimen:Current_Regimen,
 
 
 
 
 
Last_Clinical_Visit_Date:Last_Clinical_Visit_Date,
Screened_For_TB:Screened_For_TB,
Days_of_Dispense:Days_of_Dispense,
Months_of_Dispense:Months_of_Dispense,
Next_appointment_Date:Next_appointment_Date,
Monthly_Patient_Status:Monthly_Patient_Status, //should be blank for now

//LTFU
Reason_For_LTFU:Reason_For_LTFU,
Date_LTFU:Date_LTFU,
care_ending_reason:care_ending_reason,
Cause_of_Death:Cause_of_Death,
Date_Restarted_on_ART:Date_Restarted_on_ART,

//IPT


Started_on_IPT:Started_on_IPT,
Date_Started_on_IPT:Date_Started_on_IPT,
IPT_Outcome:IPT_Outcome,
Date_of_IPT_Outcome:Date_of_IPT_Outcome,
Reason_Not_Completed:Reason_Not_Completed,

//VL

First_Viral_Load_Date:First_Viral_Load_Date,
Date_Last_VL_Conducted:Date_Last_VL_Conducted,
Justification:Justification,
PMTCT_Status:PMTCT_Status,
VL_Results:VL_Results,

//DSD

Stability:Stability,
DC_Model:DC_Model,
well_unwell:well_unwell,
uzito:uzito,

 
 
timestamp:timestamp,
user_id:user_id,
syncstatus:syncstatus,  
completed: false
  };
  nonemr_all_db.put(nonemr_all_details, function callback(err, result) 
  {
    if (!err) 
    {
      console.log('nonemr_all data added succesfully');
    }
    else{
        console.log(err);  
        
     alert("Duplicate Error!.You have already entered data for that patient.Consider editing instead "+err);
        
    }
    
  
  });
}
      
   
//_________________________________________________Code For Updating____________________________________   
   function update_nonemr_all(id,mflcode,facility,ccc_number,Date_of_Birth,Sex,Population_Type,Date_Initiated_On_ART,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,Stability,DC_Model,well_unwell,uzito,  timestamp,user_id,syncstatus)
   {
   

        

nonemr_all_db.upsert(id, function (doc) {

   //doc.id_=id;
doc.mflcode=mflcode;
doc.Facility=facility;
doc.ccc_number=ccc_number;
doc.Date_of_Birth=Date_of_Birth;
doc.Sex=Sex;
doc.Population_Type=Population_Type;
doc.Date_Initiated_On_ART=Date_Initiated_On_ART;
doc.Current_Regimen=Current_Regimen;
//curr

doc.Last_Clinical_Visit_Date=Last_Clinical_Visit_Date;
doc.Screened_For_TB=Screened_For_TB;
doc.Days_of_Dispense=Days_of_Dispense;
doc.Months_of_Dispense=Months_of_Dispense;
doc.Next_appointment_Date=Next_appointment_Date;
doc.Monthly_Patient_Status=Monthly_Patient_Status; //should be blank for now

//LTFU
doc.Reason_For_LTFU=Reason_For_LTFU;
doc.Date_LTFU=Date_LTFU;
doc.care_ending_reason=care_ending_reason;
doc.Cause_of_Death=Cause_of_Death;
doc.Date_Restarted_on_ART=Date_Restarted_on_ART;

//IPT


doc.Started_on_IPT=Started_on_IPT;
doc.Date_Started_on_IPT=Date_Started_on_IPT;
doc.IPT_Outcome=IPT_Outcome;
doc.Date_of_IPT_Outcome=Date_of_IPT_Outcome;
doc.Reason_Not_Completed=Reason_Not_Completed;

//VL

doc.First_Viral_Load_Date=First_Viral_Load_Date;
doc.Date_Last_VL_Conducted=Date_Last_VL_Conducted;
doc.Justification=Justification;
doc.PMTCT_Status=PMTCT_Status;
doc.VL_Results=VL_Results;

//DSD

doc.Stability=Stability;
doc.DC_Model=DC_Model;
doc.well_unwell=well_unwell;

doc.uzito=uzito;

doc.timestamp=timestamp;
doc.user_id=user_id;
doc.syncstatus=syncstatus; 
  
  return doc;
}).then(function (res) {
  // success, res is {rev: '1-xxx', updated: true, id: 'myDocId'}
  $("#synclog").html("saving overall data record "+ccc_number);
   console.log('nonemr_all data added succesfully'+res);
}).catch(function (err) {
  // error
  console.log(err);  
  alert(''+err);
}); 
  

  
}
   
  
//________________________Current On ART _____________________________   
   

 var nonemr_curr_db = new PouchDB(nonemr_curr);
 
var remoteCouch = false;
var nonemr_curr_details;


function add_nonemr_curr(Visit_Id,ccc_number,Current_Regimen,visitdate,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,uzito,timestamp,user_id) {
   nonemr_curr_details = {
//id should consist of Patientcccno and also datevisit conducted
id_:Visit_Id,
ccc_number:ccc_number,
visitdate:visitdate,
Current_Regimen:Current_Regimen,
Last_Clinical_Visit_Date:Last_Clinical_Visit_Date,
Screened_For_TB:Screened_For_TB,
Days_of_Dispense:Days_of_Dispense,
Months_of_Dispense:Months_of_Dispense,
Next_appointment_Date:Next_appointment_Date,
Monthly_Patient_Status:Monthly_Patient_Status, //should be blank for now

Reason_For_LTFU:Reason_For_LTFU,
Date_LTFU:Date_LTFU,
care_ending_reason:care_ending_reason,
Cause_of_Death:Cause_of_Death,
Date_Restarted_on_ART:Date_Restarted_on_ART,
uzito:uzito,

timestamp:timestamp,
user_id:user_id,     
completed: false
  };
  
  
  
  
 
  
  
  nonemr_curr_db.put(nonemr_curr_details, function callback(err, result) 
  {
    if (!err) 
    {
      console.log('nonemr_curr data added succesfully');
    }
    else 
    {
    console.log(err);  
    alert("Duplicate Error!.You have already entered data for that patient.Consider editing instead "+err);
    }
    
   
  });
}



//_________________________________________________Code For Updating____________________________________   
   function update_nonemr_curr(Visit_Id,ccc_number,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,uzito,timestamp,user_id,syncstatus) {
   
 

nonemr_curr_db.upsert(Visit_Id, function (doc) {

   //doc.id_=id;
doc.ccc_number=ccc_number;

doc.Last_Clinical_Visit_Date=Last_Clinical_Visit_Date;
doc.Current_Regimen=Current_Regimen;
doc.Screened_For_TB=Screened_For_TB;
doc.Days_of_Dispense=Days_of_Dispense;
doc.Months_of_Dispense=Months_of_Dispense;
doc.Next_appointment_Date=Next_appointment_Date;
doc.Monthly_Patient_Status=Monthly_Patient_Status; //should be blank for now

doc.Reason_For_LTFU=Reason_For_LTFU;
doc.Date_LTFU=Date_LTFU;
doc.care_ending_reason=care_ending_reason;
doc.Cause_of_Death=Cause_of_Death;
doc.Date_Restarted_on_ART=Date_Restarted_on_ART;
doc.uzito=uzito;

doc.timestamp=timestamp;
doc.user_id=user_id;
doc.syncstatus=syncstatus; 
  
  return doc;
}).then(function (res) 
{
  // success, res is {rev: '1-xxx', updated: true, id: 'myDocId'}
   console.log('nonemr_curr data updated succesfully'+res);
   $("#synclog").html("saving arv visits data record for "+ccc_number);
   
}).catch(function (err) 
{
  // error
  console.log(err);  
  alert(''+err);
}); 
  
 
}
   



//_________________________IPT_________________________________________


 var nonemr_ipt_db = new PouchDB(nonemr_ipt);
 

var nonemr_ipt_details;



function add_nonemr_ipt(Visit_Id,ccc_number,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,timestamp,user_id,syncstatus) {
   nonemr_ipt_details = {
         //id should consist of Patientcccno and also datevisit conducted
id_:Visit_Id,
ccc_number:ccc_number,

Started_on_IPT:Started_on_IPT,
Date_Started_on_IPT:Date_Started_on_IPT,
IPT_Outcome:IPT_Outcome,
Date_of_IPT_Outcome:Date_of_IPT_Outcome,
Reason_Not_Completed:Reason_Not_Completed,
timestamp:timestamp,
user_id:user_id,
completed: false
  };
  nonemr_ipt_db.put(nonemr_ipt_details, function callback(err, result) 
  {
    if (!err) 
    {
      console.log('nonemr_ipt data added succesfully');
    }
    else{
        console.log(err);  
        
     alert("Duplicate Error!.You have already entered data for that patient.Consider editing instead "+err);
        
    }
    
    
  });
}

 
//_________________________________________________Code For Updating____________________________________   
   function update_nonemr_ipt(Visit_Id,ccc_number,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,timestamp,user_id,syncstatus) {
   
//  $("#synclog").html("saving ipt data record for "+ccc_number);

nonemr_ipt_db.upsert(Visit_Id, function (doc) 
{

doc.ccc_number=ccc_number;

doc.Started_on_IPT=Started_on_IPT;
doc.Date_Started_on_IPT=Date_Started_on_IPT;
doc.IPT_Outcome=IPT_Outcome;
doc.Date_of_IPT_Outcome=Date_of_IPT_Outcome;
doc.Reason_Not_Completed=Reason_Not_Completed;

doc.timestamp=timestamp;
doc.user_id=user_id;
doc.syncstatus=syncstatus; 
  
  return doc;
}).then(function (res) 
{
  // success, res is {rev: '1-xxx', updated: true, id: 'myDocId'}
   console.log('nonemr_ipt data updated succesfully'+res);
   
   
   $("#synclog").html("saving ipt data record for "+ccc_number);
   
}).catch(function (err) 
{
  // error
  console.log(err);  
  alert(''+err);
}); 
  
 
}
 


//________________________________________________VL____________________________________________

 var nonemr_vl_db = new PouchDB(nonemr_vl);
 
var remoteCouch = false;
var nonemr_vl_details;


function add_nonemr_vl(Visit_Id,ccc_number,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,timestamp,user_id,syncstatus) {
   nonemr_vl_details = {
//id should consist of Patientcccno and also datevisit conducted
id_:Visit_Id,

ccc_number:ccc_number,
First_Viral_Load_Date:First_Viral_Load_Date,
Date_Last_VL_Conducted:Date_Last_VL_Conducted,
Justification:Justification,
PMTCT_Status:PMTCT_Status,
VL_Results:VL_Results,
timestamp:timestamp,
user_id:user_id,     
completed: false
  };
  nonemr_vl_db.put(nonemr_vl_details, function callback(err, result) 
  {
    if (!err) 
    {
      console.log('nonemr_vl data added succesfully');
    }
    else{
        console.log(err);  
        
     alert("Duplicate Error!.You have already entered data for that patient.Consider editing instead "+err);
        
    }
    
   
  });
}




 
//_________________________________________________Code For Updating____________________________________   
   function update_nonemr_vl(Visit_Id,ccc_number,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,timestamp,user_id,syncstatus) {
   


nonemr_vl_db.upsert(Visit_Id, function (doc) 
{


doc.ccc_number=ccc_number;
doc.First_Viral_Load_Date=First_Viral_Load_Date;
doc.Date_Last_VL_Conducted=Date_Last_VL_Conducted;
doc.Justification=Justification;
doc.PMTCT_Status=PMTCT_Status;
doc.VL_Results=VL_Results;

doc.timestamp=timestamp;
doc.user_id=user_id;
doc.syncstatus=syncstatus; 
  
  return doc;
}).then(function (res) 
{
  // success, res is {rev: '1-xxx', updated: true, id: 'myDocId'}
   console.log('nonemr_vl data updated succesfully'+res);
   
    $("#synclog").html("saving vl data record for "+ccc_number);
   
}).catch(function (err) 
{
  // error
  console.log(err);  
  alert(''+err);
}); 
  
 
}





//_________________________________TX_ML and LTFU________________________________________

var nonemr_txml_ltfu_db = new PouchDB(nonemr_txml_ltfu);
var remoteCouch = false;
var nonemr_txml_ltfu_details;


function add_nonemr_txml_ltfu(id,ccc_number,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,timestamp,user_id,syncstatus) {
   nonemr_txml_ltfu_details = {
//id should consist of Patientcccno and also datevisit conducted
id_:id,
ccc_number:ccc_number,

Date_LTFU:Date_LTFU,
care_ending_reason:care_ending_reason,
Cause_of_Death:Cause_of_Death,
Date_Restarted_on_ART:Date_Restarted_on_ART,

timestamp:timestamp,
user_id:user_id,
completed: false
  };
  nonemr_txml_ltfu_db.put(nonemr_txml_ltfu_details, function callback(err, result) 
  {
    if (!err) 
    {
      console.log('nonemr_txml_ltfu data added succesfully');
    }
    else{
        console.log(err);  
        
     alert("Duplicate Error!.You have already entered data for that patient.Consider editing instead "+err);
        
    }
    
   
  });
}




function update_non_emr_txml_ltfu(id,ccc_number,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,timestamp,user_id,syncstatus) {
   
 

non_emr_txml_ltfu_db.upsert(id, function (doc) 
{

doc.visitdate=visitdate;
doc.ccc_number=ccc_number;

doc.Date_LTFU=Date_LTFU;
doc.care_ending_reason=care_ending_reason;
doc.Cause_of_Death=Cause_of_Death;
doc.Date_Restarted_on_ART=Date_Restarted_on_ART;

doc.timestamp=timestamp;
doc.user_id=user_id;
doc.syncstatus=syncstatus; 
  
  return doc;
}).then(function (res) 
{
  // success, res is {rev: '1-xxx', updated: true, id: 'myDocId'}
   console.log('non_emr_txml_ltfu data updated succesfully'+res);
}).catch(function (err) 
{
  // error
  console.log(err);  
  alert(''+err);
}); 
  
 
}




//__________________________________________Differenciated Care______________________________________________


 var nonemr_diffcare_db = new PouchDB(nonemr_diffcare);
 
var remoteCouch = false;
var nonemr_diffcare_details;


function add_nonemr_diffcare(id,ccc_number,visitdate,Stability,DC_Model,well_unwell,timestamp,user_id,syncstatus) {
   nonemr_diffcare_details = {
//id should consist of Patientcccno and also datevisit conducted
id_:id,
ccc_number:ccc_number,
visitdate:visitdate,
Stability:Stability,
DC_Model:DC_Model,
well_unwell:well_unwell,
timestamp:timestamp,
user_id:user_id,
completed: false
  };
  nonemr_diffcare_db.put(nonemr_diffcare_details, function callback(err, result) 
  {
    if (!err) 
    {
      console.log('nonemr_diffcare data added succesfully');
    }
    else{
        console.log(err);  
        
     alert("Duplicate Error!.You have already entered data for that patient.Consider editing instead "+err);
        
    }
    
   
  });
}



function update_nonemr_diffcare(id,ccc_number,visitdate,Stability,DC_Model,well_unwell,timestamp,user_id,syncstatus) {
   
 $("#synclog").html("saving differenciated data record for "+ccc_number);

nonemr_diffcare_db.upsert(id, function (doc) 
{

doc.ccc_number=ccc_number;
doc.visitdate=visitdate;
doc.Stability=Stability;
doc.DC_Model=DC_Model;
doc.well_unwell=well_unwell;

doc.timestamp=timestamp;
doc.user_id=user_id;
doc.syncstatus=syncstatus; 
  
  return doc;
}).then(function (res) 
{
  // success, res is {rev= '1-xxx', updated= true, id= 'myDocId'}
   console.log('nonemr_diffcare data updated succesfully'+res);
}).catch(function (err) 
{
  // error
  console.log(err);  
  alert(''+err);
}); 
  
 
}



//______________________________________Username_____________________________

  
    //PouchDB.debug.enable('*');
    //PouchDB.debug.disable();
var userdb = new PouchDB('activecounsellordetails_vlmis');

var userdetails;

//receive the artist, song title and lyrics text
function adduser(code,cname,cfacil,fullname) {
   userdetails = {
        _id: ""+code, //this is static since we cant have two users using the same phone
	cname:cname,
        fullname:fullname,
        cfacil:cfacil,        
        completed: false
  };
  userdb.put(userdetails, function callback(err, result) {
    if (!err) {
      console.log('counsellor added succesfully');
    }
    else{
        console.log(err);
        
    }
    
    setTimeout(delayedrefresh,1500);
  });
}	


  function updateuser(){
   //alert("save called");   
   var counsname=$("#counsellorreg").val();   
   var counsfacil=$("#counsellorfacil").val().replace("'","");
   var fullname=$("#counsellorreg").find(':selected').data("fullname");
   var code=$("#counsellorreg").find(':selected').data("code");
   
   if(counsname===''){alert("Enter Counsellor name");}
   else if(counsfacil===''){alert("Enter Counsellor facility");}
   else 
   {
      
    adduser(code,counsname,counsfacil,fullname); 
   //showuser();   
       
   }
   
  }  
    
   function showuser(){
       
userdb.allDocs({include_docs: true, ascending: true}).then(function (da) {
if(da.total_rows===0){
    //activatecounsellors();
$("#usernamelabel").html("Activate a User");
//$("#usernamelabel").click();
$("#usernamelabel").click();

                      }
     else {
       
            var counsellors="<option value=''>select  Counsellor</option>";
            var a;
     for(a=0;a<da.total_rows;a++){
                var dat={}; 
           
	       dat=da.rows[a].doc;
                
            if(dat.cname!=='')
            {
                if(da.total_rows===1){
          counsellors="<option value='"+dat.cname+"'>"+dat.cname+"</option>";
           $("#facilityname").val(dat.cfacil);
           $("#facilityname_zerorpt").val(dat.cfacil);
        
            $('#facilityname').select2();
            $('#facilityname_zerorpt').select2();
           
           $("#usernamelabel").html("Hi "+dat.cname);
           
           // validatemodalities();
                                     
                                     }
       else {
           counsellors+="<option value='"+dat.cname+"'>"+dat.cname+" ["+dat.cfacil+"]</option>";
           
            }
           
           $("#counsellor").html(counsellors);
          $('#counsellor').select2(); 

          
           user=dat.cname;
            }
            else {
             counsellors="<option value=''>Activate a User</option>";
             $("#counsellor").html(counsellors);
     }
   

     }//end of row

        }
}).catch(function (err){console.log("makosa ni :"+err.reason);   if(err.reason==='QuotaExceededError'){alert("Your device has run out of space.Please create space by deleting unwanted videos,photos or large documents");}  });
	} //end of function
        
        
     //showuser();
     
   function loaduser()
   {
   //alert("save called");   
   var cname=$("#counsellorreg").val().replace("'","");   
   var cfacil=$("#counsellorfacil").val();   
   var fullname=$("#counsellorreg").find(':selected').data("fullname"); 
   var code=$("#counsellorreg").find(':selected').data("code"); 
        adduser(code,cname,cfacil,fullname); 
        
        
  }  
      
    
//This is a document to save all facilities for offline use 
var db = new PouchDB('facilities');
var remoteCouch = false;
var receiveddata;

//add facility details here
function addfacilities(mflcode,county,subcounty,facility,longitude,latitude,sitetype) {
   receiveddata = {
        _id: mflcode,
	facility:facility,
        county:county,
	subcounty:subcounty,
        latitude:latitude,
        longitude:longitude,
        sitetype:sitetype,
        completed: false
  };
  db.put(receiveddata, function callback(err, result) {
    if (!err) {
      console.log('facilities added succesfully');
    }
  });
}	

function updatefacilities(mflcode,county,subcounty,facility,longitude,latitude,sitetype) {
 
 db.get(mflcode).then(function (doc) {
        
  //doc.age = 4;
 
   if(mflcode!=='null' && mflcode!=='' ){
    doc._id=mflcode;
    doc.facility=facility;
        doc.county=county;
	doc.subcounty=subcounty;
        doc.latitude=latitude;
        doc.longitude=longitude;
        doc.sitetype=sitetype;
   //alert('called');
  // put them back
  return db.put(doc);
   }
});
 
 
}


//a function to load facilities data from the 



//========================SAVE TARGETS============================
//========================SAVE TARGETS============================

var counsellorslistdb = new PouchDB('counsellorslist_rriv2');
var remoteCouch = false;
var receivedcounsellors;



function addcounsellorslist(active,code,gender,county,cadre,facility,mflcode,fullname,Currentfacility,Currentmflcode,RRI_Name) 
{
   receivedcounsellors = {
_id: code,	
isactive:active,
gender:gender,
county:county,
cadre:cadre,
facility:facility,
mflcode:mflcode,
fullname:fullname,
Currentfacility:Currentfacility,
Currentmflcode:Currentmflcode,
RRI_Name: RRI_Name
  };
  counsellorslistdb.put(receivedcounsellors, function callback(err, result) {
    if (!err) {
      //console.log('targets added succesfully');
    }
  });
}

function updatecounsellorslist(active,code,gender,county,cadre,facility,mflcode,fullname,Currentfacility,Currentmflcode,RRI_Name){
  //console.log(id);
   counsellorslistdb.get(code).then(function (doc) {
 
   if(code!=='null' && code!=='' ){
       

doc.isactive =active;
doc.gender =gender;
doc.county =county;
doc.cadre =cadre;
doc.facility =facility;
doc.mflcode =mflcode;
doc.fullname =fullname;
doc.Currentfacility =Currentfacility;
doc.Currentmflcode =Currentmflcode;
doc.RRI_Name = RRI_Name;
        
   //alert('called');
  // put them back
  return counsellorslistdb.put(doc);
                                         }
});      
        
    
}




function getcounsellorslist(){
    
   
              $.ajax({
                    url:'getcancellors',                            
                    type:'get',  
                    dataType: 'json',  
                    success: function(data) {
                   
                 //alert(data[0].facility_name);    
                     for(var i=0;i<data.length;i++){
                         
                       // console.log(data[i].facility_name) 
                        
                        addcounsellorslist( data[i].active,data[i].code,data[i].gender,data[i].county,data[i].cadre,data[i].facility,data[i].mflcode,data[i].fullname,data[i].Currentfacility,data[i].Currentmflcode,data[i].RRI_Name);
                        updatecounsellorslist( data[i].active,data[i].code,data[i].gender,data[i].county,data[i].cadre,data[i].facility,data[i].mflcode,data[i].fullname,data[i].Currentfacility,data[i].Currentmflcode,data[i].RRI_Name);
                        
                      if(i===data.length-2){
                          activatecounsellors();
                          
                      } 
                     }
                       
                   
        
                                           }
                                           
                                              ,
                    error: function(XMLHttpRequest, textStatus, errorThrown) {
                        activatecounsellors();
        //alert('offline');
	$('#exportbutton').hide();
       // alert("failed");
        $("#exportresponse").html("<b><font color='orange'>Connect to internet to export data </b><br/>");
    }
                        
                         });
    
    
}

//getcounsellorslist();





function checkinternet()
{
    
  console.log(" is internet available?");  
    
$('#exportbutton').hide();
 $("#exportresponse").html("<b><font color='orange'>checking for internet..</b><br/>");
    
   
              $.ajax({
             url:'validateAccess',                            
            type:'get',  
            dataType: 'html',  
           
    success: function(data) {
                             //alert('offline');
	$('#exportbutton').show();
	$('#savezeroreportbutton').show();
       // alert("failed");
        $("#exportresponse").html("");
        $("#savezeromsg").html("");
   
    }
                                           
    ,
    error: function(XMLHttpRequest, textStatus, errorThrown) 
    {
        //alert('offline');
	$('#exportbutton').hide();
	$('#savezeroreportbutton').hide();
       // alert("failed");
        $("#exportresponse").html("<b><font color='orange'>Connect to internet to export data </b><br/>");
        $("#savezeromsg").html("<b><font color='orange'>Connect to internet to submit zero report</b><br/>");
    }
                        
                         });
    
    

    
}





//=========================SAVE WEEKLY DATA========================

 
//This is a document to save all tables 
var dailydatadb = new PouchDB('workload_client_data',{auto_compaction: true});
var remoteCouch = false;
var weeklydata;




//prepare form data

//===================================================INSERT Dailty DATA===================================

var id=null;
var facility=null;
var counsellor=null;
var user=null;
var timestamp=null;
var mflcode=null;

var ccc_number=null;
var Date_of_Birth=null;
var Sex=null;
var Population_Type=null;
var Date_Initiated_On_ART=null;
var Current_Regimen=null;
var Last_Clinical_Visit_Date=null;
var Screened_For_TB=null;
var Days_of_Dispense=null;
var Months_of_Dispense=null;
var Next_appointment_Date=null;
var Monthly_Patient_Status=null;
var Started_on_IPT=null;
var Date_Started_on_IPT=null;
var IPT_Outcome=null;
var Date_of_IPT_Outcome=null;
var Reason_Not_Completed=null;
var First_Viral_Load_Date=null;
var Date_Last_VL_Conducted=null;
var Justification=null;
var VL_Results=null;
var PMTCT_Status=null;
var Date_Restarted_on_ART=null;
var Date_LTFU=null;
var Reason_For_LTFU=null;
var care_ending_reason=null;
var Cause_of_Death=null;
var Stability=null;
var DC_Model=null;

var uzito=null;
   //added 201605 
    var progressbarstoskip=[];
     var allindicatorsarray=["rowid","facilityname","counsellor","ccc_number","Date_of_Birth","Sex","Population_Type","Date_Initiated_On_ART","Current_Regimen","Last_Clinical_Visit_Date","Screened_For_TB","Days_of_Dispense","Months_of_Dispense","Next_appointment_Date","Monthly_Patient_Status","Started_on_IPT","Date_Started_on_IPT","IPT_Outcome","Date_of _IPT_Outcome","Reason_Not_Completed","First_Viral_Load_Date","Date_Last_VL_Conducted","Justification","VL_Results","PMTCT_Status","Date_Restarted_on_ART","Date_LTFU","Reason_For_LTFU","care_ending_reason","Cause_of_Death","Stability","DC_Model"];
     var allnontargetindicatorsarray=[];
     var allcommentsarray=[];
     var allprogressbar_hiddentext_array=[];
     var hidetargetsui='yes';
function createdynamicinputs(){
    
    
     $(document).ready(function(){
         
       
   
    
    //progress bar report section
    
if(1===2){
    
         $.getJSON("progressbar.json",function(result){
             var table="";
             var row1="";
             var row2="";
             var count=1;
             for(a=0;a< result.length; a++){
              
            
             var indicatorname=result[a].IndicatorName;    
             var progressbarID=result[a].progressbarID;
             var label=result[a].Age;
             var Commentsid=result[a].Commentsid;            
             var isnewrow=result[a].newrow;
             var datafieldid=result[a].datavalueid;
             var progressbarredgreen =result[a].progressbarredgreen;
             if(progressbarredgreen==='no'){progressbarstoskip.push(progressbarID);}
             
             
             allprogressbar_hiddentext_array.push(datafieldid+"_in");
      
             
             
             if(isnewrow===1)
             {
               
                 row1="";
                 count++;
                 row2+=row1;
             }
             else{
                 
                 row1="";
             }
              if(isnewrow===1 && count===2)//first row
             {
             row2+=" <tr> <td class='col-xs-12'>";
              }
              else  if(isnewrow===1 && count > 2 && count<result.length){
              row2+=" </td> </tr> <tr> <td class='col-xs-12'>";    
                  
              }
              
              
              row2+=" <label> "+indicatorname+" <font color='orange'><b> "+label+" </b> <input data-"+datafieldid+"_in='0' type='hidden' id='"+datafieldid+"_in' /> </font> </label><div class='progress'> <div class='progress-bar progress-bar-info' id='"+progressbarID+"' role='progressbar' aria-valuenow='72' aria-valuemin='0' aria-valuemax='100' style='width: 100%;text-align:left;'> <span  id='"+datafieldid+"' style='color:black;'>No data</span></div>  </div> ";
            //IndicatorID	Age	IndicatorName	Level	datainputtype	Min	Max	onblur	onkeypress	Class	Required
    if(Commentsid!=='')
  {
      allcommentsarray.push(Commentsid);
     row2+="<label>Comments</label><textarea class='form-control' id='"+Commentsid+"'  onkeyup='savecomments(\""+Commentsid+"\");' name='"+Commentsid+"' ></textarea>";
  }
                //now do an appending
                 
             }//end of for loop
             row2+=" </tr> ";   
             row2+=" <tr><td colspan='1'><a id='finishbutton' href='#' style='margin-left: 50%;' onclick='setTimeout(delayedrefresh(),1500);clearcmtsandprcent();' class='btn btn-success btn-lg'>Finish</a></td></tr><tr><td colspan='1'> <div class='alert alert-success' id='message' style='display:none;'><button type='button' class='close' data-dismiss='alert'>x</button><span id='actiondone'></span></div></td></tr> ";   
            
            //alert(row2);
             $("#reportstable").html(row2);
             
    // alert(result[0].IndicatorName);
    });//end of getting json archive
    
     }
    
        
         
  });   //end of checking if document is ready
    
    
}

createdynamicinputs();


function sumofindicators(sourceindicators,destinationindicator){
    var sourceindicatorsarray=sourceindicators.split("@");
  
   
    var destinationelement=destinationindicator;
    var total=0;
    for(b=0;b<sourceindicatorsarray.length;b++){
        //check if there
        if($("#"+sourceindicatorsarray[b]).val()!==''){
      total=parseInt(total)+parseInt($("#"+sourceindicatorsarray[b]).val()); 
        
            $("#"+destinationelement).val(total);
            }
        if(b===(sourceindicatorsarray.length-1)){
        
            yearlytotal(destinationindicator);    
            
        }                                       
        }
                                              
                                             
    
}





function submitDataToPouch(){
    setrowid();
    
    //receive all the fields from the weekly data from
id=$("#rowid").val();

facility=$("#facilityname").val();

counsellor=$("#counsellor").val();




ccc_number=$('#ccc_number').val();
Date_of_Birth=$('#Date_of_Birth').val();
Sex=$('#Sex').val();
Population_Type=$('#Population_Type').val();
Date_Initiated_On_ART=$('#Date_Initiated_On_ART').val();

Last_Clinical_Visit_Date=$('#Last_Clinical_Visit_Date').val();

Days_of_Dispense=$('#Days_of_Dispense').val();
Months_of_Dispense=$('#Months_of_Dispense').val();
Next_appointment_Date=$('#Next_appointment_Date').val();
Current_Regimen=$('#Current_Regimen').val();
Monthly_Patient_Status=$('#Monthly_Patient_Status').val();
Screened_For_TB=$('#Screened_For_TB').val();

Started_on_IPT=$('#Started_on_IPT').val();
Date_Started_on_IPT=$('#Date_Started_on_IPT').val();
IPT_Outcome=$('#IPT_Outcome').val();
Date_of_IPT_Outcome=$('#Date_of_IPT_Outcome').val();
Reason_Not_Completed=$('#Reason_Not_Completed').val();


First_Viral_Load_Date=$('#First_Viral_Load_Date').val();
Date_Last_VL_Conducted=$('#Date_Last_VL_Conducted').val();
Justification=$('#Justification').val();
VL_Results=$('#VL_Results').val();
PMTCT_Status=$('#PMTCT_Status').val();


Date_Restarted_on_ART=$('#Date_Restarted_on_ART').val();
Date_LTFU=$('#Date_LTFU').val();
care_ending_reason=$('#care_ending_reason').val();
Reason_For_LTFU=$('#Reason_For_LTFU').val();
Cause_of_Death=$('#Cause_of_Death').val();


Stability=$('#Stability').val();
uzito=$('#weight').val();

var well_unwell="";

DC_Model=$('#DC_Model').val();

var well_unwell='';

var user_id=counsellor; 

var currentdate = new Date();
    
var mn=""+(currentdate.getMonth()+1) ;

var dt=""+currentdate.getDate();
    var hr=""+currentdate.getHours();
    var min=""+currentdate.getMinutes();
    var sc=""+currentdate.getSeconds();
    if(mn.length===1){mn='0'+mn;}
    if(length===1){dt='0'+dt;}
    if(hr.length===1){hr='0'+hr;}
    if(min.length===1){min='0'+min;}
    if(sc.length===1){sc='0'+sc;}
   
    var timestamp = "" + currentdate.getFullYear() + "-"+ mn + "-"+ dt + " "+ hr+ ":" + min+ ":"+ sc;
    
    
    if(user===''){user='hsdsa';}
    
    var syncstatus='No';  
    
     var id=null;
     
      
     if(counsellor==='' || counsellor==='select  Counsellor')
     {         
  
   alert('Select User');
   //$("#facilityname select:first").focus();
   
   $("#counsellor").css('border-color','red');
    //$("select:first").focus();
     }
     
 
   
       else {
           
     var facilitynameandmfl=facility.split("_");        
    // var startd=startdate.replace('-','');      
    // var startd=startd.replace('-','');      
    
     var cns=counsellor.replace('-','');
    
   
     id=$("#rowid").val();
      
     var facilityname=facilitynameandmfl[1];
     var mflcode=facilitynameandmfl[0];
            //save data to the db
        
            var Visit_id=""+id+"_"+Last_Clinical_Visit_Date;
            var IPT_Visit_id=""+id+"_"+Date_Started_on_IPT;
            var VL_Visit_id=""+id+"_"+Date_Last_VL_Conducted;
            
            
 update_nonemr_all(id,mflcode,facility,ccc_number,Date_of_Birth,Sex,Population_Type,Date_Initiated_On_ART,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results, Stability,DC_Model,/**well_unwell*/Stability,uzito,  timestamp,user_id,syncstatus);
 //ccc_number_
 update_nonemr_curr(Visit_id,ccc_number,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,uzito,timestamp,user_id,syncstatus);           
 update_nonemr_ipt(IPT_Visit_id,ccc_number,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,timestamp,user_id,syncstatus);
 update_nonemr_vl(VL_Visit_id,ccc_number,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,timestamp,user_id,syncstatus);          
 update_nonemr_diffcare(id,ccc_number,Last_Clinical_Visit_Date,Stability,DC_Model,Stability,timestamp,user_id,syncstatus);
 
            console.log(Visit_id,ccc_number,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,timestamp,user_id,syncstatus);           
           


$("#message").show();
$("#actiondone").html("Data Saved Successfully");
//call the function that loads entered data


 window.scrollTo(0,0);
setTimeout(delayedrefresh,1500);
 // delayedrefresh
 //delayedrefresh();
       }
       
    
}


function clickreportstab(){
   
 $('#reportsbutton').click();
}


//===========================================EMPTY WEEKLY DATA FIELDS AFTER INSERT============================================================

function cleardailyfields()
{
   // $("#facilityname").val("");
   //No facility name should have an underscore since its a special key
   
//$("#startdate").val("");   
$("#enddate").val("");
$("#modality").val("");
$("#counsellor").val("");

for(b=0;b<allindicatorsarray.length;b++){
    
  $("#"+allindicatorsarray[b]).val("");  
    
} 

//clear data values

//for(b=0;b<allnontargetindicatorsarray.length;b++){
//    
//  $("#"+allnontargetindicatorsarray[b]).attr("data-previous_"+allnontargetindicatorsarray[b],"0");  
//  $("#"+allnontargetindicatorsarray[b]).attr("data-"+allnontargetindicatorsarray[b],"0");  
//    
//} 

    
}

function clearcmtsandprcent(){
    
   clearcommentsonly();
   clearpercentsonly();
    
}

function clearpercentsonly(){
       //clear progress bar hidden fields too
   
  for(b=0;b<allprogressbar_hiddentext_array.length;b++){
    
  $("#"+allprogressbar_hiddentext_array[b]).val("");  
    
}  
    
}


function clearcommentsonly(){
    
        
       //comnts
 
     for(b=0;b<allcommentsarray.length;b++){
    
  $("#"+allcommentsarray[b]).val("");  
    
                                            }//end of for loop 
    
}



var dbdata="";
var dbdata1="";

//===================================================VIEW WEEKLY DATA============================================================
//a function to select a few search data that should appear in a data table
function selectsearchdata()
{
    
    
    
    //rread from weekly data db
    

  
    
  nonemr_all_db.allDocs({include_docs: true, ascending: true}).then( function(doc) { 
 
     
	   //console.log(doc);
	   for(b=0;b<doc.total_rows;b++)
           {
             
               var dat={};
               dat=doc.rows[b];
               
                 var myid=dat.doc._id;
               if(myid.indexOf("annual")===-1){
	   
	       
	      //console.log(dat.doc.facility);
              //how to reference each column 
              //alert(dat.doc.startdate);
              //dat.doc._id
              var statusicon="<i class='glyphicon glyphicon-cloud-upload' style='color:red;' title='data not exported'></i>";
              if(dat.doc.syncstatus==="Yes"){
                 statusicon=""; 
                  
               }
	     var hasresult=dat.doc.VL_Results;
             
             
             if(hasresult!==null && typeof hasresult !== 'undefined'){
             hasresult.replace('copies/ml','');
         }
         else {
           hasresult="";  
         }
             
             if ( hasresult===''){hasresult="no result";}
		 //dbdata+="<tr><td> "+dat.doc.startdate+" </td><td>"+dat.doc.syncstatus+"</td><td>"+dat.doc.facility+"</td><td><button class='btn-info' onclick='loadsaveddailydata(\""+dat.doc._id+"\",\""+dat.doc.facility+"\")'>Edit</button></td></tr>";
		 dbdata+="<tr id=\""+dat.doc._id+"\"><td> "+dat.doc.ccc_number+" </td><td>Last ARV Date: <b>"+dat.doc.Last_Clinical_Visit_Date+"</b> <br/>Last VL: <b> "+dat.doc.Date_Last_VL_Conducted+"  [ "+hasresult+" ] </b> <br/> Next TCA: <b>"+dat.doc.Next_appointment_Date+" </td> <td><button class='btn-info' onclick='loadsaveddata(\""+dat.doc._id+"\",\""+dat.doc.Facility+"\",\"no\")'>Edit "+statusicon+"</button></td></tr>";
          	    
                  }
            } //end of for loop
                    
	appendtabledata(dbdata);
			
  }).catch(function (err){console.log(err)});
    
  
    //read data from the db
    
  
}



function selectconsdata()
{
    
    
    
    //rread from weekly data db
    

  
    
  userdb.allDocs({include_docs: true, ascending: true}).then( function(doc) { 
 
     
	   //console.log(doc);
	   for(b=0;b<doc.total_rows;b++)
           {
             
               var dat={};
               dat=doc.rows[b];
               
                 var myid=dat.doc._id;
               if(myid.indexOf("annual")===-1){
	   
	       
	      //console.log(dat.doc.facility);
              //how to reference each column 
              //alert(dat.doc.startdate);
              //dat.doc._id
              var statusicon="<i class='glyphicon glyphicon-cloud-upload' style='color:red;' title='data not exported'></i>*";
              if(dat.doc.syncstatus==="Yes"){
                 statusicon=""; 
                  
               }
	     var fc=dat.doc.cfacil;
             var fcar=fc.split("_");
             
		 //dbdata+="<tr><td> "+dat.doc.startdate+" </td><td>"+dat.doc.syncstatus+"</td><td>"+dat.doc.facility+"</td><td><button class='btn-info' onclick='loadsaveddailydata(\""+dat.doc._id+"\",\""+dat.doc.facility+"\")'>Edit</button></td></tr>";
		 dbdata1+="<tr id=\""+dat.doc._id+"\"><td> "+fcar[1]+" </td><td>"+dat.doc.cname+"</td></tr>";
          	    
                  }
            } //end of for loop
                    
	appendtablecounsellordata(dbdata1);
			
  }).catch(function (err){console.log(err)});
    

    
    
    
    
    
    
    //read data from the db
    
  	  
    
    
}



selectconsdata();



//--------------------------------------------------------------------------------------------------------------------------------
//
function appendtablecounsellordata( dbdata1 ) 
{
    
     $("#searchtabledivcns").html("<table id='searchtablecns' class='table table-striped table-bordered'><thead><tr><th style='width:50%;'>Facility</th><th style='width:50%;'>Counsellor Name</th></tr></thead><tbody>"+dbdata1+"</tbody></table>");
         
	   $(document).ready(function() {
                
         /* $('#searchtable').DataTable({              
              "autoWidth": true,
              "paging": true,
              "pagingType": "full",
              "lengthChange": false,  "order": [[0,'desc']]                    
          }).makeEditable({sDeleteURL: "js/deleterecords.js"});
          **/
          //new code
   var table2 = $('#searchtablecns').DataTable({"autoWidth": true,
              "paging": true,
              "pagingType": "full",
              "lengthChange": false,  
              "order": [[0,'desc']]});
 
    $('#searchtablecns tbody').on( 'click', 'tr', function () {
        if ($(this).hasClass('selected') ) {
            $(this).removeClass('selected');
             $('#btnDeleteRowcns').hide();  
        }
        else {
            table2.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
           $('#btnDeleteRowcns').show();  
            }
    } );
 
    $('#btnDeleteRowcns').click( function () {
       
     var tablerowid1=table2.$('tr.selected').attr('id');
      
        
        if(ConfirmDeletecns()===true){
        
        deletecnsdata(tablerowid1);
        
        table2.row('.selected').remove().draw( false );
    }
        //call the delete function now
    } );

          
          
          
          
            
                                     } ); 
    
                                                          }
                                                          
                                                         // appendtablecounsellordata( dbdata1 );
                                                          
//
//
//--------------------------------------------------------------------------------------------------------------------------------



//call the function that displays the data

function appendtabledata( dbdata ){
    
     $("#searchtablediv").html("<table id='searchtable' class='table table-striped table-bordered'><thead><tr><th style='width:30%;'>CCC No.</th><th style='width:50%;'>Summary</th><th style='width:20%;'>Action</th></tr></thead><tbody>"+dbdata+"</tbody></table>");
         
	   $(document).ready(function() {
                
         /* $('#searchtable').DataTable({              
              "autoWidth": true,
              "paging": true,
              "pagingType": "full",
              "lengthChange": false,  "order": [[0,'desc']]                    
          }).makeEditable({sDeleteURL: "js/deleterecords.js"});
          **/
          //new code
          
     
    var table = $('#searchtable').DataTable({"autoWidth": true,
              "paging": true,
              "pagingType": "full",
              "lengthChange": false,  
              "order": [[0,'desc']]});
 
    $('#searchtable tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
             $('#btnDeleteRow').hide();
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
             $('#btnDeleteRow').show();
        }
    } );
 
    $('#btnDeleteRow').click( function () {
        
     var tablerowid=table.$('tr.selected').attr('id');
        
        if(ConfirmDelete()===true){
        
        deletedata(tablerowid);
        
        table.row('.selected').remove().draw( false );
    }
        //call the delete function now
    } );

          
          
          
          
            
                                     } ); 
    
                                                          }

 selectsearchdata();

function showreports(){
    
     $("#reportsbutton").show();
}


function loadsaveddata(id,facility,openreportstab ){
    $("#reportsbutton").show();
    //mfl_cccnumber
  //  alert(id);
 //load from weekly db where id is as selected   
  var mflandfacil=facility.split('_');
        	
 nonemr_all_db.get(id).then(function (doc) {
            
var rowid=id;    
//populate div with respective content
    
$("#rowid").val(id);
    
$("#facilityname").val(facility);   

//$("#counsellor").val(doc.user_id);

$('#ccc_number').val(doc.ccc_number);

    loadVlArtHistory(doc.ccc_number);

//console.log("selected ccc number ni "+doc.ccc_number);

$('#ccc_number').prop('readonly', true);

$('#Date_of_Birth').val(doc.Date_of_Birth);
$('#Sex').val(doc.Sex);
$('#Population_Type').val(doc.Population_Type);
$('#Date_Initiated_On_ART').val(doc.Date_Initiated_On_ART);

$('#Last_Clinical_Visit_Date').val(doc.Last_Clinical_Visit_Date);

$('#Days_of_Dispense').val(doc.Days_of_Dispense);
$('#Months_of_Dispense').val(doc.Months_of_Dispense);
$('#Next_appointment_Date').val(doc.Next_appointment_Date);
$('#Current_Regimen').val(doc.Current_Regimen);
//$('#Monthly_Patient_Status').val();
$('#Screened_For_TB').val(doc.Screened_For_TB);

$('#Started_on_IPT').val(doc.Started_on_IPT);
$('#Date_Started_on_IPT').val(doc.Date_Started_on_IPT);
$('#IPT_Outcome').val(doc.IPT_Outcome);
$('#Date_of_IPT_Outcome').val(doc.Date_of_IPT_Outcome);
$('#Reason_Not_Completed').val(doc.Reason_Not_Completed);


$('#First_Viral_Load_Date').val(doc.First_Viral_Load_Date);
$('#Date_Last_VL_Conducted').val(doc.Date_Last_VL_Conducted);
$('#Justification').val(doc.Justification);
$('#VL_Results').val(doc.VL_Results);
$('#PMTCT_Status').val(doc.PMTCT_Status);
$('#Date_Restarted_on_ART').val(doc.Date_Restarted_on_ART);
$('#Date_LTFU').val(doc.Date_LTFU);
$('#care_ending_reason').val(doc.care_ending_reason);
$('#Reason_For_LTFU').val(doc.Reason_For_LTFU);
$('#Cause_of_Death').val(doc.Cause_of_Death);
$('#Stability').val(doc.Stability);
$('#DC_Model').val(doc.DC_Model);
$('#weight').val(doc.uzito);


 getAge();
 PredictnextDate();

 UpdatePatientStatus(); //update their activeness. Call this when ART Sections have loaded


 IsCompletedIPT();
 IsDiscontinuedIPT();
 IsStartedIPT();
 IsStable();
 isDSDValid(); //after loadinfg of Date Initiated On ART

 isRestartART();
 isDEAD();
 isLTFU();
isLDLChecked();
isShowWeight();
   
     //$('#facilityname').select2(); 
 $('#facilityname').select2();
 $('#counsellor').select2(); 
 $("#counsellor").css('width','100%');
 $("#facilityname").css('width','100%');
 $(".select2-container").css('width','100%');
     
     
     //$("#savebutton").hide();
     
     //$("#updatebutton").show();
     //$("#savenewbutton").show();
      checkids();
      
//      asklinkage();
//whichfacility();
//specifyFacilityLinked();
//isshowdiedordeclined();
//isshowdeclinedother();
//isshowdeadother();
      
      
 $('#newdatabutton').html("<i class='glyphicon glyphicon-edit'></i>Edit Data");

  //if this is a request to show the unentered comments
  //open the reports tab and focus on the first unentered comment
    if(openreportstab.indexOf("yes")!==-1){
        
      var contentarray=openreportstab.split("@"); 
      //alert(contentarray[1]);
     
      clickreportstab();
 //     document.getElementById(contentarray[1]).focus();
 $("#"+contentarray[1]).focus();
               }
               else {
                $('#newdatabutton').click();    
                   
               }
  
});

 selectwidth();
}








$("#refreshpage" ).click(function() 
{
    window.location.reload();
    cleardailyfields();
   
});



$("#exportdataanchor1" ).click(function() 
{
    checkinternet();
   
});
$("#zeroreportanchor" ).click(function() 
{
    checkinternet();
   
});


$("#refr" ).click(function() 
{
    window.location.reload();
   // cleardailyfields();
});


$("#refr1" ).click(function() 
{
    window.location.reload();
   // cleardailyfields();
});

function delayedrefresh()
{
      window.location.reload();
    cleardailyfields();
}


function updateweeklydata()
{
 //this id will be used to update the entered data
   var id=$("#rowid").val();
   
  // var annualid=id.replace(/weekly/g,"annual");
   
        //receive all the fields from the weekly data from
id=$("#rowid").val();
facility=$("#facilityname").val();
counsellor=$("#counsellor").val();

date_tested=$("#enddate").val();

opd_t=$("#opd_t").val();
screened=$("#screened").val();
screenrate=$("#screenrate").val();
opd_eligible=$("#opd_eligible").val();
opd_tested=$("#opd_tested").val();
opd_positive=$("#opd_positive").val();
opd_Yield=$("#opd_Yield").val();
pmtct_tested=$("#pmtct_tested").val();
pmtct_positive=$("#pmtct_positive").val();
pmtct_Yield=$("#pmtct_Yield").val();
index_tested=$("#index_tested").val();
index_positive=$("#index_positive").val();
index_yield=$("#index_yield").val();
self_test=$("#self_test").val();
Referred_Prep=$("#Referred_Prep").val();
gbv=$("#gbv").val();
Total_Tested=$("#Total_Tested").val();
Total_Positive=$("#Total_Positive").val();
Total_Yield=$("#Total_Yield").val();
Total_Linked=$("#Total_Linked").val();
Total_Linkage=$("#Total_Linkage").val();


//user=$("#user").val();
timestamp=$("#timestamp").val();


    var user="hsdsa"; 

    var currentdate = new Date();
    
   var mn=""+(currentdate.getMonth()+1) ;
    var dt=""+currentdate.getDate();
    var hr=""+currentdate.getHours();
    var min=""+currentdate.getMinutes();
    var sc=""+currentdate.getSeconds();
    if(mn.length===1){mn='0'+mn;}
    if(length===1){dt='0'+dt;}
    if(hr.length===1){hr='0'+hr;}
    if(min.length===1){min='0'+min;}
    if(sc.length===1){sc='0'+sc;}
    
    
    var timestamp = "" + currentdate.getFullYear() + "-"+ mn + "-"+ dt + " "+ hr+ ":" + min+ ":"+ sc;
    
    
    if(user===''){user='hsdsa';}
    
    var syncstatus='No';  
    
     var id=null;
          
     if(facility==='')
     {         
  
   alert('Select facility');
   //$("#facilityname select:first").focus();
   
   $("#facilityname").css('border-color','red');
    //$("select:first").focus();
     }
     
     else if(counsellor===''||counsellor==='select  Counsellor')
     {         
  
   alert('Select User');
   //$("#facilityname select:first").focus();
   
   $("#counsellor").css('border-color','red');
    //$("select:first").focus();
     }
 
      else if (enddate==='')
     {
         
     alert('Select Reporting Date');
   $("#enddate").focus();    
     } 
     
   else if(checktotaltests()===false){
     
     
     
 }
     
     
 else if(checktotalpositives()===false){
     
     
     
 }

   
       else {
           
     var facilitynameandmfl=facility.split("_");        
    // var startd=startdate.replace('-','');      
     //var startd=startd.replace('-','');      
     var endd=enddate.replace('-','');      
     var endd=endd.replace('-','');      
     var cns=counsellor.replace('-','');
        
     var facilityname=facilitynameandmfl[1];
            //save data to the db
 // saveweeklyupdates(id,facilitynameandmfl[1],enddate,counselorname,modality, tested,positive_tg,positive,linked_here,linked_else,declined,dead,tca,timestamp,user, syncstatus) ;
        
            //________________________________
          
     id=$("#rowid").val();
  
 saveweeklyupdates(id,facilityname,counsellor,date_tested,opd_t,screened,screenrate,opd_eligible,opd_tested,opd_positive,opd_Yield,pmtct_tested,pmtct_positive,pmtct_Yield,index_tested,index_positive,index_yield,self_test,Referred_Prep,gbv,Total_Tested,Total_Positive,Total_Yield,Total_Linked,Total_Linkage,timestamp,user, syncstatus) ;
  
            //
            //________________________________
            
            
            

//call refressh code here

 //selectsearchdata();
$("#message").show();
$("#actiondone").html("Data Updated Successfully");
//call the function that loads entered data
window.scrollTo(0,0);
console.log('weekly data updated');

//$('#reportsbutton').click();
//$('#inpatient_uptake_cmts').focus();
setTimeout(delayedrefresh,1800);
//delayedrefresh();
       }
       
    
}
   
function saveweeklyupdates(id,facilityname,counsellor,date_tested,opd_t,screened,screenrate,opd_eligible,opd_tested,opd_positive,opd_Yield,pmtct_tested,pmtct_positive,pmtct_Yield,index_tested,index_positive,index_yield,self_test,Referred_Prep,gbv,Total_Tested,Total_Positive,Total_Yield,Total_Linked,Total_Linkage,timestamp,user, syncstatus) {
 
 
 
 
 dailydatadb.get(id).then(function (doc) {
        
  //doc.age = 4;
 //alert(id);
   if(id!=='null' && id!=='' ){
        //doc._id=id;
  
doc.facility=facilityname;
doc.counselorname=counsellor;
doc.date_tested=date_tested;

doc.opd_t=opd_t;
doc.screened=screened;
doc.screenrate=screenrate;
doc.opd_eligible=opd_eligible;
doc.opd_tested=opd_tested;
doc.opd_positive=opd_positive;
doc.opd_Yield=opd_Yield;
doc.pmtct_tested=pmtct_tested;
doc.pmtct_positive=pmtct_positive;
doc.pmtct_Yield=pmtct_Yield;
doc.index_tested=index_tested;
doc.index_positive=index_positive;
doc.index_yield=index_yield;
doc.self_test=self_test;
doc.Referred_Prep=Referred_Prep;
doc.gbv=gbv;
doc.Total_Tested=Total_Tested;
doc.Total_Positive=Total_Positive;
doc.Total_Yield=Total_Yield;
doc.Total_Linked=Total_Linked;
doc.Total_Linkage=Total_Linkage;


doc.user=user;
doc.timestamp=timestamp;
doc.syncstatus=syncstatus; 

        
        
   //alert('called');
  // put them back
  return dailydatadb.put(doc);
   }
});
 
 
} 
    
  
//==================function to import data

// $('#exportbutton').on('click',function() {
    $("#exportbutton").prop("disabled",false);
     $(this).removeClass('btn-lg btn-default').addClass('btn btn-success');
//});

var syncstatusarray=[];

function importdata(){
    
    //
    importCURRData();
    importIPTData();
    importVLData();
    importDSDData();
    
    var returnedresponses=0;
   // $('#exportbutton').on('click',function() {
    $("#exportbutton").prop("disabled",true);
    $("#exportbutton").removeClass('btn-lg btn-success').addClass('btn btn-default');

var recordsunexported=$("#unexported").val();
                //read db files that have not been synced
    
  $("#exportbutton").hide();
  $("#exportmsg").show();
   $("#exportresponse").append("<b><font color='orange'>Exporting data.. please wait for response.</b><br/>");
  
  nonemr_all_db.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 syncstatusarray=[];
      //read where sync is 0
	   var skipexporting=0;
	   for(c=0;c<doc.total_rows;c++){
               $("#exportbutton").hide();
               $("#exportmsg").show();
               //a variable to check if all comments are added for percents below 80 percent and not amongest the indicators that can be skipped.
             
            var missingcomment="";
	   var dat={};
	   dat=doc.rows[c];
	     // console.log(dat.doc.facility);
              //how to reference each column 
              
        var idyangu=dat.doc._id;
	var num=parseInt(c)-1;
	var missingcommentid="";
        if(dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no"  )
        {

           
        var hrf=" <button class='btn-sm button-info' data-dismiss='modal' onclick=\"loadsaveddailydata('"+dat.doc._id+"','"+dat.doc.facility+"','no"+missingcommentid+"'); \"> Enter Comments</button>";
           

        
 if(skipexporting===0)
 {
            
  updatesyncstatus(dat.doc._id,'Yes');
        
        
            
    $.ajax({
                        url:'importVl',                            
                        type:'get', 
data:{
id:dat.doc._id,
facility:dat.doc.Facility,
ccc_number:dat.doc.ccc_number,
Date_of_Birth:dat.doc.Date_of_Birth,
Sex:dat.doc.Sex,
Population_Type:dat.doc.Population_Type,
Date_Initiated_On_ART:dat.doc.Date_Initiated_On_ART,
Current_Regimen:dat.doc.Current_Regimen,
Last_Clinical_Visit_Date:dat.doc.Last_Clinical_Visit_Date,
Screened_For_TB:dat.doc.Screened_For_TB,
Days_of_Dispense:dat.doc.Days_of_Dispense,
Months_of_Dispense:dat.doc.Months_of_Dispense,
Next_appointment_Date:dat.doc.Next_appointment_Date,
Monthly_Patient_Status:dat.doc.Monthly_Patient_Status,
Reason_For_LTFU:dat.doc.Reason_For_LTFU,
Date_LTFU:dat.doc.Date_LTFU,
care_ending_reason:dat.doc.care_ending_reason,
Cause_of_Death:dat.doc.Cause_of_Death,
Date_Restarted_on_ART:dat.doc.Date_Restarted_on_ART,

Started_on_IPT:dat.doc.Started_on_IPT,
Date_Started_on_IPT:dat.doc.Date_Started_on_IPT,
IPT_Outcome:dat.doc.IPT_Outcome,
Date_of_IPT_Outcome:dat.doc.Date_of_IPT_Outcome,
Reason_Not_Completed:dat.doc.Reason_Not_Completed,

First_Viral_Load_Date:dat.doc.First_Viral_Load_Date,
Date_Last_VL_Conducted:dat.doc.Date_Last_VL_Conducted,
Justification:dat.doc.Justification,
PMTCT_Status:dat.doc.PMTCT_Status,
VL_Results:dat.doc.VL_Results,


Stability:dat.doc.Stability,
DC_Model:dat.doc.DC_Model,
well_unwell:dat.doc.well_unwell,
uzito:dat.doc.uzito,


user_id:dat.doc.user_id,
timestamp:dat.doc.timestamp
},
dataType:'html',  
success: function(data) {
                       
                       returnedresponses++;
                       
                        $("#exportresponse").append("<b>*"+data+'</b><br/>');
                         
                
                         
                   //doc.syncstatus="Yes"; 
   //alert('called');
  // put them back
                   // return dailydatadb.put(doc); 
                   console.log(parseInt(returnedresponses)+" vs "+parseInt(recordsunexported));
                   
                   if(parseInt(returnedresponses)===parseInt(recordsunexported)){
                 $("#exportbutton").show();
                 $("#exportmsg").hide();
                 if(returnedresponses<1000){
                 $("#exportresponse").append("<br/>.<br/>.<br/>.<br/><b><font color='green'><b>"+returnedresponses+" records</b> completed successfully. </b>"); 
                 
                 
                 if(parseInt(recordsunexported)===1)
                 {     
                  
                    $("#screenshotwp").click();                        
                                            
                 }
                 
             //setTimeout(delayedrefresh,2000);
            }
             else {
                      $("#exportresponse").append("<b><font color='orange'>Exporting did not complete successfully.</b>"); 
                 
             }
                       
                   }
        
                                        },
                                 error:function(xhr, s, e){
                                     
                                     console.log("Could not export data");
                                     
                                     $("#exportresponse").append("<b><font color='red'>Exporting did not complete successfully  .</b>"+e); 
                // updatesyncstatus(dat.doc._id,'No');
                                  returnedresponses=1000;   
                                 }       
                        
                         });
            
                        }//end of if skipp exporting === 0
                        //for annual exports, dont sync and dont show alert
                        else if (skipexporting!==0 && idyangu.indexOf("annual")>=0) 
                        {
                       //dont show export failure message     
                            
                        }
            else {
                
                
                $("#exportresponse").append("<br/><b>NOTE:</b><font color='red'> Data for <b>"+dat.doc.facility+"</b> not uploaded due to missing comment(s) on section <b><i>"+missingcomment+"</i></b></font> "+hrf+" <br/>");
            }
                        }
        
                 
                 
                 //if its last loop show
                 
           
                  
             
            if(c===(doc.total_rows-1)){
//                  //$("#exportbutton").show();
//                 //$("#exportmsg").hide();
//                 $("#exportresponse").append("<b><font color='orange'>Exporting Completed.</b>");
  
                      }
          	    } //end of for loop
	 
	
		
  }).then(function (){
     // alert('export complete');
     
           // if(c===parseInt(doc.total_rows)){
                
              // for(var s=0;s<syncstatusarray.length;s++){
//                    
               //  updatesyncstatus(syncstatusarray[s]);
                
          // }
     
  }).catch(function (err){ console.log(err); });
          
  //$("#exportbutton").show();
  //$("#exportmsg").hide();	
   //refresh number of uninmported sites.
   //unsynceddata()
        
        
}


//Import all the other Tables

function importCURRData(){
 
 
  nonemr_curr_db.allDocs({include_docs: true, descending: true}).then( function(doc) {
      
 
	  
	   for(c=0;c<doc.total_rows;c++)
        {
              
      
	var dat={};
	dat=doc.rows[c];
             
        var idyangu=dat.doc._id;
	var num=parseInt(c)-1;
	
        if(dat.doc.syncstatus==="Yes" || dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no")
        {
      
  update_curr_syncstatus(dat.doc._id,'Yes');

                
    $.ajax({
                        url:'importCurr',                            
                        type:'get', 
data:{
id:dat.doc._id,
ccc_number:dat.doc.ccc_number,
Current_Regimen:dat.doc.Current_Regimen,
Last_Clinical_Visit_Date:dat.doc.Last_Clinical_Visit_Date,
Screened_For_TB:dat.doc.Screened_For_TB,
Days_of_Dispense:dat.doc.Days_of_Dispense,
Months_of_Dispense:dat.doc.Months_of_Dispense,
Next_appointment_Date:dat.doc.Next_appointment_Date,
Monthly_Patient_Status:dat.doc.Monthly_Patient_Status,
Reason_For_LTFU:dat.doc.Reason_For_LTFU,
Date_LTFU:dat.doc.Date_LTFU,
care_ending_reason:dat.doc.care_ending_reason,
Cause_of_Death:dat.doc.Cause_of_Death,
Date_Restarted_on_ART:dat.doc.Date_Restarted_on_ART,
uzito:dat.doc.uzito,
user_id:dat.doc.user_id,
timestamp:dat.doc.timestamp
},
dataType:'html',  
success: function(data) 
{
   
 console.log("Data for "+dat.doc._id+"   "+data);      
        
},
       error:function(xhr, s, e){    
   console.log("Could not export art data");
                                
                                }       
                        
        });
            
                      
      
       
        }
        
         
            if(c===(doc.total_rows-1))
            {

            }
        } //end of for loop
	 
	
		
  }).then(function (){
   
     
  }).catch(function (err){ console.log(err); });
          

        
        
}

function importIPTData(){
 
 
  nonemr_ipt_db.allDocs({include_docs: true, descending: true}).then( function(doc) {
      
 
	  
	   for(c=0;c<doc.total_rows;c++)
        {
    
	var dat={};
	dat=doc.rows[c];
             
        var idyangu=dat.doc._id;
	var num=parseInt(c)-1;
	
        if( dat.doc.syncstatus==="Yes" || dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no")
        {
      
  update_ipt_syncstatus(dat.doc._id,'Yes');

                
    $.ajax({
                        url:'importIPT',                            
                        type:'get', 
data:{
id:dat.doc._id,
ccc_number:dat.doc.ccc_number,

Started_on_IPT:dat.doc.Started_on_IPT,
Date_Started_on_IPT:dat.doc.Date_Started_on_IPT,
IPT_Outcome:dat.doc.IPT_Outcome,
Date_of_IPT_Outcome:dat.doc.Date_of_IPT_Outcome,
Reason_Not_Completed:dat.doc.Reason_Not_Completed,

user_id:dat.doc.user_id,
timestamp:dat.doc.timestamp
    },
dataType:'html',  
success: function(data) 
{
   
 console.log("Data for "+dat.doc._id+"   "+data);      
        
},
       error:function(xhr, s, e){    
   console.log("Could not export art data");
                                
                                }       
                        
        });
            
                      
      
       
        }
        
         
            if(c===(doc.total_rows-1))
            {

            }
        } //end of for loop
	 
	
		
  }).then(function (){
   
     
  }).catch(function (err){ console.log(err); });
          

        
        
}

function importVLData(){
 
 
  nonemr_vl_db.allDocs({include_docs: true, descending: true}).then( function(doc) {
      
 
	  
	   for(c=0;c<doc.total_rows;c++)
        {
    
	var dat={};
	dat=doc.rows[c];
             
        var idyangu=dat.doc._id;
	var num=parseInt(c)-1;
	
        if( dat.doc.syncstatus==="Yes" || dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no")
        {
      
  update_vl_syncstatus(dat.doc._id,'Yes');

                
    $.ajax({
  url:'importVLData',                            
  type:'get', 
data:{
id:dat.doc._id,
ccc_number:dat.doc.ccc_number,

First_Viral_Load_Date:dat.doc.First_Viral_Load_Date,
Date_Last_VL_Conducted:dat.doc.Date_Last_VL_Conducted,
Justification:dat.doc.Justification,
PMTCT_Status:dat.doc.PMTCT_Status,
VL_Results:dat.doc.VL_Results,

user_id:dat.doc.user_id,
timestamp:dat.doc.timestamp
    },
dataType:'html',  
success: function(data) 
{
   
 console.log("Data for "+dat.doc._id+"   "+data);      
        
},
       error:function(xhr, s, e){    
   console.log("Could not export art data");
                                
                                }       
                        
        });
            
                      
      
       
        }
        
         
            if(c===(doc.total_rows-1))
            {

            }
        } //end of for loop
	 
	
		
  }).then(function (){
   
     
  }).catch(function (err){ console.log(err); });
          

        
        
}

function importDSDData(){
 
 
  nonemr_diffcare_db.allDocs({include_docs: true, descending: true}).then( function(doc) {
      
   
	   for(c=0;c<doc.total_rows;c++)
        {
    
	var dat={};
	dat=doc.rows[c];
             
        var idyangu=dat.doc._id;
	var num=parseInt(c)-1;
	
        if( dat.doc.syncstatus==="Yes" || dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no")
        {
      
  update_dsd_syncstatus(dat.doc._id,'Yes');

                
    $.ajax({
                        url:'importDSD',                            
                        type:'get', 
data:{
id:dat.doc._id,
ccc_number:dat.doc.ccc_number,



Stability:dat.doc.Stability,
DC_Model:dat.doc.DC_Model,
well_unwell:dat.doc.well_unwell,






user_id:dat.doc.user_id,
timestamp:dat.doc.timestamp
    },
dataType:'html',  
success: function(data) 
{
   
 console.log("Data for "+dat.doc._id+"   "+data);      
        
},
       error:function(xhr, s, e){    
   console.log("Could not export art data");
                                
                                }       
                        
        });
            
                      
      
       
        }
        
         
            if(c===(doc.total_rows-1))
            {

            }
        } //end of for loop
	 
	
		
  }).then(function (){
   
     
  }).catch(function (err){ console.log(err); });
          

        
        
}


function exportalldata()
{
  
    
    importCURRData();
    importIPTData();
    importVLData();
    importDSDData();
    
    var returnedresponses=0;
   // $('#exportbutton').on('click',function() {
 $("#exportbutton1").prop("disabled",true);
 $("#exportbutton1").removeClass('btn-lg btn-success').addClass('btn btn-default');

 $("#exportbutton").prop("disabled",true);
 $("#exportbutton").removeClass('btn-lg btn-success').addClass('btn btn-default');

  var recordsunexported=$("#unexported").val();
                //read db files that have not been synced
    
  $("#exportbutton1").hide();
  $("#exportmsg1").show();
  $("#exportresponse1").append("<b><font color='orange'>Exporting all data.. please wait response.</b><br/>");
  
  
  $("#exportbutton").hide();
  $("#exportmsg").show();
  $("#exportresponse").append("<b><font color='orange'>Exporting all data.. please wait response.</b><br/>");
  
  
  
  nonemr_all_db.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 syncstatusarray=[];
      //read where sync is 0
	   var skipexporting=0;
	   for(c=0;c<doc.total_rows;c++){
               $("#exportbutton1").hide();
               $("#exportmsg1").show();
               
               $("#exportbutton").hide();
               $("#exportmsg").show();
               
               //a variable to check if all comments are added for percents below 80 percent and not amongest the indicators that can be skipped.
             
            var missingcomment="";
	   var dat={};
	   dat=doc.rows[c];
	     // console.log(dat.doc.facility);
              //how to reference each column 
              
        var idyangu=dat.doc._id;
	var num=parseInt(c)-1;
	var missingcommentid="";
        if(dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no"  || dat.doc.syncstatus==='Yes')
        {

           
        var hrf=" <button class='btn-sm button-info' data-dismiss='modal' onclick=\"loadsaveddailydata('"+dat.doc._id+"','"+dat.doc.facility+"','no"+missingcommentid+"'); \"> Enter Comments</button>";
           

        
        if(skipexporting===0){
            
            updatesyncstatus(dat.doc._id,'Yes');
        
          
             $.ajax({
                        url:'importVl',                            
                        type:'get', 
data:{

id:dat.doc._id,
facility:dat.doc.Facility,
ccc_number:dat.doc.ccc_number,
Date_of_Birth:dat.doc.Date_of_Birth,
Sex:dat.doc.Sex,
Population_Type:dat.doc.Population_Type,
Date_Initiated_On_ART:dat.doc.Date_Initiated_On_ART,
Current_Regimen:dat.doc.Current_Regimen,
Last_Clinical_Visit_Date:dat.doc.Last_Clinical_Visit_Date,
Screened_For_TB:dat.doc.Screened_For_TB,
Days_of_Dispense:dat.doc.Days_of_Dispense,
Months_of_Dispense:dat.doc.Months_of_Dispense,
Next_appointment_Date:dat.doc.Next_appointment_Date,
Monthly_Patient_Status:dat.doc.Monthly_Patient_Status,
Reason_For_LTFU:dat.doc.Reason_For_LTFU,
Date_LTFU:dat.doc.Date_LTFU,
care_ending_reason:dat.doc.care_ending_reason,
Cause_of_Death:dat.doc.Cause_of_Death,
Date_Restarted_on_ART:dat.doc.Date_Restarted_on_ART,

Started_on_IPT:dat.doc.Started_on_IPT,
Date_Started_on_IPT:dat.doc.Date_Started_on_IPT,
IPT_Outcome:dat.doc.IPT_Outcome,
Date_of_IPT_Outcome:dat.doc.Date_of_IPT_Outcome,
Reason_Not_Completed:dat.doc.Reason_Not_Completed,

First_Viral_Load_Date:dat.doc.First_Viral_Load_Date,
Date_Last_VL_Conducted:dat.doc.Date_Last_VL_Conducted,
Justification:dat.doc.Justification,
PMTCT_Status:dat.doc.PMTCT_Status,
VL_Results:dat.doc.VL_Results,


Stability:dat.doc.Stability,
DC_Model:dat.doc.DC_Model,
well_unwell:dat.doc.well_unwell,
uzito:dat.doc.uzito,

user_id:dat.doc.user_id,
timestamp:dat.doc.timestamp
},
dataType: 'html',  
                    success: function(data) {
                       
                       returnedresponses++;
                       
                        $("#exportresponse1").append("<b>*"+data+'</b><br/>');
                        $("#exportresponse").append("<b>*"+data+'</b><br/>');
                         
                
                         
                   //doc.syncstatus="Yes"; 
   //alert('called');
  // put them back
                   // return dailydatadb.put(doc); 
                 console.log(parseInt(returnedresponses)+" vs "+parseInt(doc.total_rows));
                   
                 if(parseInt(returnedresponses)===parseInt(doc.total_rows)){
                 $("#exportbutton1").show();
                 $("#exportmsg1").hide();
                 if(returnedresponses<1000)
            {
             $("#exportresponse1").append("<br/>.<br/>.<br/>.<br/><b><font color='green'><b>"+returnedresponses+" records</b> completed successfully. </b>"); 
             $("#exportresponse").append("<br/>.<br/>.<br/>.<br/><b><font color='green'><b>"+returnedresponses+" records</b> completed successfully. </b>"); 
             //setTimeout(delayedrefresh,2000);
            }
             else 
             {
             $("#exportresponse1").append("<b><font color='orange'>Exporting did not complete successfully.</b><br/>"); 
             $("#exportresponse").append("<b><font color='orange'>Exporting did not complete successfully.</b><br/>"); 
                 
             }
                       
                   }
        
                                        },
                                 error:function(xhr, s, e)
                                 {
                                     
                   console.log("Could not export data");
                                     
                   $("#exportresponse1").append("<b><font color='red'> Exporting did not complete successfully  .</b><br/>"+e); 
                   $("#exportresponse").append("<b><font color='red'> Exporting did not complete successfully  .</b><br/>"+e); 
                // updatesyncstatus(dat.doc._id,'No');
                                  returnedresponses=1000;   
                                 }       
                        
                         });
            
                        }//end of if skipp exporting === 0
                        //for annual exports, dont sync and dont show alert
            else if (skipexporting!==0 && idyangu.indexOf("annual")>=0) {
                       //dont show export failure message     
                            
                        }
            else {
                
                
                $("#exportresponse1").append("<br/><b>NOTE:</b><font color='red'> Data for <b>"+dat.doc.facility+"</b> not uploaded due to missing comment(s) on section <b><i>"+missingcomment+"</i></b></font> "+hrf+" <br/>");
                $("#exportresponse").append("<br/><b>NOTE:</b><font color='red'> Data for <b>"+dat.doc.facility+"</b> not uploaded due to missing comment(s) on section <b><i>"+missingcomment+"</i></b></font> "+hrf+" <br/>");
            }
                        }
        
                 
                 
                 //if its last loop show
                 
           
                  
             
            if(c===(doc.total_rows-1)){
//                  //$("#exportbutton").show();
//                 //$("#exportmsg").hide();
//                 $("#exportresponse").append("<b><font color='orange'>Exporting Completed.</b>");
  
                      }
          	    } //end of for loop
	 
	
		
  }).then(function (){
     // alert('export complete');
     
           // if(c===parseInt(doc.total_rows)){
                
              // for(var s=0;s<syncstatusarray.length;s++){
//                    
               //  updatesyncstatus(syncstatusarray[s]);
                
          // }
     
  }).catch(function (err){ console.log(err); });
          
  //$("#exportbutton").show();
  //$("#exportmsg").hide();	
   //refresh number of uninmported sites.
   //unsynceddata()
        
        
}





function updatesyncstatus(id,st){
  
nonemr_all_db.get(id).then(function (doc1) {
      console.log(id+" all sync status updated");
 doc1.syncstatus=st;
 return nonemr_all_db.put(doc1);
 
});

	
    
}//end of function


function update_curr_syncstatus(id,st){
  
nonemr_curr_db.get(id).then(function (doc1) {
      console.log(id+" curr sync status updated");
 doc1.syncstatus=st;
 return nonemr_curr_db.put(doc1);
 
});

	
    
}


function update_ipt_syncstatus(id,st){
  
nonemr_ipt_db.get(id).then(function (doc1) {
      console.log(id+" ipt sync status updated");
 doc1.syncstatus=st;
 return nonemr_ipt_db.put(doc1);
 
});

	
    
}


function update_vl_syncstatus(id,st){
  
nonemr_vl_db.get(id).then(function (doc1) {
      console.log(id+" vl sync status updated");
 doc1.syncstatus=st;
 return nonemr_vl_db.put(doc1);
 
});   
}


function update_dsd_syncstatus(id,st)
{
  
nonemr_diffcare_db.get(id).then(function (doc1) 
{
      console.log(id+" dsd sync status updated");
 doc1.syncstatus=st;
 return nonemr_diffcare_db.put(doc1);
 
});

    
}


function unsynceddata(){
    
    
    nonemr_all_db.allDocs({include_docs: true, descending: true}).then( function(doc) { 
        
      //read where sync is 0
	   var cnt1=0;
           
	   for(c=0;c<doc.total_rows;c++){
               
           var dat={};
	   
           dat=doc.rows[c];
           
           var cid=dat.doc._id;
           
           
           if((dat.doc.syncstatus==="No"||dat.doc.syncstatus==="0"||dat.doc.syncstatus==="no") && cid.indexOf("_annual")===-1 )
           {
                            
                         cnt1++;  
                         $("#importfromserver").hide();
                            
            }
            var displaytext=cnt1+" records";
            if(cnt1===1){
                   
            displaytext=cnt1+" record";
            }
            
            if(c===(parseInt(doc.total_rows)-1)){
                
                $("#unexportedno").html("<br/>( "+displaytext+" )");
	$("#unexported").val(cnt1);
            }
              
          	                    } //end of for loop
	 
	
        if(cnt1>0){
            $("#exportdataanchor1").show();
            $("#exportdataanchor2").show();
            
        }
		
  }).catch(function (err){console.log(err)});
          
  //$("#exportbutton").show();
  //$("#exportmsg").hide();	
    
    
    
}//end of function


unsynceddata();


function closeapp() 
{
      //navigator.app.exitApp();   // Closes the new window
}


</script>
<script>


//========================================201605 custom percentage calculator======================================


function fillprogressbar(denominator_is_value,numer,denomin,progressbarid,datavalueid,cmts){
    
        //console.log(datavalueid+" "+datavalueid.indexOf("adult"));
       // console.log(" "+cmts);
  //Date : 12th Oct 2016 
  //Change: show a default  of weekly performance for users.
  //however, submit the annual and weekly percentage
  //devide the annual  target with 52
        var applycoloronbar="yes";
        
        for(a=0;a<progressbarstoskip.length;a++){
            
            if(progressbarstoskip[a]===progressbarid){
                
                
                applycoloronbar="no";
            }
        }
     //for weekly performance, we were using input values but for annual we are using data-previous attribute   
    var weeklynumerator=$("#"+numer).val();//since we have weekly values on input field and annual cumulatives as data attributes fields
    var annualdenominator=$("#"+denomin).val();//since we have annual targets as values on input fields and not weekly targets
    
    var weeklydenominator="";//may be a value for a certain indicator or a predetermined target 
    
    var annualnumerator=$("#"+numer).attr("data-"+numer);// numerator for the whole year is the current number enterd plus total for previous year
    //var denominator=$("#"+denomin).val();
     
     if(denominator_is_value!=='yes'){
       //this section was meant to be used in annual performance calculator. for cases where the denom is  a value for another indic e.g no positive/ no tested  
       annualdenominator=$("#"+denomin).attr("data-"+denomin);
       //this denominator should not be devide by weeks/quartes/months 
       weeklydenominator=$("#"+denomin).val();
     }
     else {
         //devide target with number of weeks/quarters/months in a year
         if(annualdenominator!==''){
         
         if(annualdenominator<=52 ){ annualdenominator=52;} //to avoid geting decimal points targets
        weeklydenominator=Math.round(parseInt(annualdenominator)/52);
        
         }
         
          }
    
      if(weeklydenominator!==''&&weeklynumerator!==''){  
    //console.log(denomin+" "+denominator);
    //console.log(numer+" "+numerator);
    var numeratordenominatorvalues=weeklynumerator+"/"+weeklydenominator;
    //var numeratordenominatorvalues=weeklynumerator+"/"+weeklydenominator;
    var weeklyperc="0";
    var annualperc="0";
    //weekly percentage
    if(weeklydenominator==='0'){
        
        weeklyperc=0;
        
                        }
    else if(weeklydenominator===''|| weeklynumerator===''){
        
        weeklyperc=0;
    }
    else {
        
        weeklyperc=Math.round((parseInt(weeklynumerator)/parseInt(weeklydenominator))*100);
       
    }
    
    
    //annual percentage
    
     if(annualdenominator==='0'){
        
        annualperc=0;
        
                        }
    else if(annualdenominator===''|| annualnumerator===''){
        
        annualperc=0;
    }
    else {
        
        annualperc=Math.round((parseInt(annualnumerator)/parseInt(annualdenominator))*100);
        
      
    }
    console.log("Annual Percentage "+annualperc);
    //call save percents
     savepercents(weeklyperc,annualperc,datavalueid);
    //edit graph for display
    //if den and num are not blanks
    if(weeklynumerator!=='' && weeklydenominator!=='')
    {
    $("#"+progressbarid).width(weeklyperc+'%');
    $("#"+datavalueid).html(numeratordenominatorvalues+" = ("+weeklyperc+"%)");
    $("#"+datavalueid+"_in").val(weeklyperc);
    
    if(applycoloronbar==='yes'){
    if(weeklyperc>=90){
     $("#"+progressbarid).removeClass('progress-bar-info progress-bar-danger').addClass('progress-bar-success');
     
     if(datavalueid.indexOf("adult")===-1 && datavalueid.indexOf("child")===-1 ){
     $("#"+cmts).css('border-color','gray');
       }
                }
                   
 else if(weeklyperc < 90 && weeklyperc !==0) {
       $("#"+progressbarid).removeClass('progress-bar-info progress-bar-success').addClass('progress-bar-danger');
       
       if(datavalueid.indexOf("adult")===-1 && datavalueid.indexOf("child")===-1 ){
       $("#"+cmts).css('border-color','red');
                         }
  
                    }
                }
                    
     }
    
    
    }
}//end of function





//===================This function excecutes all percent calculation functions on loading and editin module  
function loadallpercents(){
    for(c=0;c<allindicatorsarray.length;c++){
      
            if(allindicatorsarray[c].indexOf("total")===-1){
                
            //call the functions in the onblur method
           // $("#"+allindicatorsarray[c]).trigger("blur");
            $("#"+allindicatorsarray[c]).blur();
          
                                                            }
        
        
                                            }
    
    
    
    
                        }





//a function to save comments after a user enters them


function savecomments(commentname){

 $("#finishbutton").prop('disabled',true);
  var id=$("#rowid").val();
  var mids=id.replace("_weekly","");
  var idarray=[mids+"_weekly",mids+"_annual"];
  for(v=0;v<idarray.length;v++){
  var comments=$("#"+commentname).val();
 
 console.log(comments);
 
   dailydatadb.get(idarray[v]).then(function (doc) {
  
   //if(comments!==''){
       
       if(commentname==='hiv_pos_yield_cmts'){
        doc.hiv_pos_yield_cmts=comments;   
       }
       else if (commentname==='hiv_pos_care_cmts'){
           doc.hiv_pos_care_cmts=comments;
                }

            else if (commentname==='started_art_cmts'){
           doc.started_art_cmts=comments;
                }
                
                else if (commentname==='viral_test_cmts'){
           doc.viral_test_cmts=comments;
                }
                
                else if (commentname==='ipt_done_cmts'){
           doc.ipt_done_cmts=comments;
                }
                
                else if (commentname==='tested_cmts'){
           doc.tested_cmts=comments;
                }
                
                else if (commentname==='pmtct_hiv_pos_cmts'){
           doc.pmtct_hiv_pos_cmts=comments;
                }
                
                else if (commentname==='eid_done_cmts'){
           doc.eid_done_cmts=comments;
                }
                
                else if (commentname==='viral_load_mothers_cmts'){
           doc.viral_load_mothers_cmts=comments;
                }
  

    

  return dailydatadb.put(doc);
   //}
  
    
});
//updatesyncstatus(id);    

}
   
    
}// end of save comments function

function disablefinish(){
    
     $("#finishbutton").prop('disabled',true);
    // alert('disable');
     //setTimeout(enablefinish(),2000);
}

function enablefinish(){
    
     $("#finishbutton").prop('disabled',false);
}

function savepercents(weeklypercent,annualpercent,percentname){
 
 
  var id=$("#rowid").val();
  

 
   //dailydatadb.get(id).then(function (doc) {
  
   if(weeklypercent!=='' && weeklypercent!=='NaN'){
     // alert(percent+" "+percentname);
     console.log(""+"data-"+percentname+"_in = "+annualpercent);
        //doc.inpatient_uptake_perc=percentagevalue;
        $("#"+percentname).val(weeklypercent);
        $("#"+percentname+"_in").attr("data-"+percentname+"_in",annualpercent);//data-"+datafieldid+"_in
      
       
   }
  //});

    
}// end of save comments function



function isuseradded(){
   var cnt=0;
        var username="";
    
     //if(username===''){    
    
//}
        
userdb.allDocs({include_docs:true,ascending: true}).then(function (doc) 
{
    
    if(doc.total_rows===0){
        
        $('#adduserbutton').click()
    }

 username=doc.username;

});
  
}

isuseradded();



   function numbers(evt){
      
var charCode=(evt.which) ? evt.which : evt.keyCode
 console.log(charCode);
 /*
if(charCode > 31 && (charCode < 48 || charCode>57)){
return false;
}
*/
//43=+  9=TAB 8=BACKSPACE 
 if( charCode===43 ||  charCode===9 ||  charCode===8 || charCode===46 || ( charCode >= 48 && charCode<=57)){
    
 return true;   
}
else {
return false;
}
}

//Codes to prevent default form submission

$("#userform").submit(function(e){
    return false;
});

$("#treatmentform").submit(function(e){
    return false;
});


$("#exportdataform").submit(function(e){
    return false;
});

$("#reportsform").submit(function(e){
    return false;
});

$("#excelreportsfom").submit(function(e){
    return false;
});
$("#zeroreportform").submit(function(e){
    return false;
});

 $('input').css('border-color','#33b775');
 $('select').css('border-color','#33b775');

 $('select').css('color','#000000');
 $('select').find("option").css('color','#000000');
 
 
 
//prevent numbers scrolling

$('form').on('focus', 'input[type=number]', function (e) {
  $(this).on('mousewheel.disableScroll', function (e) {
    e.preventDefault()
  })
});
$('form').on('blur', 'input[type=number]', function (e) {
  $(this).off('mousewheel.disableScroll')
});



function selectwidth(){
  
   
      $("#facilityname").width('74%');
    
}

function selectwidth100(){
  
   
      $("#facilityname").width('100%');
    
}

selectwidth100();

 
   
             

</script>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover(); 
    
  
    
});


	$('#unexportedno').each(function() {
    var elem = $(this);
    setInterval(function() {
        if (elem.css('visibility') == 'hidden') {
            elem.css('visibility', 'visible');
        } else {
            elem.css('visibility', 'hidden');
        }    
    }, 500);
});




function getreport(){
    
    
//    var exelstart=$("#startdaterpt").val();
//    var exelend=$("#enddaterpt").val();
    
     var exelstart="2018-10-01";
    var exelend="2019-09-30";
    
    var countyrpt=$("#rpt_county").val();
    var rpttypeurl=$("#rpt_type").val();   
        if (exelstart==='')
     {
         
     alert('Select report begining date');
   $("#startdaterpt").focus();    
     }    
   //end date
      else if (exelend==='')
     {
         
     alert('Select report ending date');
   $("#enddaterpt").focus();    
     } 
     
      else  if(Date.parse(exelstart) > Date.parse(exelend)){
                    alert(" Report Start date cannot be greater than end date.");   
                    $("#enddaterpt").focus();  
                }
                else {
                    //call the report generation page
                 downloadrpt(exelstart,exelend,countyrpt,rpttypeurl) ;  
                    
                }
        
    
}



  function downloadrpt(startdate,enddate,cnty,rpttypeurl){
      
                $('.loading').show();
                $('#excelreportbtn').hide();
               
                //?startdate=" + startdate + "&enddate=" + enddate + "&cbos=" + cbos
             
                var ur=hostname+""+rpttypeurl+"?startdate=" + startdate + "&enddate=" + enddate+ "&county=" + cnty ;
 console.log(ur);
                $.fileDownload(ur).done(function () { $('.loading').hide(); $('#excelreportbtn').show(); $('#excelreportbtn').html("<i class='glyphicon glyphicon-ok'></i> Report Generated"); }).fail(function () { alert('Report generation failed, kindly try again!'); $('.loading').hide(); $('#excelreportbtn').show(); });
 
                //$('.loading').hide();
            }



  function resetgeneratebutton(){
    
   $("#excelreportbtn").removeClass('btn-lg btn-success active').addClass('btn-lg btn-info active');  
    
}




function checkids(){
    
   
     facility=$("#facilityname").val();
     //startdate=$("#startdate").val();   
     //enddate=$("#enddate").val();
     console.log("facility___"+facility);
      if(facility!==''  && facility!==null ){
     
 var facilitynameandmfl=facility.split("_");        
     //var startd=startdate.replace('-','');      
    // var startd=startd.replace('-','');      
     var cc=$("#ccc_number").val();      
         
      id=facilitynameandmfl[0]+"_"+cc;
      //this should not be cleared
      var newid = $("#rowid").val();   
    
    console.log(newid +" **** "+id);
    if(newid!=='' && id!=='' && id!=='Select Facility Name__'){
    
    if(newid.indexOf(id)>-1){
        //hide the save as new 
        //$("#savenewbutton").hide();
        
                  }
        else if(newid.indexOf(id)===-1){
        //hide the save as new 
       // $("#savenewbutton").show();
       // $("#updatebutton").hide();
        
                           } 
                  
        }
        
    }
                 }


//confirm delete data


function ConfirmDelete()
    {
      var x = confirm("Are you sure you want to delete the selected data?");
      if (x)
          return true;
      else
        return false;
    }


function ConfirmDeletecns()
    {
      var y = confirm("Are you sure you want to delete the selected counsellor?");
      if (y)
          return true;
      else
        return false;
    }


function ConfirmDeleteever()
    {
      var y = confirm("Are you sure you want to delete all the data from this device ?");
      if (y)
          return true;
      else
        return false;
    }



function deletedata(id){
    
    //a function to delete entered data
console.log("______"+id);
nonemr_all_db.get(id).then(function(doc) {
  return nonemr_all_db.remove(doc);
}).then(function (result) {
    unsynceddata();
  // handle result
}).catch(function (err) {
  console.log(err);
});

  
    
}

function deletecnsdata(id){
    
    //a function to delete entered data
console.log("Id niii"+id);
userdb.get(id).then(function(doc) {
  return userdb.remove(doc);
}).then(function (result) {
  
  // handle result
}).catch(function (err) {
  console.log(err);
});

  
    
}



function togglehidding(){
    
  console.log("hidding called"); 
 if($('#hidetargets:checkbox:checked').length > 0)
 {
  //showtargets 

   $(".hiderows").hide();
   hidetargetsui='yes';
 }
 else 
 {
      $(".hiderows").show();
      hidetargetsui='no';
 }
    
}








// a function to autosum



function autocalculate(indicator){
    var calculation=$("#"+indicator).val();
   // var calculation=document.getElementById(indicator).value;
 var isblank="no";
 
 if(calculation===''){isblank="yes";}
    console.log(calculation);
    //var calculation1=calculation.replace("+","@");
    var sourcearray=calculation.split("+");
  //___
    var total=0;
     var b=0;     
    for(b=0;b<sourcearray.length;b++){
        //check if there
        if(sourcearray[b].trim()===''){sourcearray[b]=0;}
        
        if(sourcearray[b]!=='')
        {
           total=parseInt(total)+parseInt(sourcearray[b]); 
           if(isblank==="yes"){
               
               
                $("#"+indicator).val("");
           }
           else if(isblank==="no"){
           $("#"+indicator).val(total);
           console.log("Total___"+total);
                 }
           
        }
                                               
       if(b===(sourcearray.length-1)){
           
         yearlytotal(indicator);  
           
       } 
    }
  //initiate the check for previous months data here
  
  
}//end of auto calculate

//this fuction should sum and update the current value of the 


//for PNS supported facilities



function validateAge(){
    
     var miakangapi=$("#age").val();
     
     if(miakangapi.startsWith("0")){
     $("#age").val("");    
         
     }
     //alert(miakangapi);
    
                      }

//validatemodalities();

//$("#counsellorfacil").show();










function setrowid()
{
    var id="";
    
    var cc=$("#ccc_number").val();
    
    var f=$("#facilityname").val();
    
    var mfl=f.split("_")[0];
    
   
    
    var id=mfl+"_"+cc;
    
    $("#rowid").val(id);
    
   console.log(" id sasa ni "+id); 
 }






function autobackup(){
//alert("save called");   
var  kunainternet="";  



$.ajax({
                 url:'validateAccess',                            
            type:'get',  
            dataType: 'html',  
            success: function(data) {
   var unexported=0;

         var cii;
          dailydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 

   for(cii=0;cii<doc.total_rows;cii++){


   var dat={};
   dat=doc.rows[cii];


if(dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no")
                {
                unexported++;
                console.log("Ni mara ya "+unexported);
                if(unexported===20){
                 $('#exportdataanchor1').click();
                 $('#exportbutton').click();

break;


                }
                }

                                        }

                                        }).then(function (){




}).catch(function (err){ console.log(err); });




            },

       error: function(XMLHttpRequest, textStatus, errorThrown) {
// alert(errorThrown);

}

    });



}


autobackup();



function setmflcode(){
 //If someone is linked in the currently selected facility, autofill the mflcode
//cccno
//check current facil
    var fullfacil=$("#facilityname").val();
    var facilmfl="";
   
    
    if(fullfacil!==''){
          facilmfl=fullfacil.split("_")[0]+'';
                }
    
    
    
    if($("#ccc_number").val()==='')
    {
     $("#ccc_number").val(""+facilmfl);   
    }
    
    
    
    
    
}

//$("#counsellorfacil").show();

function clearsws(){
    
    //caches.delete(/*name*/);
  navigator.serviceWorker.getRegistrations()
  .then(registrations => {
    registrations.forEach(registration => {
      registration.unregister();
    }) ;
  });
  console.log("clearing cache");
 
// let id = "your-cache-id";
//        
//  caches.open(id)
//.then(cache => cache.keys()
//  .then(keys => {
//    for (let key of keys) {
//      cache.delete(key);
//    }
//  }));


(function (){
  var rep = /.*\?.*/,
      links = document.getElementsByTagName('link'),
      scripts = document.getElementsByTagName('script'),
      process_scripts = false;
  for (var i=0;i<links.length;i++){
    var link = links[i],
        href = link.href;
    if(rep.test(href)){
      link.href = href+'&'+Date.now();
    }
    else{
      link.href = href+'?'+Date.now();
    }

  }
  if(process_scripts){
    for (var i=0;i<scripts.length;i++){
      var script = scripts[i],
          src = script.src;
      if(rep.test(src)){
        script.src = src+'&'+Date.now();
      }
      else{
        script.src = src+'?'+Date.now();
      }

    }
  }
})();
Cache.delete();
   location.reload(true);
//   window.location.reload();
}



$('#clearcachebtn').click(function() {
    $.ajax({
        url: "",
        context: document.body,
        success: function(s,x){

            $('html[manifest=htsrriv1.appcache]').attr('content', '');
                $(this).html(s);
        }
    }); 
});




function cleardata()
{
    
    if(ConfirmDeleteever()===true){
    
   
                                        
                                        
   nonemr_curr_db.destroy(function (err, response) {
   if (err) {
      return console.log(err);
   } else {
      console.log ("Data Database Deleted");
     // $("#resetdbbtn").hide();
      $("#cleardatabtn").html("Data deleted successful!");
     
      
   }
                                        });
                                        
  nonemr_diffcare_db.destroy(function (err, response) {
   if (err) {
      return console.log(err);
   } else {
      console.log ("Data Database Deleted");
     // $("#resetdbbtn").hide();
      $("#cleardatabtn").html("Data deleted successful!");
      
      
   }
                                        });
                                        
                                        
 nonemr_ipt_db.destroy(function (err, response) {
   if (err) {
      return console.log(err);
   } else {
      console.log ("Data Database Deleted");
     // $("#resetdbbtn").hide();
      $("#cleardatabtn").html("Data deleted successful!");
     
      
   }
                                        });
                                        
                                          
 nonemr_vl_db.destroy(function (err, response) {
   if (err) {
      return console.log(err);
   } else {
      console.log ("Data Database Deleted");
     // $("#resetdbbtn").hide();
      $("#cleardatabtn").html("Data deleted successful!");
      
      
   }
                                        });  
                                        
                                        
     nonemr_all_db.destroy(function (err, response) {
   if (err) 
   {
      return console.log(err);
   } else {
      console.log ("Data Database Deleted");
     // $("#resetdbbtn").hide();
      $("#cleardatabtn").html("All emr Data deleted successful!");
     
      
         }
         window.location.reload();
         
                                        });
                                        
                                        
    
        }
}




function validatemodalitiesbygender(){
    
  var sex=$("#gender").val();
  
  if(sex==='Male'){  
$("#modality option[value='anc1']").attr("disabled",true); 
$("#modality option[value='anc2']").attr("disabled",true);
$("#modality option[value='ld']").attr("disabled",true); 
$("#modality option[value='pnc']").attr("disabled",true); 

$("#modality option[value='vmmc']").attr("disabled",false);
                  }
  else if(sex==='Female')
                  {  
$("#modality option[value='vmmc']").attr("disabled",true);
  
$("#modality option[value='anc1']").attr("disabled",false); 
$("#modality option[value='anc2']").attr("disabled",false);
$("#modality option[value='ld']").attr("disabled",false); 
$("#modality option[value='pnc']").attr("disabled",false);  
        
                  }
    
}





   var zeroreportdb = new PouchDB('htszeroreports');
var remoteCouch = false;
var blankreportde;

//receive the artist, song title and lyrics text
function savezeroreport()
{
    
    var datee=$("#zeroreportdate").val();
    var facilitii=$("#facilityname_zerorpt").val();
    
    
        if(facilitii===''){ alert("Select Facilty");}
        else if(datee===''){ alert("Select Date");}
        
        else{
    $.ajax({
        url:'submitZero',
        type:'get',
        data:{ 
            date:datee,
            facil:facilitii },
        dataType:'html',
        success: function(data) {
        {
    
        $("#savezeromsg").html(data);
            
        }
        
        
                                 }

});
}
    
//blankreportde = 
//           {
//            _id:""+datee+facilit, //this is static since we cant have two users using the same phone
//	    date:datee,
//        facility:facilit,
//            zero:0,        
//       completed:false
//           };
//  zeroreportdb.put(blankreportde, function callback(err, result) {
//    if (!err) {
//      console.log('zero report submitted succesfully');
//              }
//          else{
//        console.log(err);
//              }
//    
//    //setTimeout(delayedrefresh,1500);
//  });
  
  
  
}


</script>

<script>
  
   
    if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw1.js').then(function(registration) {
      // Registration was successful
      console.log('VL_ServiceWorker registration successful with scope: ', registration.scope);
    }, function(err) {
      // registration failed :(
      console.log('ServiceWorker registration failed: ', err);
    });
  });
}


 /****/

if($("#toolid").is(":visible")){
                    $("#refreshpage").hide();
                } else{
                   $("#refreshpage").show();
                }
                
                
                
                
                 function percent(num,den,destination){
           
         var rptd=$("#"+num).val();
         var vrfd=$("#"+den).val();
           
           if(rptd!=='' && rptd!==null && vrfd!=='' && vrfd!==null && !isNaN(rptd) && !isNaN(vrfd)){
            //get the variance between the two..   
           // var largest=Math.Max(val1,val2); 
           rptd=parseInt(rptd);
           vrfd=parseInt(vrfd);
         
            if(vrfd===0){vrfd=1;}
            
            var conc= Math.round(((rptd/vrfd)*100));
            if(isNaN(conc)){
                
               conc=0; 
            }
            
            
            $("#"+destination).val(conc+"%");
             //alert(conc);
           }
           
           
           
       }
       
       
       function removeFirstZero(elem){
           
           
           var vl=$("#"+elem).val();
           
           if(vl.length>=2 && vl.startsWith("0"))
           {
               
               vl=vl.replace("0","");
               $("#"+elem).val(vl);
                  // alert(vl);
           }
           
       
           
       }
       




   var accountdb = new PouchDB('treatment_account_usr');
var remoteCouch = false;
var useraccountdetails;

function addaccount(isauthorized) {
   useraccountdetails = {
        _id: 'aphiaplus', //this is static since we cant have two users using the same phone
	isauthorized:isauthorized,        
        completed: false
  };
  accountdb.put(useraccountdetails, function callback(err, result) {
    if (!err) {
      console.log('account details added succesfully');
    }
    
    setTimeout(delayedrefresh,1500);
  });
}

   
  



  function updateaccount(){
   //alert("save called");   
   var enteredcode=$("#accesscode").val();   
   
   if(enteredcode===''){$("#useraccountvalidation").html("Enter access code");   }
   else 
   {
     //run json to determine status  
     
     //if ok is returned , then save account. else .. show error
      $.ajax({
                    url:'validateAccess?kc='+enteredcode,                            
                    type:'get',  
                    dataType: 'html',  
                    success: function(data) {
             
                 
                 var dta=parseInt(data);
                 
          if(dta===1){
    
    $("#useraccountvalidation").html("");
  
    
    addaccount('ok'); 
    updatetaccesscode('ok');
                        } else {
                            
                         $("#useraccountvalidation").html("Wrong access code!. Try again");   
                          
                        }
     
                    },
                
               error: function(XMLHttpRequest, textStatus, errorThrown) {
       // alert(errorThrown);
$("#useraccountvalidation").html("No internet connection. Connect to internet and try again."); 
    }
            
            });
       
   }
   
  }



function isloggedin(){
  
//}
        
accountdb.allDocs({include_docs:true,ascending: true}).then(function (doc) 
{
    
    if(doc.total_rows===0){
        
        $('#loginbtn').click();
    }
    else{
    
    showuser();
        
        for(a=0;a<doc.total_rows;a++){
	   var dat={};
	   dat=doc.rows[a];
	      //hoping an account can have a maximum of only 
             
		  var validity=dat.doc.isauthorized;
                  if(validity==='0'){
                     $('#accesscodemodal').click(); 
                      
                  }
                  else{
                      
                      isuseradded();
                  }
		
            }
        
    }

 //username=doc.username;

});
  
}

isloggedin();

function updatetaccesscode(authentication){


	
	accountdb.get("aphiaplus").then(function (doc) {
            //
            if(authentication!==''){
doc.isauthorized=authentication;
return accountdb.put(doc); //continue from here
            }         
 
});
	}
        
        
        
 function loadVlArtHistory(cc_no){
     
     var vldt="<table  class='table table-striped table-bordered'><thead><tr><th colspan='3' style='text-align:center;background-color:gray;' >Viral Load History</th></tr><tr><th style='width:30%;'>Date</th><th style='width:50%;'>Justification</th><th style='width:20%;'>Results</th></tr></thead>";
     var currdt="<table  class='table table-striped table-bordered'><thead><tr><th colspan='3' style='text-align:center;background-color:gray;' >ARV History</th></tr><tr><th style='width:30%;'>Visit Date</th><th style='width:50%;'>Regimen</th><th style='width:20%;'>Expected Return</th></tr></thead>";
     
     var vlcount=0;
     var artcount=0;
     
     nonemr_vl_db.allDocs({include_docs:true,ascending: true}).then(function (doc) 
   {
    
    console.log(doc);
    
    if(doc.total_rows===0)
        {
        $('#vlhistory').hide();
        
        }
    else{
        
        
    $('#vlhistory').show();
    
        
        for(a=0;a<doc.total_rows;a++)
        {
            
            var dat={};
	   dat=doc.rows[a];



          if(doc.rows[a].doc.ccc_number===cc_no)
          { 
              console.log("check if "+dat.doc.VL_Results+" is equal to "+cc_no);
              vlcount++;
        vldt+="<tr><td>"+dat.doc.Date_Last_VL_Conducted+"</td><td>"+dat.doc.Justification+"</td><td>"+dat.doc.VL_Results+"</td></tr>";     
          
          }
          
           if(a===parseInt(doc.total_rows)-1)
                {
      vldt+="<tbody></tbody></table>";
      $('#vlhistory').html(vldt);
                }
                
            
        }
        console.log("Rows ni "+doc.total_rows);
        
        
        }
        
  });

   
        
           nonemr_curr_db.allDocs({include_docs:true,ascending: true}).then(function (doc) 
   {
    
    if(doc.total_rows===0)
        {
        $('#arthistory').hide();
        
        }
    else{
    
    $('#arthistory').show();
        
        for(var a=0;a<doc.total_rows;a++)
        {
            var dat={};
	   dat=doc.rows[a];
            
if(dat.doc.ccc_number===cc_no)
    {
        console.log("check if "+dat.doc.ccc_number+" is equal to "+cc_no);
        artcount++;   
        currdt+="<tr><td>"+dat.doc.Last_Clinical_Visit_Date+"</td><td>"+dat.doc.Current_Regimen+"</td><td>"+dat.doc.Next_appointment_Date+"</td></tr>";     
    }       
         
                if(a===parseInt(doc.total_rows)-1)
                {
                    
        currdt+="<tbody></tbody></table>";

        $('#arthistory').html(currdt);
                    
                }
                
        }
        
        }
        
  });
        
     
  
      	
// nonemr_all_db.get(id).then(function (doc) {
//            
//            });

 
 



//$('#Monthly_Patient_Status').val();











if(vlcount===0){
  $('#vlhistory').hide();  
}
if(artcount===0){
  $('#arthistory').hide();  
}
 
 
 console.log("Current data ni"+currdt);
 console.log("VL Data history ni "+vldt);
}      
        
        
        //loadVlArtHistory('1528856565');
        
        
        function pullfromserver(){
            
            
            $("#syncfromserverbutton").hide();
            $(".loading_fromserver").show();
            
             var rn=Math.random();
            
            var mflcode_syn=$("#mflcode_sync").val();
           $.ajax({
                    url:'pullalldata?mflcode_sync='+mflcode_syn+"&rn="+rn,                            
                    type:'get',  
                    dataType: 'json',  
                    success: function(data) 
                    {
                        
                        
                        //var tbl={"nonemr_all","nonemr_vl","nonemr_ipt","nonemr_curr","nonemr_diffcare"};
                        
        for(var b=0;b<data.length;b++) 
        {
         var maindt=data[b];
         
         if(b===0)
         {
          for(var c=0;c<maindt.nonemr_all.length;c++)
          {          
                    
          
            
        var dt=maindt.nonemr_all[c];
       // console.log("Sex "+Sex);       
        
         var Date_Restarted_on_ART=dt.Date_Restarted_on_ART;
         var Sex=dt.Sex;
         var Cause_of_Death=dt.Cause_of_Death;
         var Reason_For_LTFU=dt.Reason_For_LTFU;
         var Date_of_IPT_Outcome=dt.Date_of_IPT_Outcome;
         var Screened_For_TB=dt.Screened_For_TB;
         var Months_of_Dispense=dt.Months_of_Dispense;
         var Current_Regimen=dt.Current_Regimen;
         var mflcode=dt.mflcode;
         var DC_Model=dt.DC_Model;
         var Justification=dt.Justification;
         var id=dt.id;
         var First_Viral_Load_Date=dt.First_Viral_Load_Date;
         var Monthly_Patient_Status=dt.Monthly_Patient_Status; 
         var PMTCT_Status=dt.PMTCT_Status;
         var timestamp=dt.timestamp;
         var Last_Clinical_Visit_Date=dt.Last_Clinical_Visit_Date;
         var Date_LTFU=dt.Date_LTFU;
         var Date_of_Birth=dt.Date_of_Birth;
         var Stability=dt.Stability;
         var care_ending_reason=dt.care_ending_reason;
         var Date_Started_on_IPT=dt.Date_Started_on_IPT;
         var Reason_Not_Completed=dt.Reason_Not_Completed;
         var Date_Last_VL_Conducted=dt.Date_Last_VL_Conducted;
         var IPT_Outcome=dt.IPT_Outcome;
         var Started_on_IPT=dt.Started_on_IPT;
         var Next_appointment_Date=dt.Next_appointment_Date;
         var user_id=dt.user_id;
         var Date_Initiated_On_ART=dt.Date_Initiated_On_ART;
         var Days_of_Dispense=dt.Days_of_Dispense ;        
         var Population_Type=dt.Population_Type;
         var well_unwell=dt.well_unwell;
         var facility=dt.facility;
         var VL_Results=dt.VL_Results;
         var ccc_number=dt.ccc_number;
        
       console.log("syncing record number "+(b+1)+" facility "+facility); 
       
      $("#synclog").html("syncing overall data record number "+(c+1));
       
        
  update_nonemr_all(id,mflcode,facility,ccc_number,Date_of_Birth,Sex,Population_Type,Date_Initiated_On_ART,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,Stability,DC_Model,well_unwell,uzito,timestamp,user_id,'Yes');
  
           
            
          }
      }
      
      
       if(b===1){
             
             
              
          for(var c=0;c<maindt.nonemr_vl.length;c++)
          {          
                    
          
            
        var dt=maindt.nonemr_vl[c];
       // console.log("Sex "+Sex);       
        

      
//         var Date_of_IPT_Outcome=dt.Date_of_IPT_Outcome;
         
         var mflcode=dt.mflcode1;
//         var DC_Model=dt.DC_Model;
         var Justification=dt.Justification;
         var id=dt.id;
         var First_Viral_Load_Date=dt.First_Viral_Load_Date;
        
         var PMTCT_Status=dt.PMTCT_Status;
         var timestamp=dt.timestamp;
       
//         var Date_of_Birth=dt.Date_of_Birth;
//         var Stability=dt.Stability;
  
//         var Date_Started_on_IPT=dt.Date_Started_on_IPT;
//         var Reason_Not_Completed=dt.Reason_Not_Completed;
//         var Date_Last_VL_Conducted=dt.Date_Last_VL_Conducted;
//         var IPT_Outcome=dt.IPT_Outcome;
//         var Started_on_IPT=dt.Started_on_IPT;
      var Date_Last_VL_Conducted=dt.Date_Last_VL_Conducted;
         var user_id=dt.user_id;
//         var Date_Initiated_On_ART=dt.Date_Initiated_On_ART;
             
//         var Population_Type=dt.Population_Type;
//         var well_unwell=dt.well_unwell;
//         var facility=dt.facility;
         var VL_Results=dt.VL_Results;
         var ccc_number=dt.ccc_number;
        
        console.log("syncing VL record number "+(c+1)+" facility "+facility); 
        
        $("#synclog").html("syncing VL data record number "+(c+1));
         
        
      update_nonemr_vl(id,ccc_number,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,timestamp,user_id,'yes');

          
                
                
                }
             
        
       
            /**
         * 
//update_nonemr_ipt(Visit_Id,ccc_number,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,timestamp,user_id,syncstatus)



//update_nonemr_diffcare(id,ccc_number,visitdate,Stability,DC_Model,well_unwell,timestamp,user_id,syncstatus)
**/



      
        }
        
       if(b===2){
             
             
              
          for(var c=0;c<maindt.nonemr_ipt.length;c++)
          {          
                    
          
            
        var dt=maindt.nonemr_ipt[c];
       // console.log("Sex "+Sex);       
        

      
         var Date_of_IPT_Outcome=dt.Date_of_IPT_Outcome;
         
         var mflcode=dt.mflcode1;
//         var DC_Model=dt.DC_Model;
        
         var id=dt.id;
      
         var timestamp=dt.timestamp;
       
//         var Date_of_Birth=dt.Date_of_Birth;
//         var Stability=dt.Stability;
  
         var Date_Started_on_IPT=dt.Date_Started_on_IPT;
         var Reason_Not_Completed=dt.Reason_Not_Completed;

         var IPT_Outcome=dt.IPT_Outcome;
         var Started_on_IPT=dt.Started_on_IPT;
   
         var user_id=dt.user_id;
//         var Date_Initiated_On_ART=dt.Date_Initiated_On_ART;
             
//         var Population_Type=dt.Population_Type;
//         var well_unwell=dt.well_unwell;
//         var facility=dt.facility;
        
         var ccc_number=dt.ccc_number;
        
        console.log("syncing IPT record number "+(c+1)+" facility "+facility); 
        
        $("#synclog").html("syncing IPT data record number "+(c+1));
         
      
      update_nonemr_ipt(id,ccc_number,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,timestamp,user_id,'yes');

                
                
                }
             
        
       
            /**
         * 



//update_nonemr_diffcare(id,ccc_number,visitdate,Stability,DC_Model,well_unwell,timestamp,user_id,syncstatus)
**/



      
        }
        
      
          
         if(b===3){
             
             
              
          for(var c=0;c<maindt.nonemr_curr.length;c++)
          {          
                    
          
            
        var dt=maindt.nonemr_curr[c];
       // console.log("Sex "+Sex);       
        
         var Date_Restarted_on_ART=dt.Date_Restarted_on_ART;
//         var Sex=dt.Sex;
         var Cause_of_Death=dt.Cause_of_Death;
         var Reason_For_LTFU=dt.Reason_For_LTFU;
//         var Date_of_IPT_Outcome=dt.Date_of_IPT_Outcome;
         var Screened_For_TB=dt.Screened_For_TB;
         var Months_of_Dispense=dt.Months_of_Dispense;
         var Current_Regimen=dt.Current_Regimen;
         var mflcode=dt.mflcode1;
//         var DC_Model=dt.DC_Model;
//         var Justification=dt.Justification;
         var id=dt.id;
//         var First_Viral_Load_Date=dt.First_Viral_Load_Date;
         var Monthly_Patient_Status=dt.Monthly_Patient_Status; 
//         var PMTCT_Status=dt.PMTCT_Status;
         var timestamp=dt.timestamp;
         var Last_Clinical_Visit_Date=dt.Last_Clinical_Visit_Date;
         var Date_LTFU=dt.Date_LTFU;
//         var Date_of_Birth=dt.Date_of_Birth;
//         var Stability=dt.Stability;
         var care_ending_reason=dt.care_ending_reason;
//         var Date_Started_on_IPT=dt.Date_Started_on_IPT;
//         var Reason_Not_Completed=dt.Reason_Not_Completed;
//         var Date_Last_VL_Conducted=dt.Date_Last_VL_Conducted;
//         var IPT_Outcome=dt.IPT_Outcome;
//         var Started_on_IPT=dt.Started_on_IPT;
         var Next_appointment_Date=dt.Next_appointment_Date;
         var user_id=dt.user_id;
//         var Date_Initiated_On_ART=dt.Date_Initiated_On_ART;
         var Days_of_Dispense=dt.Days_of_Dispense ;        
//         var Population_Type=dt.Population_Type;
//         var well_unwell=dt.well_unwell;
//         var facility=dt.facility;
//         var VL_Results=dt.VL_Results;
         var ccc_number=dt.ccc_number;
        
        console.log("syncing tx_curr record number "+(c+1)); 
        $("#synclog").html("Syncing tx_curr record number "+(c+1));
        update_nonemr_curr(id,ccc_number,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,uzito,timestamp,user_id,'yes');
        
              
                }
             
        
       
            /**
         * 
//update_nonemr_ipt(Visit_Id,ccc_number,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,timestamp,user_id,syncstatus)

//update_nonemr_vl(Visit_Id,ccc_number,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,timestamp,user_id,syncstatus)


//update_nonemr_diffcare(id,ccc_number,visitdate,Stability,DC_Model,well_unwell,timestamp,user_id,syncstatus)
**/



      
        }
        
         if(b===4){
             
             
              
          for(var c=0;c<maindt.nonemr_diffcare.length;c++)
          {          
                    
          
            
        var dt=maindt.nonemr_diffcare[c];
            
         var mflcode=dt.mflcode1;
         var DC_Model=dt.DC_Model;

         var id=dt.id;

         var timestamp=dt.timestamp;
 
         var Stability=dt.Stability;
      
         var user_id=dt.user_id;

         var well_unwell=dt.well_unwell;

         var ccc_number=dt.ccc_number;
        
        console.log("syncing diff care record number "+(c+1)+" facility "+facility); 
        
       $("#synclog").html("Syncing differenciated care record number "+(c+1));
          
update_nonemr_diffcare(id,ccc_number,'',Stability,DC_Model,well_unwell,timestamp,user_id,'yes');
                
      
                
                
                }
             
        
       
            /**
         * 
//update_nonemr_ipt(Visit_Id,ccc_number,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,timestamp,user_id,syncstatus)

//update_nonemr_vl(Visit_Id,ccc_number,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,timestamp,user_id,syncstatus)


//update_nonemr_diffcare(id,ccc_number,visitdate,Stability,DC_Model,well_unwell,timestamp,user_id,syncstatus)
**/



      
        }
        
        
        
        if(b===parseInt(data.length)-1){
            //window.location.reload();
            $("#syncfromserverbutton").show();
            $(".loading_fromserver").hide();
            
          $("#synclog").html("downloading data complete. Please wait while the system saves the data to the database ");
    
                                       }
        
        
        }  
                            
        }
    });
           

            
        }
        
        function refr(){
            
             window.location.reload();
        }
        
        function isShowWeight(){
         if(getAge()<=19){   
                        
            $('.iscalhiv').show();
        }
        else {
            
           $('.iscalhiv').hide();   
            
        }
            
        }

</script>
 
	</body>
</html>
