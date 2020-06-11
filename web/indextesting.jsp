<%-- 
    Document   : index
    Created on : Mar 17, 2016, 3:17:19 PM
    Author     : Emmanuel E
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--<html  manifest="htsrriv1.appcache">-->
<html  >
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>HTS RRI</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                  <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
                  <link href="css/jquery.dataTables.min.css" rel="stylesheet">
		<link href="css/bootstrap.css" rel="stylesheet">
                <link href="css/bootstrap-datepicker.min.css" rel="stylesheet">
                    <link rel="stylesheet" href="css/select2.css">
                    <link rel="shortcut icon" href="htsrri.png">
                  
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
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
}


@media screen and (min-width: 600px) and (max-width: 1199px)  {
  #weeklydataform {
    margin-left:20%;
    margin-right:20%;
  }
}

@media screen and (min-width: 1200px) {
  #weeklydataform {
    margin-left:30%;
    margin-right:30%;
  }
}



/*adding accordoin style*/


* {
  box-sizing: border-box;
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
}
a {
  text-decoration: none;
  color: inherit;
}
p {
  font-size: 1.1em;
  margin: 1em 0;
}
.description {
  margin: 1em auto 2.25em;
}

h1 {
  font-family: 'Pacifico', cursive;
  font-weight: 400;
  font-size: 2.5em;
}
ul {
  list-style: none;
  padding: 0;
}
ul .inner {
  padding-left: 1em;
  overflow: hidden;
  display: none;
}
ul .inner.show {
  /*display: block;*/
}
ul li {
  margin: 0.5em 0;
}
li a.toggle {
  width: 100%;
  display: block;
  background-color:gray;
  color: #fefefe;
  padding: 0.75em;
  border-radius: 0.15em;
  transition: background 0.3s ease;
}

 li a.toggle {
  width: 100%;
  /*display: block;*/
  border: #337ab7 solid 1px;

  background: rgba(46, 109, 164, 0.78);
  color: #ffffff;
  padding: 0.75em;
  border-radius: 0.15em;
  transition: background 0.3s ease;
  font-weight: bold;
}


ul li a.toggle:hover {
  background: rgba(0, 0, 0, 0.9);
  color:#ffffff;
}


/*freeze pane*/

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky  {
  padding-top: 102px;
}



</style>

                
	</head>
	<body>
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
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
          
                
                 <li><a title="Add Widget" id="adduserbutton" data-toggle="modal" href="#userdetails"><i class="glyphicon glyphicon-user"></i><span id="usernamelabel"> Activate a counsellor</span></a></li>
                  <li><a id="clearcachebtn"  title=""   href="" onclick='clearsws();'<i class="glyphicon glyphicon-log-in"></i> Clear Cache</a></li>
                  <li><a id="cleardatabtn"  title=""    onclick='cleardata();'<i class="glyphicon glyphicon-fire"></i>Delete all Data</a></li>
                 <li ><a  title="Add Widget" data-toggle="modal"  id="exportdataanchor2" href="#addWidgetModal1"><i class="glyphicon glyphicon-cloud-upload"></i> Export all Data</a></li>
                 <li ><a  title="Add Widget" data-toggle="modal"  id="zeroreportanchor" href="#zeroreportmodal"><i class="glyphicon glyphicon-remove-circle"></i> Submit Zero report</a></li>
                 <li>
                  <a  title="Help" data-toggle="modal" href="#help">
                            <i class="glyphicon glyphicon-question-sign"></i>
                            Help
                        </a></li>
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

            
            
            <h5 style="text-align: center;color:blue;"><%@include file="version.html" %></h5>

     
          <div class="row">
                <!-- center left-->
                
          <div class="col-md-12" style="padding-left:3px;padding-right: 3px;">
                    

                  

                    <div class="btn-group btn-group-justified">
                        <a href="#" id='refreshpage' class="btn btn-primary col-sm-2">
                            <i class="glyphicon glyphicon-refresh"></i>
                            <br> Refresh
                        </a>
                       
                         
                            
                            <a  class="btn btn-primary col-sm-2" id="exportdataanchor1" style="display:none;" title="Add Widget" data-toggle="modal" href="#addWidgetModal">
                                <i class="glyphicon glyphicon-cloud-upload"></i>
                                <br/>Export Data 
                                <span id="unexportedno" style="color:yellow;">(0 records )</span>
                            </a>
                            
                         <a href="index.jsp"  class="btn btn-primary col-sm-2">
                            <i class="glyphicon glyphicon-link"></i>
                            <br> HTS <br/>Other Modalities
                        </a>
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
                            <li class="active newdata col-xs-4"><a href="#dataentry" id="newdatabutton" data-toggle="tab">  <i class="glyphicon glyphicon-plus"></i> New Data</a></li>
                            <!--<li class="active editdata" style='display:none;' ><a href="#dataentry" id="newdatabutton" data-toggle="tab">  <i class="glyphicon glyphicon-edit"></i> Edit Data</a></li>-->
                            <!--<li><a href="#reports" style="display:none;" id="reportsbutton" data-toggle="tab"> <i class="glyphicon glyphicon-stats"></i> Report</a></li>--> 
                            <li class='col-xs-4'><a href="#searchdata" data-toggle="tab"> <i class="glyphicon glyphicon-edit"></i> Edit</a></li> 
                           <!-- <li><a href="#export" data-toggle="tab"> <i class="glyphicon glyphicon-cloud-upload"></i> Data Export</a></li>-->
                           
                            <li class='col-xs-4'><a href="#viewcounsellors" data-toggle="tab"> <i class="glyphicon glyphicon-bishop"></i>Counsellors</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active well col-md-12" style="width:100%;padding:0px;" id="dataentry">
                                
                                
                              <!--Data entry code-->
                    <div class="panel panel-default" style="padding:0px;">
                       
                        <div class="panel-body" style="width:100%;padding:0px;">
                            <form class="form form-vertical" action="#" method="post" id="weeklydataform">
                                
                                
                                <table class='table table-responsive table-bordered'  style="overflow-x: hidden ;" >
                                
                                <tr><th class="col-xs-12" style="text-align:center"><b>Enter Index Testing Data</b></th></tr>
                                </table>
<!--    
                                    <td class="col-xs-12">-->
                                   <div class="control-group col-xs-12" >
                                    <label class="col-xs-12"><font color="red"><b>*</b></font> Date Test Conducted </label>
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                        <input type="text" onchange="checkids();" onblur="" name="enddate" id="enddate" data-date-end-date="0d" autocomplete="off"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                   <input type="hidden"  name ="rowid" id="rowid"  />
                                   <input type="hidden"  name ="unexported" id="unexported"  />
                                    </div>
                                </div>
                                        
                                        
<!--                                </td>
                                </tr>-->
                                
                                  <!--<tr><td class="col-xs-12">-->
                                
                                
                                
                              
                                
                                  <div class="control-group col-xs-12"  >
                                    <label class="col-xs-12"> <font color="red"><b>*</b></font>  Facility Name:</label>
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                        <select  onchange="checkids();validatemodalities();" style='width:100%;'   name="facilityname" id="facilityname" class="form-control" >
                                            <option>Select Facility Name</option>
                                           
                                        </select>
                                    </div>
                                </div>
                                
                                
                               
                                
                               
                                
                                          <!--</td></tr>-->
                                  
                                <!--counsellor-->
                                <!--<tr><td class="col-xs-12">--> 

                                        <div class="control-group col-xs-12"  >
                                            <label class="col-xs-12"> <font color="red"><b>*</b></font>  Name of Counsellor:</label>
                                            <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                                <select  onchange="" required  name="counsellor" id="counsellor" class="form-control" >
                                                    <option value=''>Select Counsellor</option>

                                                </select>
                                            </div>
                                        </div>


                                    <!--</td></tr>-->
                                    
                                
                                
                                
                                
<!--                                <tr>
                                    <td class="col-xs-12">-->
<!--                                   <div class="control-group col-xs-12"  >
                                    <label class="col-xs-12"><font color="red"><b>*</b></font>Contacts Entry point <span class='badge' title='Register No.' data-toggle='popover' data-trigger='hover' data-content='Group the contacts as listed below.'>?</span> </label>
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                       <select class='form-control' name="contacts_modality" id='contacts_modality'> 
                                           <option value="">Select Contacts</option>
                                        <option value="New Positive">New Positive Contacts</option>
                                        <option value="PMTCT">PMTCT Contacts</option>
                                        <option value="STF">STF Contacts</option>
                                        <option value="TB">TB Contacts</option>
                                        <option value="Other Known Positive">Other KP Contacts</option>
                                        <option value="Discordant Couple">Discordant Couple</option>
                                  </select>
                                    </div>
                                </div>-->
                                        
                                        
<!--                                </td>
                                </tr>
                                -->
                                
                                
<!--                                <div class="control-group col-xs-12"  >
                                    <label class="col-xs-12"><font color="red"><b>*</b></font>Contacts Category <span class='badge' title='Contacts' data-toggle='popover' data-trigger='hover' data-content='Specify if you want to do entries for sexual contacts and or Biological cildren'>?</span> </label>
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                        <select multiple="true" class='form-control' name="category" style='height:100%;' id='category'> 
                                        <option selected value="Sexual Contacts">Sexual Contacts</option>
                                        <option selected value="Biological Children">Biological Children</option>
                                        </select>
                                    </div>
                                </div>-->
                                      
                                <div class="control-group col-xs-12"  >
                                  <div id="pnsformcontent1"></div>
                                  </div>
