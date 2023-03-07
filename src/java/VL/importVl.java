/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VL;

import data.counsellordaily;
import database.dbConnweb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import notification.sendmail;

/**
 *
 * @author Emmanuel E
 */
public class importVl extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String insert="";
          String myresponse="";
        
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        
         sendmail sm=new sendmail();
        
        PrintWriter out = response.getWriter();
        String txtresponse="Error occured during data export at the server."; 
        dbConnweb conn= new dbConnweb();
        
        



String id=null;
String facility=null;
String ccc_number=null;
String Date_of_Birth=null;
String Sex=null;
String Population_Type=null;
String Date_Initiated_On_ART=null;
String Current_Regimen=null;
String Last_Clinical_Visit_Date=null;
String Screened_For_TB=null;
String Days_of_Dispense=null;
String Months_of_Dispense=null;
String Next_appointment_Date=null;
String Monthly_Patient_Status=null;
String Reason_For_LTFU=null;
String Date_LTFU=null;
String care_ending_reason=null;
String Cause_of_Death=null;
String Date_Restarted_on_ART=null;
String Started_on_IPT=null;
String Date_Started_on_IPT=null;
String IPT_Outcome=null;
String Date_of_IPT_Outcome=null;
String Reason_Not_Completed=null;
String First_Viral_Load_Date=null;
String Date_Last_VL_Conducted=null;
String Justification=null;
String PMTCT_Status=null;
String VL_Results=null;
String Stability=null;
String DC_Model=null;
String well_unwell=null;
String uzito=null;
String user_id=null;
String timestamp=null;