<!--                                  </section>-->
                                     
                                <table class="table table-striped table-bordered">
                                       <tr><td colspan="3" class="col-xs-12">               
                                <div class="control-group col-xs-12">
                                       
                                    <div class="controls">
                                        <!--<a class="btn-lg btn-info" style="width: 100%;"  title="Add Widget" data-toggle="modal"  id="enterpnsdataanchor" href="#enterpnsdata"><i class="glyphicon glyphicon-new-window "></i>  Next</a>-->
                                        
                                        
                                        <button style='display:block;margin-left: 35%;' type="submit" id='savebutton' onmouseover="setrowid();" onclick="validateweeklydata();"  class="btn-lg btn-success active col-lg-4">
                                            SAVE
                                        </button>
                                    </div>
                                    <div class="controls">
                                        <button type="submit" id='updatebutton' onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                            UPDATE
                                        </button>
                                    </div>
                                    
                                </div>
                                        </td></tr>
                                        
                                </table>
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
                                 <button id="btnDeleteRowcns" style='display:none;' value="cancel">Delete selected counselor</button>
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

<footer class="text-center"> &copy; HSDSA USAID </footer>

<div class="modal" id="addWidgetModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr1" aria-hidden="true">×</button>
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












<div class="modal" id="addWidgetModal1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr11" aria-hidden="true">×</button>
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
                <button type="button" class="close" data-dismiss="modal" id="refr11" aria-hidden="true">×</button>
                <h4 class="modal-title">Submit zero report</h4>
            </div>
            <div class="modal-body">
              <form id="zeroreportform">
                  <div class="control-group col-xs-12" >
               <label class="col-xs-12"> <font color="red"><b>*</b></font>  Date:</label>
               <div class="controls col-xs-12" style="padding-bottom: 15px;">
              <input type="text" onchange="" onblur="" name="zeroreportdate" id="zeroreportdate" data-date-end-date="0d" autocomplete="off" class="form-control dates" readonly="" placeholder="datepicker" style="border-color: rgb(51, 122, 183);">
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
                <button type="button" id="saveuserbtn" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Counsellor Activation</h4>
            </div>
            <div class="modal-body">
                <form action="#" id="userform" method="post">
                 <div class="control-group">
                                    <label><font color="red"><b>*</b></font>Counsellor Name</label>
                                    <div class="controls">
                                        <select  maxlength='30' placeholder="eg John Ndoe"   required name="counsellorreg" id="counsellorreg" class="form-control" >
                                    
                                        <option value=''>select counsellors</option>
                                        </select>
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
                                    <label>Current Facility:</label>
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
                                            Activate
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



<div class="modal" id="excelreport">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button"  class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Help</h4>
            </div>
            <div class="modal-body">
                <p>This  application is created for aiding users in collecting patient level data for the HTS RRI.</p>
                    <h3>Activating HTS counsellors</h3>
                 <p> The first time of installing/running the application,You should specify the name of the HTS counsellor from the availed list.</p>
                
                <h3>Data Elements</h3>
                <p>The specific elements that we are interested in are;</p>
                <ul>

<li> Date Test Conducted </li>
<li> Facility Name </li>
<li> Name of Counsellor- Name of HTS Counsellor</li>
<li> Register Number - <i>Refers to the number allocated to the HTS register, e.g. 01, 02, 03 etc. Meaning each HTS register being used at the facility should be allocated a number different from the other</i></li>
<li> Patient Serial Number -<i>Is the number given to the client in the HTS register based on annual serialization system in the HTS register (column a).</i> </li>
<li> Age </li>
<li> Sex </li>
<li> HTS Testing Modality - The Modality where client was tested in. This does not include the PMTCT</li>
<li> HTS Test Results <i>(Positive/Negative)</i> </li>
<li> Is the Patient Linked </li> 
<li> The Facility where the patient is linked in </li>
<li> The Patient CCC number</li>
<li>Reason why Patient is not linked</li>
<li> If patient Declined to be linked, give reason</li>
<li> If Patient was not linked because of death, give reason for death</li>




                </ul>
                
                <h3>Test and Start</h3>
                <p>This section will help you to enter data started ART details. For the records that where linked within our Project health facilities, you can search their ccc numbers and if you do not find them, type the ccc numbers and fill the date tested and the Date started on ART details  </p>
                
             <h3>Loading Facilities</h3>
                 <p> The first time of installing/running the application,health facilities are downloaded and saved on the host device (mobile phone or computer browser). This requires internet connectivity. After the download, sites should appear on the facility drop down list.</p>
                 <h3>Data Export</h3>
                <p>Data is saved on your mobile device and should be shared to a server for analysis </p>
                <p>If there is Any un-exported that has  been saved offline, the user will be reminded to create an export by seeing yellow text showing number of sites whose data has not been exported .</p>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
               
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>



<!-----Data entry------>



<div class="modal" id="enterpnsdata">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr1" aria-hidden="true">×</button>
                <h4 class="modal-title" style="text-align:center;">Data Entry</h4>
            </div>
            <div class="modal-body">
                <form id="pnsform">
              
                    <div id='pnsformcontent'>
                    
        <ul class="accordion">
 
  
  <li>
    <a class="toggle" href="javascript:void(0);">New Kp Contacts</a>
    <ul class="inner">
      <li>
        <a href="#" class="toggle">Index Clients Screened</a>
        <div class="inner">
          <p>
            elements and input fields fall here
          </p>
        </div>
      </li>
	   <li>
        <a href="#" class="toggle">Contacts Elicited</a>
        <div class="inner">
          <p>
            elements and input fields fall here
          </p>
        </div>
      </li>
     
    </ul>
  </li>
  
  
   <li>
    <a class="toggle" href="javascript:void(0);">Known Positive Contacts</a>
    <ul class="inner">
      <li>
        <a href="#" class="toggle">Index Clients Screened</a>
        <div class="inner">
          <p>
            elements and input fields fall here
          </p>
        </div>
      </li>
	   <li>
        <a href="#" class="toggle">Contacts Elicited</a>
        <div class="inner">
          <p>
            elements and input fields fall here
          </p>
        </div>
      </li>
     
    </ul>
  </li>
  
</ul>                  
                </div>    
                    <p id="savepnsresponse"> </p>
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



	<!-- script references -->
                <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/scripts.js"></script>
                <script src="js/bootstrap-datepicker.min.js"></script>
                
<!--                <script type="text/javascript" src="select/selectstyle.js"></script>  
                <link href="select/selectstyle.css" rel="stylesheet">-->
    
          
                
                <script src="js/select2.js"></script>
                <script src="js/pouchdb-7.1.1.js"></script>
                 
                <script type="text/javascript" src="js/jquery.fileDownload.js"></script>
                <script type="text/javascript" src="js/datatables.min.js"></script>
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
      
  $('#facilityname').select2();
  
  
  $('#rowid').val("");  
  
  });   
                 </script>


<script>
   
  var user="hsdsa";  
//load data from the cloud server 


 var selected_categories=["Biological Children","Sexual Contacts"];
 var selected_categories_id=["Biological_Children","Sexual_Contacts"];
    
    //biological children
    var ages_id_bc=["pns_1","pns_4","pns_9","pns_14"];
    //sexual contacts 
    var ages_id_sc=["pns_uk","pns_14","pns_19","pns_24","pns_29","pns_34","pns_39","pns_44","pns_49","pns_50"];
    //var age_arr=["Unknown Age","Unknown Age","<1","<1","1-4","1-4","5-9","5-9","10-14","10-14","15-19","15-19","20-24","20-24","25-29","25-29","30-34","30-34","35-39","35-39","40-44","40-44","45-49","45-49","50","50","total"];
    var age_arr_bc=["<1","1-4","5-9","10-14"];
    var age_arr_sc=["Unknown Age","10-14","15-19","20-24","25-29","30-34","35-39","40-44","45-49","50"];
    
    var sex_arr=["Male","Female"];
    
    var buildform="<ul class='accordion'>";
    var entrypoints_values=["New Pos","PMTCT","STF","TB","Other KPs","Disc. Couple"];
    var entrypoints_ids=["New_Pos","PMTCT","STF","TB","Other_KPs","Disc_Couple"];
    var entrypoints_labels=["New Positive Contacts","PMTCT Contacts","STF Contacts","TB Contacts","Other KP Contacts","Discordant Couple"];
    


   
//load data from the cloud server 
   function getFacilitiesJson(){
       
      
       
        var facilities="<option value=''>Select Facility</option>";
        
              $.ajax({
                    url:'sites2.json',                            
                    type:'get',  
                    dataType: 'json',  
                    success: function(data) {
                     for(var i=0;i<data.length;i++){
                       
                             if(data[i].isactive==="Yes"){
                  facilities+="<option data-pns='"+data[i].pns+"' value='"+data[i].mflcode+"_"+data[i].facility_name+"'>"+data[i].facility_name+"</option>"; 
                                                        }
             
              
              
                        
                     }
                     //alert(facilities);
                      $("#facilityname").html(facilities);
                      $("#counsellorfacil").html(facilities);
                      $("#facilityname_zerorpt").html(facilities);
                      
                      
                   $(document).ready(function() {
            //$('#lyricstable').DataTable();
              $('#facilityname').select2();
              $('#counsellorfacil').select2(); 
              $('#facilityname_zerorpt').select2(); 
              
            //   $('#facilityname').chosen();
            //  $('#facilityname').trigger("chosen:updated");
//               $('#counsellorfacil').chosen();
//             $('#counsellorfacil').trigger("chosen:updated");
             
             
                                 } );
                     
                      }});
   
   }
   
   getFacilitiesJson();
   
    
    
      
    
    //PouchDB.debug.enable('*');
    //PouchDB.debug.disable();
    var userdb = new PouchDB('activecounsellordetails');