String ever_vaccinated=null;
String vaccination_status=null;
String vaccine1=null;
String dose1=null;
String date1=null;
String verified1=null;
String vaccine2=null;
String dose2=null;
String date2=null;
String verified2=null;
String received_booster=null;
String vaccine_booster=null;
String date_booster=null;
String verified_booster=null;
String tested_for_covid19=null;
String date_tested_covid19=null;
String covid_test_result=null;
String covid_presentation=null;
String hospitalized=null;
String admission_unit=null;
String supplimental_oxygen=null;
String regimenline=null;



        
        try {
        
       
    
 id=request.getParameter("id");
facility=request.getParameter("facility");
String mflcode="";

if(request.getParameter("facility")!=null){
mflcode=facility.split("_")[0];
}
ccc_number=request.getParameter("ccc_number");
Date_of_Birth=request.getParameter("Date_of_Birth");
Sex=request.getParameter("Sex");
Population_Type=request.getParameter("Population_Type");
Date_Initiated_On_ART=request.getParameter("Date_Initiated_On_ART");
Current_Regimen=request.getParameter("Current_Regimen");
Last_Clinical_Visit_Date=request.getParameter("Last_Clinical_Visit_Date");
Screened_For_TB=request.getParameter("Screened_For_TB");
Days_of_Dispense=request.getParameter("Days_of_Dispense");
Months_of_Dispense=request.getParameter("Months_of_Dispense");
Next_appointment_Date=request.getParameter("Next_appointment_Date");
Monthly_Patient_Status=request.getParameter("Monthly_Patient_Status");
Reason_For_LTFU=request.getParameter("Reason_For_LTFU");
Date_LTFU=request.getParameter("Date_LTFU");
care_ending_reason=request.getParameter("care_ending_reason");
Cause_of_Death=request.getParameter("Cause_of_Death");
Date_Restarted_on_ART=request.getParameter("Date_Restarted_on_ART");
Started_on_IPT=request.getParameter("Started_on_IPT");
Date_Started_on_IPT=request.getParameter("Date_Started_on_IPT");
IPT_Outcome=request.getParameter("IPT_Outcome");
Date_of_IPT_Outcome=request.getParameter("Date_of_IPT_Outcome");
Reason_Not_Completed=request.getParameter("Reason_Not_Completed");
First_Viral_Load_Date=request.getParameter("First_Viral_Load_Date");
Date_Last_VL_Conducted=request.getParameter("Date_Last_VL_Conducted");
Justification=request.getParameter("Justification");
PMTCT_Status=request.getParameter("PMTCT_Status");
VL_Results=request.getParameter("VL_Results");
Stability=request.getParameter("Stability");
DC_Model=request.getParameter("DC_Model");
well_unwell=request.getParameter("well_unwell");

if(request.getParameter("uzito")!=null)
   {
uzito=request.getParameter("uzito");
   }
user_id=request.getParameter("user_id");
timestamp=request.getParameter("timestamp");

if(request.getParameter("ever_vaccinated")!=null){
ever_vaccinated=request.getParameter("ever_vaccinated");}
 else {
ever_vaccinated=null;
}
if(request.getParameter("vaccination_status")!=null){
vaccination_status=request.getParameter("vaccination_status");}
 else {
vaccination_status=null;
}
if(request.getParameter("vaccine1")!=null){
vaccine1=request.getParameter("vaccine1");}
 else {
vaccine1=null;
}
if(request.getParameter("dose1")!=null){
dose1=request.getParameter("dose1");}
 else {
dose1=null;
}
if(request.getParameter("date1")!=null){
date1=request.getParameter("date1");}
 else {
date1=null;
}
if(request.getParameter("verified1")!=null){
verified1=request.getParameter("verified1");}
 else {
verified1=null;
}
if(request.getParameter("vaccine2")!=null){
vaccine2=request.getParameter("vaccine2");}
 else {
vaccine2=null;
}
if(request.getParameter("dose2")!=null){
dose2=request.getParameter("dose2");}
 else {
dose2=null;
}
if(request.getParameter("date2")!=null){
date2=request.getParameter("date2");}
 else {
date2=null;
}
if(request.getParameter("verified2")!=null){
verified2=request.getParameter("verified2");}
 else {
verified2=null;
}
if(request.getParameter("received_booster")!=null){
received_booster=request.getParameter("received_booster");}
 else {
received_booster=null;
}
if(request.getParameter("vaccine_booster")!=null){
vaccine_booster=request.getParameter("vaccine_booster");}
 else {
vaccine_booster=null;
}
if(request.getParameter("date_booster")!=null){
date_booster=request.getParameter("date_booster");}
 else {
date_booster=null;
}
if(request.getParameter("verified_booster")!=null){
verified_booster=request.getParameter("verified_booster");}
 else {
verified_booster=null;
}
if(request.getParameter("tested_for_covid19")!=null){
tested_for_covid19=request.getParameter("tested_for_covid19");}
 else {
tested_for_covid19=null;
}
if(request.getParameter("date_tested_covid19")!=null){
date_tested_covid19=request.getParameter("date_tested_covid19");}
 else {
date_tested_covid19=null;
}
if(request.getParameter("covid_test_result")!=null){
covid_test_result=request.getParameter("covid_test_result");}
 else {
covid_test_result=null;
}
if(request.getParameter("covid_presentation")!=null){
covid_presentation=request.getParameter("covid_presentation");}
 else {
covid_presentation=null;
}
if(request.getParameter("hospitalized")!=null){
hospitalized=request.getParameter("hospitalized");}
 else {
hospitalized=null;
}
if(request.getParameter("admission_unit")!=null){
admission_unit=request.getParameter("admission_unit");}
 else {
admission_unit=null;
}
if(request.getParameter("supplimental_oxygen")!=null){
supplimental_oxygen=request.getParameter("supplimental_oxygen");}
 else {
supplimental_oxygen=null;
}

if(request.getParameter("regimenline")!=null){
regimenline=request.getParameter("regimenline");}
 else {
regimenline=null;
}



String version="1.0.0";


 //id=id;
 //id=id.replace("18087","17799");

 

 String usermail=""; 
 if(user_id.contains("@") && (user_id.contains(".com") || user_id.contains(".org")  )){usermail=","+user_id;}
 
        
          
          //set maxconnection

System.out.println(" VL Data upload by "+user_id+" ");
           
           // conn.st.executeUpdate("SET GLOBAL max_allowed_packet = 209715200");
            conn.rs = conn.st.executeQuery("SHOW VARIABLES LIKE 'max_allowed_packet' ");
            if (conn.rs.next()) 
            {
               // System.out.println("Max_allowed_connection_" + conn.rs.getString(2));

            }            
                  
           String checkexisting="select id from nonemr_all where id  like '"+id+"' "; 
           //String checkexisting="select id from weekly_data_new where id='"+id+"' "; 
           //users should maintain the same date range
            
            /* TODO output your page here. You may use following sample code. */
         
   conn.rs=conn.st.executeQuery(checkexisting);
   
   if(conn.rs.next()){
    //System.out.println(" Data for id "+id+" and counsellor "+counselorname+" already added ");
   
   //do update code here
   
  
   //,newart=?,newpos_pmtct=?,art_pmtct=?
     
insert=" update nonemr_all set facility=?,	ccc_number=?,	Date_of_Birth=?,	Sex=?,	Population_Type=?,	Date_Initiated_On_ART=?,	Current_Regimen=?,	Last_Clinical_Visit_Date=?,	Screened_For_TB=?,	Days_of_Dispense=?,	Months_of_Dispense=?,	Next_appointment_Date=?,	Monthly_Patient_Status=?,	Reason_For_LTFU=?,	Date_LTFU=?,	care_ending_reason=?,	Cause_of_Death=?,	Date_Restarted_on_ART=?,	Started_on_IPT=?,	Date_Started_on_IPT=?,	IPT_Outcome=?,	Date_of_IPT_Outcome=?,	Reason_Not_Completed=?,	First_Viral_Load_Date=?,	Date_Last_VL_Conducted=?,	Justification=?,	PMTCT_Status=?,	VL_Results=?,	Stability=?,	DC_Model=?,	well_unwell=?,	user_id=?,	timestamp=? , mflcode =? ,uzito=?,ever_vaccinated=?, vaccination_status=?, vaccine1=?, dose1=?, date1=?, verified1=?, vaccine2=?, dose2=?, date2=?, verified2=?, received_booster=?, vaccine_booster=?, date_booster=?, verified_booster=?, tested_for_covid19=?, date_tested_covid19=?, covid_test_result=?, covid_presentation=?, hospitalized=?, admission_unit=?, supplimental_oxygen=?, regimenline=?"
     + " where id='"+id+"'  ";
         conn.pst1=conn.conne.prepareStatement(insert);   
//facilityname.startdate.enddate.hiv_pos_target_child.hiv_pos_target_adult.hiv_pos_target_total.hiv_pos_child.hiv_pos_adult.hiv_pos_total.new_care_child.new_care_adult.new_care_total.new_art_target_child.new_art_target_adult.new_art_target_total.started_art_child.started_art_adult.started_art_total.viral_load_target_child.viral_load_target_adult.viral_load_target_total.viral_load_done_child.viral_load_done_adult.viral_load_done_total.ipt_target_child.ipt_target_adult.ipt_target_total.ipt_child.ipt_adult.ipt_total.testing_target_child.testing_target_adult.testing_target_total.test_child.test_adult.test_total.pmtct_hiv_pos_target.pmtct_hiv_pos.eid_target.eid_done.viral_load_mothers_target.viral_load_mothers_done.user.hiv_pos_yield_perc_child.hiv_pos_yield_perc_adult.hiv_pos_yield_perc_all.hiv_pos_care_perc_child.hiv_pos_care_perc_adult.hiv_pos_care_perc_all.started_art_perc_child.started_art_perc_adult.started_art_perc_all.viral_test_perc_child.viral_test_perc_adult.viral_test_perc_all.ipt_done_perc_child.ipt_done_perc_adult.ipt_done_perc_all.tested_perc_child.tested_perc_adult.tested_perc_all.hiv_pos_yield_cmts.hiv_pos_care_cmts.started_art_cmts.viral_test_cmts.ipt_done_cmts.tested_cmts.viral_load_mothers_perc.eid_done_perc.pmtct_hiv_pos_perc.viral_load_mothers_cmts.eid_done_cmts.pmtct_hiv_pos_cmts
                          
conn.pst1.setString(1,facility);
conn.pst1.setString(2,ccc_number);
conn.pst1.setString(3,Date_of_Birth);
conn.pst1.setString(4,Sex);
conn.pst1.setString(5,Population_Type);
conn.pst1.setString(6,Date_Initiated_On_ART);
conn.pst1.setString(7,Current_Regimen);
conn.pst1.setString(8,Last_Clinical_Visit_Date);
conn.pst1.setString(9,Screened_For_TB);
conn.pst1.setString(10,Days_of_Dispense);
conn.pst1.setString(11,Months_of_Dispense);
conn.pst1.setString(12,Next_appointment_Date);
conn.pst1.setString(13,Monthly_Patient_Status);
conn.pst1.setString(14,Reason_For_LTFU);
conn.pst1.setString(15,Date_LTFU);
conn.pst1.setString(16,care_ending_reason);
conn.pst1.setString(17,Cause_of_Death);
conn.pst1.setString(18,Date_Restarted_on_ART);
conn.pst1.setString(19,Started_on_IPT);
conn.pst1.setString(20,Date_Started_on_IPT);
conn.pst1.setString(21,IPT_Outcome);
conn.pst1.setString(22,Date_of_IPT_Outcome);
conn.pst1.setString(23,Reason_Not_Completed);
conn.pst1.setString(24,First_Viral_Load_Date);
conn.pst1.setString(25,Date_Last_VL_Conducted);
conn.pst1.setString(26,Justification);
conn.pst1.setString(27,PMTCT_Status);
conn.pst1.setString(28,VL_Results);
conn.pst1.setString(29,Stability);
conn.pst1.setString(30,DC_Model);
conn.pst1.setString(31,well_unwell);
conn.pst1.setString(32,user_id);
conn.pst1.setString(33,timestamp);
conn.pst1.setString(34,mflcode);
conn.pst1.setString(35,uzito);
conn.pst1.setString(36,ever_vaccinated);
conn.pst1.setString(37,vaccination_status);
conn.pst1.setString(38,vaccine1);
conn.pst1.setString(39,dose1);
conn.pst1.setString(40,date1);
conn.pst1.setString(41,verified1);
conn.pst1.setString(42,vaccine2);
conn.pst1.setString(43,dose2);
conn.pst1.setString(44,date2);
conn.pst1.setString(45,verified2);
conn.pst1.setString(46,received_booster);
conn.pst1.setString(47,vaccine_booster);
conn.pst1.setString(48,date_booster);
conn.pst1.setString(49,verified_booster);
conn.pst1.setString(50,tested_for_covid19);
conn.pst1.setString(51,date_tested_covid19);
conn.pst1.setString(52,covid_test_result);
conn.pst1.setString(53,covid_presentation);
conn.pst1.setString(54,hospitalized);
conn.pst1.setString(55,admission_unit);
conn.pst1.setString(56,supplimental_oxygen);
conn.pst1.setString(57,regimenline);



 if(conn.pst1.executeUpdate()==1)
  { 
  if(!id.contains("annual")){ //notify user only when importing weekly summaries
    txtresponse="<font color='green'> Data updated succesfully for patient "+ccc_number+"  </font> ";
                             //sm.Sendemail("RRI Sep. IMPORT","Hi ,  nThis is to notify you that data for "+facilityname+" has been updated succesfully by user "+user+" for dates "+startdate+" to "+enddate+". n nPlease  do not reply to this mail. It is system generated ", "Updated RRI Sep Data for  "+facilityname+" & dates "+startdate+" to "+enddate,"EKaunda@fhi360.org,MObuya@fhi360.org"+usermail);
                            
                            if(user_id.equals("select counsellor"))
                            {
                                try {
                                    sm.Sendemail("Workload. VALIDATION FAILURE"," Hi, n This is to notify you that data for "+facility+"  for patient "+ccc_number+" Has no user name. n n Please Request the respective user to do the update and reexport data ", "VL data export for "+facility+" & user "+ccc_number,"EKaunda@fhi360.org"+usermail);
                                } catch (MessagingException ex) 
                                {
                                    Logger.getLogger(importVl.class.getName()).log(Level.SEVERE, null, ex);
                                }
                            }
                            
                            }
  }
                        else 
                        {
                              if(!id.contains("annual"))
                              {
                        txtresponse="<font color='red'>Data for <b>"+facility+"</b></font><font color='red'> NOT updated </font><font color='red'> for patient  "+ccc_number+". because the record was updated by a super admin.</font>";
                        
                              }
                        }
   
   
                     //myresponse=" update daily_raw set  facility='"+facility+"',counsellor='"+counselorname+"',register_no='"+register_no+"',serialno='"+serialno+"',date_tested='"+date_tested+"',age='"+age+"',gender='"+gender+"',modality='"+modality+"',testresult='"+testresult+"',linked='"+linked+"',cccno='"+cccno+"',linked_site='"+linked_site+"',other_facility_linked='"+other_facility_linked+"',reason_not_linked='"+reason_not_linked+"',reason_for_death='"+reason_for_death+"',other_reason_for_death='"+other_reason_for_death+"',reason_for_declining='"+reason_for_declining+"',other_reason_for_declining='"+other_reason_for_declining+"',user='"+user+"',timestamp='"+timestamp+"',datestartedart='"+datestartedart+"'"
                // + " where id='"+id+"' ";
                     // System.out.println(myresponse);
                        
   
   }
   else 
   {
    
      if(1==1) {
       
   //do insert code here
   
//      myresponse=" insert into workload "
//  + " ( id,facility,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,user,timestamp,datestartedart) "
//+ " values ('"+id+"','"+facility+"','"+counselorname+"','"+register_no+"','"+serialno+"','"+date_tested+"','"+age+"','"+gender+"','"+modality+"','"+testresult+"','"+linked+"','"+cccno+"','"+linked_site+"','"+other_facility_linked+"','"+reason_not_linked+"','"+reason_for_death+"','"+other_reason_for_death+"','"+reason_for_declining+"','"+other_reason_for_declining+"','"+user+"','"+timestamp+"','"+datestartedart+"')";
//     // System.out.println(myresponse);                   
            
         
       
          insert=" replace into nonemr_all(id,facility,ccc_number,Date_of_Birth,Sex,Population_Type,Date_Initiated_On_ART,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,First_Viral_Load_Date,Date_Last_VL_Conducted,Justification,PMTCT_Status,VL_Results,Stability,DC_Model,well_unwell,user_id,timestamp,mflcode,uzito,ever_vaccinated,vaccination_status,vaccine1,dose1,date1,verified1,vaccine2,dose2,date2,verified2,received_booster,vaccine_booster,date_booster,verified_booster,tested_for_covid19,date_tested_covid19,covid_test_result,covid_presentation,hospitalized,admission_unit,supplimental_oxygen,regimenline) "
                 + " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                      conn.pst1=conn.conne.prepareStatement(insert);    
                          
conn.pst1.setString(1,id);
conn.pst1.setString(2,facility);
conn.pst1.setString(3,ccc_number);
conn.pst1.setString(4,Date_of_Birth);
conn.pst1.setString(5,Sex);
conn.pst1.setString(6,Population_Type);
conn.pst1.setString(7,Date_Initiated_On_ART);
conn.pst1.setString(8,Current_Regimen);
conn.pst1.setString(9,Last_Clinical_Visit_Date);
conn.pst1.setString(10,Screened_For_TB);
conn.pst1.setString(11,Days_of_Dispense);
conn.pst1.setString(12,Months_of_Dispense);
conn.pst1.setString(13,Next_appointment_Date);
conn.pst1.setString(14,Monthly_Patient_Status);
conn.pst1.setString(15,Reason_For_LTFU);
conn.pst1.setString(16,Date_LTFU);
conn.pst1.setString(17,care_ending_reason);
conn.pst1.setString(18,Cause_of_Death);
conn.pst1.setString(19,Date_Restarted_on_ART);
conn.pst1.setString(20,Started_on_IPT);
conn.pst1.setString(21,Date_Started_on_IPT);
conn.pst1.setString(22,IPT_Outcome);
conn.pst1.setString(23,Date_of_IPT_Outcome);
conn.pst1.setString(24,Reason_Not_Completed);
conn.pst1.setString(25,First_Viral_Load_Date);
conn.pst1.setString(26,Date_Last_VL_Conducted);
conn.pst1.setString(27,Justification);
conn.pst1.setString(28,PMTCT_Status);
conn.pst1.setString(29,VL_Results);
conn.pst1.setString(30,Stability);
conn.pst1.setString(31,DC_Model);
conn.pst1.setString(32,well_unwell);
conn.pst1.setString(33,user_id);
conn.pst1.setString(34,timestamp);
conn.pst1.setString(35,mflcode);
conn.pst1.setString(36,uzito);
conn.pst1.setString(37,ever_vaccinated);
conn.pst1.setString(38,vaccination_status);
conn.pst1.setString(39,vaccine1);
conn.pst1.setString(40,dose1);
conn.pst1.setString(41,date1);
conn.pst1.setString(42,verified1);
conn.pst1.setString(43,vaccine2);
conn.pst1.setString(44,dose2);
conn.pst1.setString(45,date2);
conn.pst1.setString(46,verified2);
conn.pst1.setString(47,received_booster);
conn.pst1.setString(48,vaccine_booster);
conn.pst1.setString(49,date_booster);
conn.pst1.setString(50,verified_booster);
conn.pst1.setString(51,tested_for_covid19);
conn.pst1.setString(52,date_tested_covid19);
conn.pst1.setString(53,covid_test_result);
conn.pst1.setString(54,covid_presentation);
conn.pst1.setString(55,hospitalized);
conn.pst1.setString(56,admission_unit);
conn.pst1.setString(57,supplimental_oxygen);
conn.pst1.setString(58,regimenline);


                        
          if(conn.pst1.executeUpdate()==1)
          {
                             if(!id.contains("annual")){
                            txtresponse="<font color='green'> Data added succesfully for patient "+ccc_number+"  </font> </button>";
                           
                            //check if counsellor name is select counsellor
                            
                            //add team leaders variable at this point 
                            if(user_id.equals("select counsellor")){
                                try {
                                    sm.Sendemail("VL DATA VALIDATION FAILURE"," Hi, n This is to notify you that data for "+facility+"  for patient "+ccc_number+" and id "+id+" Has no user name. n n Please Request the respective user to do the update and reexport data ", "VL data export for "+facility+" & patient "+ccc_number,"EKaunda@fhi360.org"+usermail);
                                } catch (MessagingException ex) 
                                {
                                    Logger.getLogger(importVl.class.getName()).log(Level.SEVERE, null, ex);
                                }
                            }
                             }                          
          }
          
     else {
              
  if(!id.contains("annual")){
                          txtresponse="<font color='green'>Data for "+facility+" </font><font color='red'>  NOT inserted </font><font color='green'> succesfully for patient  "+ccc_number+". This could be a duplicate error. </font>";
                             }
  
           }
       
          }
   }
           
    if(id.contains("annual")){txtresponse="";}
    if(conn.rs!=null){conn.rs.close();}
         if(conn.st!=null){conn.st.close();}             
         if(conn.pst1!=null){conn.pst1.close();}  
         if(conn.conne!=null){conn.conne.close();}  
        
   
        } catch (SQLException ex) 
        {
            Logger.getLogger(importVl.class.getName()).log(Level.SEVERE, null, ex);
            
             txtresponse="<font color='red'>Data for "+facility+" NOT inserted succesfully for ccc number "+ccc_number+".  "+ex+" </font>";
        //send an email at this point of the exception
            
            try {
                sm.Sendemail("Facility Workload DATA IMPORT",ex.toString()+ "___ n user name: "+user_id+" Facility name: n "+facility+" n "+myresponse, "MYSQL IMPORTING ERROR ","EKaunda@fhi360.org");
                } catch (MessagingException ex1) {
                Logger.getLogger(importVl.class.getName()).log(Level.SEVERE, null, ex1);
            }
            
        }
        
       
      out.println(txtresponse);   
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