var remoteCouch = false;
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
   showuser();   
       
   }
   
  }  
    
   function showuser(){
       
userdb.allDocs({include_docs: true, ascending: true}).then(function (da) {
if(da.total_rows===0){
    //activatecounsellors();
$("#usernamelabel").html("Activate a Counsellor");
$("#usernamelabel").click();
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
             counsellors="<option value=''>Activate a Counsellor</option>";
             $("#counsellor").html(counsellors);
     }
   

     }//end of row

        }
}).catch(function (err){console.log("makosa ni :"+err.reason);   if(err.reason==='QuotaExceededError'){alert("Your device has run out of space.Please create space by deleting unwanted videos,photos or large documents");}  });
	} //end of function
        
        
     showuser();
     
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



   
//This is a document to save all facilities for offline use 
var element_db = new PouchDB('pnselements');
var remoteCouch = false;
var receivedelements;

//add facility details here
function setElements(elementid,elementname,subsection,section) {
   receivedelements = {
        _id: elementid,
	elementname:elementname,
        subsection:subsection,
        section:section,	
        completed: false
                  };
  element_db.put(receivedelements, function callback(err, result) {
    if (!err) {
      console.log('elements added succesfully');
    }
  });
}


//a function to load elements from the database


function loadElements(){
    
     $.ajax({
              url:'getPnsIndicators',                            
              type:'get',  
              dataType: 'json',  
 success: function(data) {
     
      for(var i=0;i<data.length;i++){
         
setElements(data[i].id,data[i].indicator,'','');
          
          
      }
     
 }
 });
    
    
}

loadElements();


function buildformsindicators(){
    var indics="";
    
   
    
    
     element_db.allDocs({include_docs: true, ascending: true}).then( function(data) { 
     
     for(var categ=0;categ<selected_categories.length;categ++){
         
          buildform+="<li style='text-align:center;'><a class='toggle' href='javascript:void(0);'>"+selected_categories[categ]+"</a>";
          buildform+="<ul class='inner'>";
     
     //Loop through the entry points
     
 for(var h=0;h<entrypoints_values.length;h++){
    
  buildform+="<li style='text-align:center;'><a class='toggle' href='javascript:void(0);'>"+entrypoints_labels[h]+"</a>";
  buildform+="<ul class='inner'>";
            
 for(var i=0;i<data.total_rows;i++){
     
     var dat={};
      dat=data.rows[i];
                       
 //Here we are building a table that is dropping downwards

 buildform+="<li ><a href='#' class='toggle' >"+dat.doc._id+". "+dat.doc.elementname+"</a><div class='inner' style='height:auto;'>";
 
          //buildform+="<p>elements and input fields fall here</p>";
        
        
//        Biological Children Section
        
        
 if(selected_categories[categ]==='Biological Children'){
 for(var rows=0;rows<age_arr_bc.length;rows++)
 {
  
                    if(rows===0)
                    {  buildform+="<table class='table table-responsive'>";
                    buildform+="<tr style='background-color:#3bc2ff;height:35px;' class='myHeader' id='myHeader"+rows+"'><th style='text-align:center;'></th><th style='text-align:center;'><b>Age</b></th><th style='text-align:center;'><b>Female</b></th><th style='text-align:center;'><b>Male</b></th></tr>";
                    buildform+="<tr><td rowspan='"+ages_id_bc.length+"' style='width:8px;background-color:#3bc2ff; '><label style='writing-mode:vertical-rl;text-orientation:upright;color:black;'><b>"+entrypoints_values[h]+" "+dat.doc.elementname+"</b></label></td><td>"+age_arr_bc[rows]+" Yrs</td><td><input onblur=\"savePns('"+selected_categories_id[categ]+"','"+entrypoints_labels[h]+"','"+entrypoints_ids[h]+"','"+dat.doc._id+"','"+dat.doc.elementname+"');\" type='text' onkeypress='return numbers(event);' class='form-control' style='width:95%;'  id='"+selected_categories_id[categ]+"_"+entrypoints_ids[h]+"_"+dat.doc._id+"_"+ages_id_bc[rows]+"f' name='"+selected_categories_id[categ]+"_"+entrypoints_ids[h]+"_"+dat.doc._id+"_"+ages_id_bc[rows]+"f'/></td><td><input onblur=\"savePns('"+selected_categories_id[categ]+"','"+entrypoints_labels[h]+"','"+entrypoints_ids[h]+"','"+dat.doc._id+"','"+dat.doc.elementname+"');\" type='text' class='form-control' style='width:95%;' id='"+selected_categories_id[categ]+"_"+entrypoints_ids[h]+"_"+dat.doc._id+"_"+ages_id_bc[rows]+"m' name='"+selected_categories_id[categ]+"_"+entrypoints_ids[h]+"_"+dat.doc._id+"_"+ages_id_bc[rows]+"m'/></td></tr>";
                    }
                    else 
                    {
                    buildform+="<tr><td>"+age_arr_bc[rows]+" Yrs</td><td><input onblur=\"savePns('"+selected_categories_id[categ]+"','"+entrypoints_labels[h]+"','"+entrypoints_ids[h]+"','"+dat.doc._id+"','"+dat.doc.elementname+"');\" type='text' onkeypress='return numbers(event);' class='form-control' style='width:95%;'  id='"+selected_categories_id[categ]+"_"+entrypoints_ids[h]+"_"+dat.doc._id+"_"+ages_id_bc[rows]+"f' name='"+selected_categories_id[categ]+"_"+entrypoints_ids[h]+"_"+dat.doc._id+"_"+ages_id_bc[rows]+"f'/></td><td><input onblur=\"savePns('"+selected_categories_id[categ]+"','"+entrypoints_labels[h]+"','"+entrypoints_ids[h]+"','"+dat.doc._id+"','"+dat.doc.elementname+"');\" type='text' class='form-control' style='width:95%;' id='"+selected_categories_id[categ]+"_"+entrypoints_ids[h]+"_"+dat.doc._id+"_"+ages_id_bc[rows]+"m' name='"+selected_categories_id[categ]+"_"+entrypoints_ids[h]+"_"+dat.doc._id+"_"+ages_id_bc[rows]+"m'/></td></tr>";
 if(rows===age_arr_bc.length-1){  buildform+="</table>"; }
                    }
     
 }
 
                }
                
                
//                Sexual Contacts Section
                
                else if(selected_categories[categ]==='Sexual Contacts')
                {
 for(var rows=0;rows<age_arr_sc.length;rows++)
 {
  
                    if(rows===0){  buildform+="<table class='table table-responsive'>";
                    buildform+="<tr style='background-color:#3bc2ff;height:35px;' class='myHeader' id='myHeader"+rows+"'><th></th><th style='text-align:center;'><b>Age</b></th><th style='text-align:center;'><b>Female</b></th><th style='text-align:center;'><b>Male</b></th></tr>";
                    buildform+="<tr><td rowspan='"+ages_id_sc.length+"' style='width:8px;background-color:#3bc2ff; '><label style='writing-mode:vertical-rl;text-orientation:upright;color:black;'><b>"+entrypoints_values[h]+" "+dat.doc.elementname+"</b></label></td><td>"+age_arr_sc[rows]+" Yrs</td><td><input onblur=\"savePns('"+selected_categories_id[categ]+"','"+entrypoints_labels[h]+"','"+dat.doc._id+"','"+dat.doc.elementname+"');\" type='text' onkeypress='return numbers(event);' class='form-control' style='width:95%;'  id='"+selected_categories_id[categ]+"_"+entrypoints_values[h]+"_"+dat.doc._id+"_"+ages_id_sc[rows]+"f' name='"+selected_categories_id[categ]+"_"+entrypoints_values[h]+"_"+dat.doc._id+"_"+ages_id_sc[rows]+"f'/></td><td><input onblur=\"savePns('"+selected_categories_id[categ]+"','"+entrypoints_labels[h]+"','"+dat.doc._id+"','"+dat.doc.elementname+"');\" type='text' class='form-control' style='width:95%;' id='"+selected_categories_id[categ]+"_"+entrypoints_values[h]+"_"+dat.doc._id+"_"+ages_id_sc[rows]+"m' name='"+selected_categories_id[categ]+"_"+entrypoints_values[h]+"_"+dat.doc._id+"_"+ages_id_sc[rows]+"m'/></td></tr>";
                    }
                    else 
                    {
                    buildform+="<tr><td>"+age_arr_sc[rows]+" Yrs</td><td><input onblur=\"savePns('"+selected_categories_id[categ]+"','"+entrypoints_labels[h]+"','"+dat.doc._id+"','"+dat.doc.elementname+"');\" type='text' onkeypress='return numbers(event);' class='form-control' style='width:95%;'  id='"+selected_categories_id[categ]+"_"+entrypoints_values[h]+"_"+dat.doc._id+"_"+ages_id_sc[rows]+"f' name='"+selected_categories_id[categ]+"_"+entrypoints_values[h]+"_"+dat.doc._id+"_"+ages_id_sc[rows]+"f'/></td><td><input onblur=\"savePns('"+selected_categories_id[categ]+"','"+entrypoints_labels[h]+"','"+dat.doc._id+"','"+dat.doc.elementname+"');\" type='text' class='form-control' style='width:95%;' id='"+selected_categories_id[categ]+"_"+entrypoints_values[h]+"_"+dat.doc._id+"_"+ages_id_sc[rows]+"m' name='"+selected_categories_id[categ]+"_"+entrypoints_values[h]+"_"+dat.doc._id+"_"+ages_id_sc[rows]+"m'/></td></tr>";
 if(rows===age_arr_sc.length-1){  buildform+="</table>"; }
                    }
     
 }
 
                }
 
 
 buildform+="</div></li>";
            
                //indics+="<option data-pns='"+data[i].pns+"' value='"+data[i].mflcode+"_"+data[i].facility_name+"'>"+data[i].facility_name+"</option>"; 
                               
          
              
              
                        
                     }
                     //end entry points accordion
                 buildform+="</ul>";    
                 buildform+="</li>";    
                     
                 }
                 //end category accordion
                 buildform+="</ul>";    
                 buildform+="</li>";  
             
 }
                 
                 buildform+="</ul>";
                     //alert(facilities);
                     $("#pnsformcontent1").html(buildform);
                      //console.log(buildform);
                      
                      
                      $('.toggle').click(function(e) {
  	e.preventDefault();
  
    var $this = $(this);
  
    if ($this.next().hasClass('show')) {
        $this.next().removeClass('show');
        $this.next().slideUp(150);
    } else {
        $this.parent().parent().find('li .inner').removeClass('show');
        $this.parent().parent().find('li .inner').slideUp(150);
        $this.next().toggleClass('show');
        $this.next().slideToggle(150);
    }
});
         
                     
 });
    
}

buildformsindicators();

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
                    type:'post',  
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

getcounsellorslist();





function checkinternet()
{
    
  console.log(" is internet available?");  
    
$('#exportbutton').hide();
 $("#exportresponse").html("<b><font color='orange'>checking for internet..</b><br/>");
    
   
              $.ajax({
             url:'validateAccess',                            
            type:'post',  
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
var dailydatadb = new PouchDB('client_data_rrisep',{auto_compaction: true});
var remoteCouch = false;
var weeklydata;

//receive the artist, song title and lyrics text
function insertdailydata(id,facilityname,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,timestamp,user,syncstatus,datestartedart) {
   
   
        dailydata = {
        _id: id, //made of startdate_enddate_facilitymfl_frequency //frequency could be _annual or _weekly
	facility:facilityname,
       counselorname:counsellor,
       register_no:register_no,
       serialno:serialno,
       date_tested:date_tested,
       age:age,
       gender:gender,
	modality:modality,
        testresult:testresult,
linked:linked,
cccno:cccno,
linked_site:linked_site,
other_facility_linked:other_facility_linked,
reason_not_linked:reason_not_linked,
reason_for_death:reason_for_death,
other_reason_for_death:other_reason_for_death,
reason_for_declining:reason_for_declining,
other_reason_for_declining:other_reason_for_declining,
datestartedart:datestartedart,
timestamp:timestamp,
user:user,
syncstatus:syncstatus,        
completed: false
  };
  dailydatadb.put(dailydata, function callback(err, result) {
    if (!err) 
    {
      console.log('daily data added succesfully');
      
    }
  });
}	



//prepare form data

//===================================================INSERT Dailty DATA===================================

var id=null;
var facility=null;
var counsellor=null;

var date_tested=null;

var user=null;
var timestamp=null;


  var contacttype=null; 
  var entrypoint=null; 
  var indicator=null; 
  var pns_ukf=null; 
  var pns_ukm=null; 
  var pns_1f=null; 
  var pns_1m=null; 
  var pns_4f=null; 
  var pns_4m=null; 
  var pns_9f=null; 
  var pns_9m=null; 
  var pns_14f=null; 
  var pns_14m=null; 
  var pns_19f=null; 
  var pns_19m=null; 
  var pns_24f=null; 
  var pns_24m=null; 
  var pns_29f=null; 
  var pns_29m=null; 
  var pns_34f=null; 
  var pns_34m=null; 
  var pns_39f=null; 
  var pns_39m=null; 
  var pns_44f=null; 
  var pns_44m=null; 
  var pns_49f=null; 
  var pns_49m=null; 
  var pns_50f=null; 
  var pns_50m=null; 
  var counsellor=null; 
  var facility=null; 
  var mflcode=null; 

  var timestamp=null;

//var viralload_tg=null; 
//var viralload=null; 
//var viralload_mothers=null; 

   
//var newart=null;
//var newpos_pmtct=null;
//var art_pmtct=null;
   
   //added 201605 
    var progressbarstoskip=[];
     var allindicatorsarray=["rowid","facilityname","counsellor","enddate","pns_ukf","pns_ukm","pns_1f","pns_1m","pns_4f","pns_4m","pns_9f","pns_9m","pns_14f","pns_14m","pns_19f","pns_19m","pns_24f","pns_24m","pns_29f","pns_29m","pns_34f","pns_34m","pns_39f","pns_39m","pns_44f","pns_44m","pns_49f","pns_49m","pns_50f","pns_50m"];
     var allnontargetindicatorsarray=[];
     var allcommentsarray=[];
     var allprogressbar_hiddentext_array=[];
     var hidetargetsui='yes';
function createdynamicinputs(){
    
    
     $(document).ready(function(){
         $.getJSON("indicators.json",function(result){
            
             var table="";
             var row1="";
             var row2="";
             var count=1;
             
             for(a=0;a< result.length; a++){
                 
             var indicatorname=result[a].IndicatorName;    
             var fullindicator=result[a].FullIndicator;    
             var indicatorid=result[a].IndicatorID;
             var label=result[a].Age;
             var level=result[a].Level;
             var inputtype=result[a].datainputtype;
             var minimum=result[a].Min;
             var maximum=result[a].Max;
             var onblur="";
             var onkey_up="autocalculate('"+indicatorid+"');";
             if(result[a].onblur!==null){
                 onblur="autocalculate('"+indicatorid+"');"+result[a].onblur;
             }
             var onkeypress=result[a].onkeypress;
             var tdclass=result[a].tdclass;
             var isrequired=result[a].Required;
             var isnewrow=result[a].newrow;
             var readonlyvar=result[a].readonly;
             console.log("Read only:"+result[a].readonly);
             
             var isreadonly="";
             allindicatorsarray.push(indicatorid);
             
             if(indicatorid.indexOf("target")===-1){
                 
              allnontargetindicatorsarray.push(indicatorid);   
             }
              var tabindex="";
             if(readonlyvar==="TRUE"){
                 
               isreadonly="readonly";
               tabindex=" tabindex='-1' style='background-color:#b1b1cd;' ";
             }
             var colspan=result[a].colspan;
            
             if(label==='Total' && tdclass==='col-xs-4' ){  }
             if(isnewrow===1)
             {
                 //dont show targets 
               if(hidetargetsui==='yes' && readonlyvar==="TRUE"  ){
                 row1="<tr class='hiderows' style='display:none;'> <td class='col-xs-12' colspan='3'> <div class='control-group'> <label  > <font color='red'> <b> * </b> </font> <span class='badge'> "+count+" </span>     "+indicatorname+"    <span class='badge' title='Indicator' data-toggle='popover' data-trigger='hover' data-content='"+fullindicator+"'>?</span> </label>  </div> </td> </tr>";
                 count++;
                 row2+=row1;   
                   
               }
               else {
                 row1="<tr> <td class='col-xs-12' colspan='3'> <div class='control-group'> <label  > <font color='red'> <b> * </b> </font> <span class='badge'> "+count+" </span>     "+indicatorname+"    <span class='badge' title='Indicator' data-toggle='popover' data-trigger='hover' data-content='"+fullindicator+"'>?</span> </label>  </div> </td> </tr>";
                 count++;
                 row2+=row1;
             }
             }
             else{
                 
                 row1="";
             }
              if(isnewrow===1 && count===2)
             {
               if(hidetargetsui==='yes' && readonlyvar==="TRUE"  ){
                     row2+=" <tr class='hiderows' style='display:none;'> ";   
               }   
               else {
                   
                     row2+=" <tr> ";   
                   
               }
                 
        
              }
              else  if(isnewrow===1 && count > 2 && count<=result.length){
                  
                   if(hidetargetsui==='yes' && readonlyvar==="TRUE"  ){
                       
                         row2+=" </tr> <tr class='hiderows' style='display:none;'> "; 
                         
                       } else {
                           
                        row2+=" </tr> <tr> ";      
                   }
                  
               
                  
              }
              
              
              row2+="<td class='"+tdclass+"' colspan='"+colspan+"' > <div class='control-group' > <label> "+label+" </label> <div class='controls'> <input onkeypress='return numbers(event);'  "+isreadonly+"  "+tabindex+" onblur=\""+onblur+"\"  onfocus='this.value = this.value;' type='"+inputtype+"' min ='"+minimum+"' max='"+maximum+"' maxlength='7' data-"+indicatorid+"='0' data-previous_"+indicatorid+"='0'  name='"+indicatorid+"' id='"+indicatorid+"' autocomplete='off' class='form-control'> </div> </div> </td> ";
            //IndicatorID	Age	IndicatorName	Level	datainputtype	Min	Max	onblur	onkeypress	Class	Required
    
     
     //now do an appending
                 
             }
             row2+=" </tr> ";   
            
            //alert(row2);
            // $("#dynamicindicators").html(row2);
            
         $('[data-toggle="popover"]').popover();   
        
    // alert(result[0].IndicatorName);
    });// ned of input field loading
    
    
    //progress bar report section
    

    
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
             row2+=" <tr><td colspan='1'><a id='finishbutton' href='#' style='margin-left: 50%;' onclick='setTimeout(delayedrefresh(),1500);clearcmtsandprcent();' class='btn btn-success btn-lg'>Finish</a></td></tr><tr><td colspan='1'> <div class='alert alert-success' id='message' style='display:none;'><button type='button' class='close' data-dismiss='alert'>×</button><span id='actiondone'></span></div></td></tr> ";   
            
            //alert(row2);
             $("#reportstable").html(row2);
             
    // alert(result[0].IndicatorName);
    });//end of getting json archive
    
    
        
         
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



//=========================================set targets================================

//function settargets(facilitymfl){
function activatecounsellors(){

counsellorslistdb.allDocs({include_docs: true, ascending: true}).then(function (da) {
if(da.total_rows===0){
//getcounsellorslist();
alert("No loaded list of counsellors");

                      }
     else {
       
            var counsellors="<option value=''>select  Counsellor(s)</option>";
            var a;
     for(a=0;a<da.total_rows;a++){
                var dat={}; 
           
	       dat=da.rows[a].doc;
                
            if(dat.RRI_Name!==''){
                if(1===1){
               // if(dat.isactive===1){
                    
           counsellors+="<option data-code='"+dat._id+"' data-fullname=\""+dat.fullname+"\" value='"+dat.RRI_Name+"'>"+dat.fullname+"-"+dat._id+" ["+dat.Currentfacility+"]</option>"
           
           
         
                                     
                                     }
     
           
           $("#counsellorreg").html(counsellors);
          $('#counsellorreg').select2(); 
          $('#counsellorreg').css('width','100%'); 

        
            }
            else {
             //alert("");
             console.log("Skipped Counsellor without rri name "+dat.RRI_Name);
     }
   

     }//end of row

        }
});

}







function savePns(ct,ep,epid,elementid,elem){
    setrowid(ct,epid,elementid);
    
    //receive all the fields from the weekly data from
id=$("#rowid").val();
facility=$("#facilityname").val();
counsellor=$("#counsellor").val();
date_tested=$("#enddate").val();


   contacttype=ct; 
   entrypoint=ep; 
   indicatorid=elementid; 
   indicator=elem; 
  if(ct==='Biological_Children')
   {
       //Biological_Children_New_Pos_1_pns_1f
   pns_1f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_1m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_4f=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_4m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_9f=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_9m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   
   }
  else {   
   pns_1f=''; 
   pns_1m='';
   pns_4f='';
   pns_4m='';
   pns_9f='';
   pns_9m='';    
        }
   
   pns_14f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_14m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   
   if(ct==='Sexual Contacts')
   {
   pns_ukf=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_ukm=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_19f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_19m=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_24f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_24m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_29f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_29m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_34f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_34m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_39f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_39m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_44f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_44m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_49f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_49m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   pns_50f=$("#"+ct+"_"+epid+"_"+elementid+"_").val(); 
   pns_50m=$("#"+ct+"_"+epid+"_"+elementid+"_").val();
   }
   else {
       
   pns_ukf=''; 
   pns_ukm=''; 
   pns_19f=''; 
   pns_19m=''; 
   pns_24f=''; 
   pns_24m=''; 
   pns_29f=''; 
   pns_29m=''; 
   pns_34f=''; 
   pns_34m=''; 
   pns_39f=''; 
   pns_39m=''; 
   pns_44f=''; 
   pns_44m=''; 
   pns_49f=''; 
   pns_49m=''; 
   pns_50f=''; 
   pns_50m='';    
       
   }

console.log("Date started ART__"+datestartedart);
 
var user="hsdsa"; 
var currentdate = new Date();
    
    var mn=""+(currentdate.getMonth()+1) ;
    var dt=""+currentdate.getDate();
    var hr=""+currentdate.getHours();
    var min=""+currentdate.getMinutes();
    var sc=""+currentdate.getSeconds();
    if(mn.length===1){mn='0'+mn;}
    if(dt.length===1){dt='0'+dt;}
    if(hr.length===1){hr='0'+hr;}
    if(min.length===1){min='0'+min;}
    if(sc.length===1){sc='0'+sc;}
    
    
    var timestamp = "" + currentdate.getFullYear() + "-"+ mn + "-"+ dt + " "+ hr+ ":" + min+ ":"+ sc;
    
    if(user===''){user='hsdsa';}
    
    var syncstatus='No';  
    
     var id=null;
     
      console.log("Urefu wa CCC Number "+cccno.length); 
          
     if(facility==='')
     {         
  
   alert('Select facility');
   //$("#facilityname select:first").focus();
   
   $("#facilityname").css('border-color','red');
    //$("select:first").focus();
     }
     
     else if(counsellor===''||counsellor==='select  Counsellor')
     {         
  
   alert('Select Counsellor');
   //$("#facilityname select:first").focus();
   
   $("#counsellor").css('border-color','red');
    //$("select:first").focus();
     }
     
     else if(modality==='')
     {         
  
   alert('Select Modality');
   //$("#facilityname select:first").focus();
   
   $("#modality").css('border-color','red');
    //$("select:first").focus();
     }
     
//     //startdate
//     else if (startdate==='')
//     {
//         
//     alert('Select week begining date');
//   $("#startdate").focus();    
//     }    
   //end date
      else if (enddate==='')
     {
         
     alert('Select Test Date');
   $("#enddate").focus();    
     } 
     

else if(register_no==='') { alert(' Enter  Register Number');  $('#register_no').focus(); }
else if(serialno==='') { alert(' Enter patient  serial number');  $('#serialno').focus(); }
else if(date_tested==='') { alert(' Select date tested');  $('#enddate').focus(); }
else if(age==='') { alert(' Enter Age');  $('#age').focus(); }
else if(gender==='') { alert(' Enter Gender');  $('#gender').focus(); }
//else if(modality==='') { alert(' Select modality');  $('#modality').focus(); }
else if(testresult==='') { alert(' Enter  test result');  $('#testresult').focus(); }
else if(testresult==='Positive' && linked==='') { alert(' Specify if client is linked');  $('#linked').focus(); }
  
else if(linked==='Yes' && cccno==='') { alert(' enter cccno');  $('#cccno').focus(); }
else if(linked_site==='This Facility' && cccno.length!==11) { alert(' Ensure the ccc number is 11 digits eg 15358-01234');  $('#cccno').focus(); }
    
else if(linked==='Yes' && linked_site==='') { alert(' Select linked_site');  $('#linked_site').focus(); }

else if(linked==='Yes' && datestartedart==='') { alert(' Enter date started on ART');  $('#artstartdate').focus(); }

else if(date_tested!=='' && datestartedart!=='' && Date.parse(date_tested) > Date.parse(datestartedart) ) { alert(' Date started on ART cannot be less than date tested for HIV');  $('#artstartdate').focus(); }



else if(linked_site==='Other Facility' && other_facility_linked==='') { alert(' Specify the name of other facility linked');  $('#other_facility_linked').focus(); }
else if(linked==='No' && reason_not_linked===''  ) { alert('Specify reason not linked');  $('#reason_not_linked').focus();  }
else if(  reason_not_linked==='Died' && reason_for_death==='' && linked==='No') { alert('Specify reason for death');  $('#reason_for_death').focus();  }
else if( reason_for_death==='Other natural causes' && other_reason_for_death==='' && linked==='No') { alert('Specify  other reason for death');  $('#other_reason_for_death').focus(); }
else if(reason_not_linked==='Declined' && reason_for_declining==='' && linked==='No') { alert(' Select reason for declining');  $('#reason_for_declining').focus();  }
else if(reason_for_declining==='Other reason' && other_reason_for_declining==='') { alert(' Specify the other reason for declining');  $('#other_reason_for_declining').focus(); }


    
       else {
     var facilitynameandmfl=facility.split("_");        
    // var startd=startdate.replace('-','');      
    // var startd=startd.replace('-','');      
     var endd=enddate.replace('-','');      
     var endd=endd.replace('-',''); 
     var cns=counsellor.replace('-','');
     var mod=modality.replace('-','');
     
     // id=facilitynameandmfl[0]+"_"+endd+"_"+cns+"_"+mod;
      //this should not be cleared
     id=$("#rowid").val();
      
     var facilityname=facilitynameandmfl[1];
            //save data to the db
            //we are now saving both weekly totals and annual cumulatives on the db
            //add a variable to distinguish the two
            //use _wk
            
  insertdailydata(id,facilityname,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,timestamp,user, syncstatus,datestartedart) ;
  console.log(id+" @ "+facilityname+" @ "+counsellor+" @ "+register_no+" @"+serialno+" @ "+ date_tested+" @ "+age+" @ "+gender+" @ "+modality+" @ "+testresult+" @ "+linked+" @ "+cccno+" @ "+linked_site+" @ "+other_facility_linked+" @ "+reason_not_linked+" @ "+ reason_for_death+"@"+ other_reason_for_death+"@"+ reason_for_declining+"@"+ other_reason_for_declining+"@"+ timestamp+"@"+ user+"@"+ syncstatus+"@"+datestartedart) ;



 //selectsearchdata();
$("#message").show();
$("#actiondone").html("Data Saved Successfully");
//call the function that loads entered data
//$("#message").hide().delay(800).fade(400);


console.log('daily data entered');
//open reports tab
 //$('#reportsbutton').click();
 //$('#inpatient_uptake_cmts').focus();
 window.scrollTo(0,0);
//setTimeout(delayedrefresh,1500);
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
    

  
    
  dailydatadb.allDocs({include_docs: true, ascending: true}).then( function(doc) { 
 
     
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
	     
		 //dbdata+="<tr><td> "+dat.doc.startdate+" </td><td>"+dat.doc.syncstatus+"</td><td>"+dat.doc.facility+"</td><td><button class='btn-info' onclick='loadsaveddailydata(\""+dat.doc._id+"\",\""+dat.doc.facility+"\")'>Edit</button></td></tr>";
		 dbdata+="<tr id=\""+dat.doc._id+"\"><td> "+dat.doc.date_tested+" </td><td> Facility: <b>"+dat.doc.facility+"</b> Modality: <b>"+dat.doc.modality+"</b> serial #: <b>"+dat.doc.serialno+" </b> Register #: <b>"+dat.doc.register_no+" Test result:</b> "+dat.doc.testresult+" </td><td><button class='btn-info' onclick='loadsaveddailydata(\""+dat.doc._id+"\",\""+dat.doc.facility+"\",\"no\")'>Edit "+statusicon+"</button></td></tr>";
          	    
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
    
     $("#searchtablediv").html("<table id='searchtable' class='table table-striped table-bordered'><thead><tr><th style='width:30%;'>Date tested</th><th style='width:50%;'>Patient</th><th style='width:20%;'>Edit</th></tr></thead><tbody>"+dbdata+"</tbody></table>");
         
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


function loadsaveddailydata(id,facility,openreportstab ){
    $("#reportsbutton").show();
    
  //  alert(id);
 //load from weekly db where id is as selected   
  var mflanddates=id.split('_');
        	
	dailydatadb.get(id).then(function (doc) {
    var rowid=id;    
    //populate div with respective content
    $("#rowid").val(id);
    
    
    
$("#facilityname").val(mflanddates[0]+"_"+facility);   
$("#counsellor").val(doc.counselorname);
$("#register_no").val(doc.register_no);
$("#serialno").val(doc.serialno);
$("#enddate").val(doc.date_tested);
$("#age").val(doc.age);
$("#gender").val(doc.gender);
$("#modality").val(doc.modality);
$("#testresult").val(doc.testresult);
$("#linked").val(doc.linked);
$("#cccno").val(doc.cccno);
$("#linked_site").val(doc.linked_site);
$("#other_facility_linked").val(doc.other_facility_linked);
$("#reason_not_linked").val(doc.reason_not_linked);
$("#reason_for_death").val(doc.reason_for_death);
$("#other_reason_for_death").val(doc.other_reason_for_death);
$("#reason_for_declining").val(doc.reason_for_declining);
$("#other_reason_for_declining").val(doc.other_reason_for_declining);
$("#artstartdate").val(doc.datestartedart);


   
     //$('#facilityname').select2(); 
     $('#facilityname').select2();
     $('#counsellor').select2(); 
         $("#counsellor").css('width','100%');
         $("#facilityname").css('width','100%');
         $(".select2-container").css('width','100%');
     
     
     $("#savebutton").hide();
     
     $("#updatebutton").show();
     //$("#savenewbutton").show();
      checkids();
      
      asklinkage();
whichfacility();
specifyFacilityLinked();
isshowdiedordeclined();
isshowdeclinedother();
isshowdeadother();
      
      
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
register_no=$("#register_no").val();
serialno=$("#serialno").val();
date_tested=$("#enddate").val();
age=$("#age").val();
gender=$("#gender").val();
modality=$("#modality").val();
testresult=$("#testresult").val();
linked=$("#linked").val();
cccno=$("#cccno").val();
linked_site=$("#linked_site").val();
other_facility_linked=$("#other_facility_linked").val();
reason_not_linked=$("#reason_not_linked").val();
reason_for_death=$("#reason_for_death").val();
other_reason_for_death=$("#other_reason_for_death").val();
reason_for_declining=$("#reason_for_declining").val();
other_reason_for_declining=$("#other_reason_for_declining").val();
datestartedart=$("#artstartdate").val();
//user=$("#user").val();
timestamp=$("#timestamp").val();

console.log("Date started ART__"+artstartdate);
    
    //var user=$("#username").val(); 
    var user="hsdsa"; 
   // var timestamp = $.now();
    
         console.log("Urefu wa CCC Number "+cccno.length); 
    
    var currentdate = new Date();
    
   var mn=""+(currentdate.getMonth()+1) ;
    var dt=""+currentdate.getDate();
    var hr=""+currentdate.getHours();
    var min=""+currentdate.getMinutes();
    var sc=""+currentdate.getSeconds();
    if(mn.length===1){mn='0'+mn;}
    if(dt.length===1){dt='0'+dt;}
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
  
   alert('Select Counsellor');
   //$("#facilityname select:first").focus();
   
   $("#counsellor").css('border-color','red');
    //$("select:first").focus();
     }
     
     else if(modality==='')
     {         
  
   alert('Select Modality');
   //$("#facilityname select:first").focus();
   
   $("#modality").css('border-color','red');
    //$("select:first").focus();
     }
     
//     //startdate
//     else if (startdate==='')
//     {
//         
//     alert('Select week begining date');
//   $("#startdate").focus();    
//     }    
   //end date
      else if (enddate==='')
     {
         
     alert('Select Test Date');
   $("#enddate").focus();    
     } 
     

else if(register_no==='') { alert(' Enter  Register Number');  $('#register_no').focus(); }
else if(serialno==='') { alert(' Enter patient  serial number');  $('#serialno').focus(); }
else if(date_tested==='') { alert(' Select date tested');  $('#enddate').focus(); }
else if(age==='') { alert(' Enter Age');  $('#age').focus(); }
else if(gender==='') { alert(' Enter Gender');  $('#gender').focus(); }
//else if(modality==='') { alert(' Select modality');  $('#modality').focus(); }
else if(testresult==='') { alert(' Enter  test result');  $('#testresult').focus(); }
else if(testresult==='Positive' && linked==='') { alert(' Specify if client is linked');  $('#linked').focus(); }

else if(linked==='Yes' && cccno==='') { alert(' enter cccno');  $('#cccno').focus(); }
 else if(linked_site==='This Facility' && cccno.length!==11) { alert(' Ensure the ccc number is 11 digits eg 15358-01234');  $('#cccno').focus(); }
 
 //else if(modality==='') { alert(' Select modality');  $('#modality').focus(); }
else if(testresult==='') { alert(' Enter  test result');  $('#testresult').focus(); }
else if(testresult==='Positive' && linked==='') { alert(' Specify if client is linked');  $('#linked').focus(); }
 else if(linked==='Yes' && datestartedart==='') { alert(' Enter date started on ART');  $('#artstartdate').focus(); }

else if(date_tested!=='' && datestartedart!=='' && Date.parse(date_tested) > Date.parse(datestartedart) ) { alert(' Date started on ART cannot be less than date tested for HIV');  $('#artstartdate').focus(); }
 
 
else if(linked==='Yes' && linked_site==='') { alert(' Select linked_site');  $('#linked_site').focus(); }
else if(linked_site==='Other Facility' && other_facility_linked==='') { alert(' Specify the name of other facility linked');  $('#other_facility_linked').focus(); }
else if(linked==='No' && reason_not_linked==='' ) { alert('Specify reason not linked');  $('#reason_not_linked').focus();  }
else if(  reason_not_linked==='Died' && reason_for_death==='' && linked==='No') { alert('Specify reason for death');  $('#reason_for_death').focus();  }
else if( reason_for_death==='Other natural causes' && other_reason_for_death==='' && linked==='No') { alert('Specify  other reason for death');  $('#other_reason_for_death').focus(); }
else if(reason_not_linked==='Declined' && reason_for_declining==='' && linked==='No') { alert(' Select reason for declining');  $('#reason_for_declining').focus();  }
else if(reason_for_declining==='Other reason' && other_reason_for_declining==='' && linked==='No') { alert(' Specify the other reason for declining');  $('#other_reason_for_declining').focus(); }

   
       else {
           
     var facilitynameandmfl=facility.split("_");        
    // var startd=startdate.replace('-','');      
     //var startd=startd.replace('-','');      
     var endd=enddate.replace('-','');      
     var endd=endd.replace('-','');      
     var cns=counsellor.replace('-','');
     var mod=modality.replace('-','');     
         
     var facilityname=facilitynameandmfl[1];
            //save data to the db
 // saveweeklyupdates(id,facilitynameandmfl[1],enddate,counselorname,modality, tested,positive_tg,positive,linked_here,linked_else,declined,dead,tca,timestamp,user, syncstatus) ;
        
            //________________________________
          
     id=$("#rowid").val();
  
 saveweeklyupdates(id,facilityname,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,timestamp,user, syncstatus,datestartedart) ;
  
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
   
function saveweeklyupdates(id,facilityname,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,timestamp,user, syncstatus,datestartedart) {
 
 
 
 
 dailydatadb.get(id).then(function (doc) {
        
  //doc.age = 4;
 //alert(id);
   if(id!=='null' && id!=='' ){
        //doc._id=id;
  
doc.facility=facilityname;
doc.counselorname=counsellor;
doc.register_no=register_no;
doc.serialno=serialno;
doc.date_tested=date_tested;
doc.age=age;
doc.gender=gender;
doc.modality=modality;
doc.testresult=testresult;
doc.linked=linked;
doc.cccno=cccno;
doc.linked_site=linked_site;
doc.other_facility_linked=other_facility_linked;
doc.reason_not_linked=reason_not_linked;
doc.reason_for_death=reason_for_death;
doc.other_reason_for_death=other_reason_for_death;
doc.reason_for_declining=reason_for_declining;
doc.other_reason_for_declining=other_reason_for_declining;
doc.datestartedart=datestartedart;
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
    
    var returnedresponses=0;
   // $('#exportbutton').on('click',function() {
    $("#exportbutton").prop("disabled",true);
    $("#exportbutton").removeClass('btn-lg btn-success').addClass('btn btn-default');

var recordsunexported=$("#unexported").val();
                //read db files that have not been synced
    
  $("#exportbutton").hide();
  $("#exportmsg").show();
   $("#exportresponse").append("<b><font color='orange'>Exporting data.. please wait response.</b><br/>");
  
  dailydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 
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
        if(dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no")
        {

           
       var hrf=" <button class='btn-sm button-info' data-dismiss='modal' onclick=\"loadsaveddailydata('"+dat.doc._id+"','"+dat.doc.facility+"','no"+missingcommentid+"'); \"> Enter Comments</button>";
           

        
 if(skipexporting===0)
 {
            
            updatesyncstatus(dat.doc._id,'Yes');
        
        
            
    $.ajax({
                         url:'receiveData',                            
                        type:'post', 
data:{

id:dat.doc._id,
facility:dat.doc.facility,
counselorname:dat.doc.counselorname,
register_no:dat.doc.register_no,
serialno:dat.doc.serialno,
date_tested:dat.doc.date_tested,
age:dat.doc.age,
gender:dat.doc.gender,
modality:dat.doc.modality,
testresult:dat.doc.testresult,
linked:dat.doc.linked,
cccno:dat.doc.cccno,
linked_site:dat.doc.linked_site,
other_facility_linked:dat.doc.other_facility_linked,
reason_not_linked:dat.doc.reason_not_linked,
reason_for_death:dat.doc.reason_for_death,
other_reason_for_death:dat.doc.other_reason_for_death,
reason_for_declining:dat.doc.reason_for_declining,
other_reason_for_declining:dat.doc.other_reason_for_declining,
datestartedart:dat.doc.datestartedart,
user:dat.doc.user,
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
                        else if (skipexporting!==0 && idyangu.indexOf("annual")>=0) {
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



function exportalldata(){
    
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
  
  
  
  dailydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 
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
                         url:'receiveData',                            
                        type:'post', 
data:{

id:dat.doc._id,
facility:dat.doc.facility,
counselorname:dat.doc.counselorname,
register_no:dat.doc.register_no,
serialno:dat.doc.serialno,
date_tested:dat.doc.date_tested,
age:dat.doc.age,
gender:dat.doc.gender,
modality:dat.doc.modality,
testresult:dat.doc.testresult,
linked:dat.doc.linked,
cccno:dat.doc.cccno,
linked_site:dat.doc.linked_site,
other_facility_linked:dat.doc.other_facility_linked,
reason_not_linked:dat.doc.reason_not_linked,
reason_for_death:dat.doc.reason_for_death,
other_reason_for_death:dat.doc.other_reason_for_death,
reason_for_declining:dat.doc.reason_for_declining,
other_reason_for_declining:dat.doc.other_reason_for_declining,
datestartedart:dat.doc.datestartedart,
user:dat.doc.user,
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
  
dailydatadb.get(id).then(function (doc1) {
      console.log(id+" sync status updated");
 doc1.syncstatus=st;
 return dailydatadb.put(doc1);
 
});

	
    
}//end of function





function unsynceddata(){
    
    
    dailydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 
          
      //read where sync is 0
	  var cnt1=0;
	   for(c=0;c<doc.total_rows;c++){
               
                var dat={};
	   dat=doc.rows[c];
           var cid=dat.doc._id;
               if((dat.doc.syncstatus==="No"||dat.doc.syncstatus==="0"||dat.doc.syncstatus==="no") && cid.indexOf("_annual")===-1 )
                        {
                            
                         cnt1++;   
                            
                        }
               var displaytext=cnt1+" records";
               if(cnt1===1){
                   
                    displaytext=cnt1+" record";
               }
              
          	                    } //end of for loop
	 
	$("#unexportedno").html("<br/>( "+displaytext+" )");
	$("#unexported").val(cnt1);
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

$("#weeklydataform").submit(function(e){
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

 $('input').css('border-color','#337ab7');


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
     enddate=$("#enddate").val();
     console.log("facility___"+facility);
      if(facility!==''  && facility!==null ){
     
 var facilitynameandmfl=facility.split("_");        
     //var startd=startdate.replace('-','');      
    // var startd=startd.replace('-','');      
     var endd=enddate.replace('-','');      
     var endd=endd.replace('-','');      
      id=facilitynameandmfl[0]+"_"+endd+"_";
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
dailydatadb.get(id).then(function(doc) {
  return dailydatadb.remove(doc);
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
 if($('#hidetargets:checkbox:checked').length > 0){
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

function yearlytotal(indicator){
  //  
    var currentvalue=$("#"+indicator).val(); 
    var previous=$("#"+indicator).attr("data-previous_"+indicator);
    var newtotal=$("#"+indicator).data(""+indicator);
    
    
    
   var afteradding=0;
   if(currentvalue!==''){
       
   afteradding=parseInt(previous)+parseInt(currentvalue);
   
   }
   
        //----update the excel values
      $("#"+indicator).attr( "data-"+indicator , afteradding);  //data-total_hiv_pos_child
      //$("#"+indicator).val(afteradding);  //the total that appears on the input field
      console.log("before adding "+previous+" After adding "+afteradding);  
        
}


//for PNS supported facilities

function validatemodalities(){
    
    
 var ispns= $("#facilityname").find(':selected').data("pns");   
    //alert("facil "+$("#facilityname").val()+" pns="+ispns);
    var modalitiesoption="<option value=''>Select Modality</option>";
        modalitiesoption+="<option value='Optimized Testing IPD'>Optimized Testing IPD</option>";
        modalitiesoption+="<option value='Optimized Testing OPD'>Optimized Testing OPD</option>";
        
   if(ispns===1){
   modalitiesoption+="<option value='PNS'>PNS</option>";
        modalitiesoption+="<option value='Index Testing'>Index Testing</option>";    
       
   } 
   else {
       
    
        modalitiesoption+="<option value='Index Testing'>Index Testing</option>";   
   }
    
  // $("#modality").html(modalitiesoption); 
    
    
}

//validatemodalities();

//$("#counsellorfacil").show();




function asklinkage(){
    
  var tr=$("#testresult").val();
   //alert(regni);

   
        if(tr==='Positive')
        {
              
            $(".linked").show();
            //$(".linkage").show();
            
        }
        else {
          
           $(".linkage").hide();
           $("#linked").val("");
           $(".cccno").hide();
            $("#cccno").val(""); 
            $("#linked_site").val("");
            $("#other_facility_linked").val("");
             
             }
    
    
}


function whichfacility(){
  //if linked , show the next input field which asks which facility users is linked 
  var tr=$("#linked").val();
   //alert(regni);

   
        if(tr==='Yes')
        {
              
            $(".linked_site").show();
           // $(".cccno").show();
            $(".reason_not_linked").val("");
            $(".reason_not_linked").hide();
            
           //hide and clear values for not linked 
               $(".reason_for_declining").hide();
                $(".reason_for_death").hide();
               $(".other_reason_for_declining").hide();              
               $(".other_reason_for_death").hide();
               
               $("#reason_for_declining").val("");
                $("#reason_for_death").val("");
               $("#other_reason_for_declining").val("");              
               $("#other_reason_for_death").val("");
            
            
        }
        
        
          else if(tr==='No') {
          
           $(".linked_site").hide();
           $("#linked_site").val("");
           $("#other_facility_linked").val("");
           $(".other_facility_linked").hide();
   //show options for why not linked
           $(".reason_not_linked").show();
            $(".cccno").hide();
            $("#cccno").val("");
             
            }
        
        else {
          
           $(".linked_site").hide();
           $("#linked_site").val("");
           $("#other_facility_linked").val("");
           $(".other_facility_linked").hide();
   //show options for why not linked
           $(".reason_not_linked").hide();
            $(".cccno").hide();
            $("#cccno").val("");
             
            }
    
    
}


function specifyFacilityLinked()
{
  //if linked , show the next input field which asks which facility users is linked 
  var tr=$("#linked_site").val();
 if(tr==='Other Facility')
        {
              
          $(".other_facility_linked").show();
          $(".cccno").show();
         
        }
        
        
        else  if(tr==='This Facility')
           {
               
           $(".other_facility_linked").hide();
           $("#other_facility_linked").val("");
           $(".cccno").show();
           
           }
        
        else 
           {
               
           $(".other_facility_linked").hide();
           $("#other_facility_linked").val("");
           $(".cccno").hide();
           
           }
    
    
}



function isshowdiedordeclined()
{
  //if linked , show the next input field which asks which facility users is linked 
  var tr=$("#reason_not_linked").val();
 if(tr==='Declined')
        {
              
          $(".reason_for_declining").show();
          $(".reason_for_death").hide();
          $("#reason_for_death").val("");
          
          $(".other_reason_for_death").hide();
          $("#other_reason_for_death").val("");
       }
        else if(tr==='Died') 
           {
            $(".reason_for_death").show();
            $(".reason_for_declining").hide();
            $("#reason_for_declining").val("");
            
            $(".other_reason_for_declining").hide();
            $("#other_reason_for_declining").val("");
           }
           else {
               //if reason not linked is TCA
               $(".reason_for_declining").hide();
                $(".reason_for_death").hide();
               $(".other_reason_for_declining").hide();              
               $(".other_reason_for_death").hide();
               
               $("#reason_for_declining").val("");
                $("#reason_for_death").val("");
               $("#other_reason_for_declining").val("");              
               $("#other_reason_for_death").val("");
               
           }
    
    
}



function isshowdeclinedother()
{
  //if linked , show the next input field which asks which facility users is linked 
  var tr=$("#reason_for_declining").val();
 if(tr==='Other reason')
        {
              
          $(".other_reason_for_declining").show();
          $(".other_reason_for_death").hide();
          $("#other_reason_for_death").val("");
        
       }
        else 
           {
           
            $(".other_reason_for_declining").hide();
            $("#other_reason_for_declining").val("");
           }
    
    
}

function isshowdeadother()
{
  //if linked , show the next input field which asks which facility users is linked 
  var tr=$("#reason_for_death").val();
 if(tr==='Other natural causes')
        {
              
          $(".other_reason_for_death").show();
          $(".other_reason_for_declining").hide();
          $("#other_reason_for_declining").val("");
        
       }
        else 
           {
           
            $(".other_reason_for_death").hide();
            $("#other_reason_for_death").val("");
           }
    
    
}

function setrowid(ct,ep,elementid)
{
    var id="";
    
    var f=$("#facilityname").val();
    var mfl=f.split("_")[0];
    var dt=$("#enddate").val();
    var cns=$("#counsellor").val();
   
    
    var id=mfl+"_"+cns+"_"+dt+"_"+ct+"_"+ep+"_"+elementid+"_"+cns;
    
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
          facilmfl=fullfacil.split("_")[0]+'-';
                }
    
    var linked_here=$("#linked_site").val();
    
    if(linked_here==='This Facility'  && $("#cccno").val()===''){
        
     $("#cccno").val(""+facilmfl);   
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




function cleardata(){
    
    if(ConfirmDeleteever()===true){
    
    dailydatadb.destroy(function (err, response) {
   if (err) {
      return console.log(err);
   } else {
      console.log ("Data Database Deleted");
     // $("#resetdbbtn").hide();
      $("#cleardatabtn").html("Data deleted successful!");
      window.location.reload();
      
   }
                                        });
    
        }
}


function validatemodalities()
{
    var miaka=$("#age").val();
    
 if(miaka>5){  
$("#modality option[value='malnutrition']").attr("disabled", true); 
$("#modality option[value='pediatrics']").attr("disabled", true); 

$("#modality option[value='anc1']").attr("disabled",false); 
$("#modality option[value='anc2']").attr("disabled",false); 
$("#modality option[value='ld']").attr("disabled",false); 
$("#modality option[value='pnc']").attr("disabled",false);


 }
 else if (miaka<9){
     //deactivate
$("#modality option[value='anc1']").attr("disabled", true); 
$("#modality option[value='anc2']").attr("disabled", true); 
$("#modality option[value='ld']").attr("disabled", true); 
$("#modality option[value='pnc']").attr("disabled", true);
//activate
$("#modality option[value='malnutrition']").removeAttr("disabled"); 
$("#modality option[value='pediatrics']").removeAttr("disabled"); 
     
 }
 else {
     
$("#modality option[value='malnutrition']").attr("disabled",false);
$("#modality option[value='pediatrics']").attr("disabled",false);   
 
 
$("#modality option[value='anc1']").attr("disabled",false); 
$("#modality option[value='anc2']").attr("disabled",false);
$("#modality option[value='ld']").removeAttr("disabled"); 
$("#modality option[value='pnc']").removeAttr("disabled");
     
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
        type:'post',
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
  
  // When the user scrolls the page, execute myFunction
$(".modal-content").scroll(function() {myFunction();});

// Get the header
var header = document.getElementById("myHeader0");

// Get the offset position of the navbar
var sticky = header.offsetTop; 
console.log("sticky ni "+sticky);

// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() 
{
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
  
  
}



  
    //PouchDB.debug.enable('*');
    //PouchDB.debug.disable();
var pnsdata_db = new PouchDB('pnsdata');
var remoteCouch = false;
var pnsdetails;

//receive the artist, song title and lyrics text
function insertPns(id,date,contacttype,entrypoint,indicator,pns_ukf,pns_ukm,pns_1f,pns_1m,pns_4f,pns_4m,pns_9f,pns_9m,pns_14f,pns_14m,pns_19f,pns_19m,pns_24f,pns_24m,pns_29f,pns_29m,pns_34f,pns_34m,pns_39f,pns_39m,pns_44f,pns_44m,pns_49f,pns_49m,pns_50f,pns_50m,counsellor,facility,mflcode,value,timestamp) {
    
    var syncstatus='No'; 
    
   pnsdata_db = {
_id: ""+id //this is static since we cant have two users using the same phone
,weekend:date
,contacts_type:contacttype
,contacts_modality:entrypoint
,indicator:indicator
,counsellor:counsellor
,mflcode:mflcode
,facility:facility
,pns_ukf:pns_ukf
,pns_ukm:pns_ukm
,pns_1f:pns_1f
,pns_1m:pns_1m
,pns_4f:pns_4f
,pns_4m:pns_4m
,pns_9f:pns_9f
,pns_9m:pns_9m
,pns_14f:pns_14f
,pns_14m:pns_14m
,pns_19f:pns_19f
,pns_19m:pns_19m
,pns_24f:pns_24f
,pns_24m:pns_24m
,pns_29f:pns_29f
,pns_29m:pns_29m
,pns_34f:pns_34f
,pns_34m:pns_34m
,pns_39f:pns_39f
,pns_39m:pns_39m
,pns_44f:pns_44f
,pns_44m:pns_44m
,pns_49f:pns_49f
,pns_49m:pns_49m
,pns_50f:pns_50f
,pns_50m:pns_50m
,timestamp:timestamp
,status:syncstatus
,completed: false
  };
  pnsdata_db.put(pnsdetails, function callback(err, result) {
    if (!err) 
    {
      console.log('record added succesfully');
    }
    else{
        console.log(err);
        
    }
    
    //setTimeout(delayedrefresh,1500);
  });
}


//update code 





function updatePns(id,date,contacttype,entrypoint,indicator,pns_ukf,pns_ukm,pns_1f,pns_1m,pns_4f,pns_4m,pns_9f,pns_9m,pns_14f,pns_14m,pns_19f,pns_19m,pns_24f,pns_24m,pns_29f,pns_29m,pns_34f,pns_34m,pns_39f,pns_39m,pns_44f,pns_44m,pns_49f,pns_49m,pns_50f,pns_50m,counsellor,facility,mflcode,value,timestamp){
    
    var syncstatus='No'; 
    
pnsdata_db.get(id).then(function (doc) {
        
 
   if(id!=='null' && id!=='' ){
//doc._id=id;
doc.weekend=date;
doc.contacts_type=contacttype;
doc.contacts_modality=entrypoint;
doc.indicator=indicator;
doc.counsellor=counsellor;
doc.mflcode=mflcode;
doc.facility=facility;
doc.pns_ukf=pns_ukf;
doc.pns_ukm=pns_ukm;
doc.pns_1f=pns_1f;
doc.pns_1m=pns_1m;
doc.pns_4f=pns_4f;
doc.pns_4m=pns_4m;
doc.pns_9f=pns_9f;
doc.pns_9m=pns_9m;
doc.pns_14f=pns_14f;
doc.pns_14m=pns_14m;
doc.pns_19f=pns_19f;
doc.pns_19m=pns_19m;
doc.pns_24f=pns_24f;
doc.pns_24m=pns_24m;
doc.pns_29f=pns_29f;
doc.pns_29m=pns_29m;
doc.pns_34f=pns_34f;
doc.pns_34m=pns_34m;
doc.pns_39f=pns_39f;
doc.pns_39m=pns_39m;
doc.pns_44f=pns_44f;
doc.pns_44m=pns_44m;
doc.pns_49f=pns_49f;
doc.pns_49m=pns_49m;
doc.pns_50f=pns_50f;
doc.pns_50m=pns_50m;
doc.timestamp=timestamp;
doc.status=syncstatus;
  return pnsdata_db.put(doc);
   }
});
    
}



</script>

<script>
//if('serviceWorker' in navigator) 
//{
//  navigator.serviceWorker
//           .register('sw1.js')
//           .then(function() { console.log("Service Worker Registered"); });
//}
</script>

	</body>
</html>
