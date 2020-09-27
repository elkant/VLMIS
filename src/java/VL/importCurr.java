/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VL;

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
public class importCurr extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String insert="";
          String myresponse="";
        
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        
         sendmail sm=new sendmail();
        
        PrintWriter out = response.getWriter();
        String txtresponse="Error occured during TB_Curr data export at the server."; 
        dbConnweb conn= new dbConnweb();
 

String id=null;
//String facility=null;
String ccc_number=null;


//
//String Date_of_Birth=null;
//String Sex=null;
//String Population_Type=null;
//String Date_Initiated_On_ART=null;

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
String uzito=null;


//String Started_on_IPT=null;
//String Date_Started_on_IPT=null;
//String IPT_Outcome=null;
//String Date_of_IPT_Outcome=null;
//String Reason_Not_Completed=null;
//String First_Viral_Load_Date=null;
//String Date_Last_VL_Conducted=null;
//String Justification=null;
//String PMTCT_Status=null;
//String VL_Results=null;
//String Stability=null;
//String DC_Model=null;
//String well_unwell=null;

String user_id=null;
String timestamp=null;




        
        try {
        
       
    
id=request.getParameter("id");
//facility=request.getParameter("facility");
String mflcode="";

//if(request.getParameter("facility")!=null){
//mflcode=facility.split("_")[0];
//}
ccc_number=request.getParameter("ccc_number");
//Date_of_Birth=request.getParameter("Date_of_Birth");
//Sex=request.getParameter("Sex");
//Population_Type=request.getParameter("Population_Type");
//Date_Initiated_On_ART=request.getParameter("Date_Initiated_On_ART");
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

if(request.getParameter("uzito")!=null){
uzito=request.getParameter("uzito");
}
//Started_on_IPT=request.getParameter("Started_on_IPT");
//Date_Started_on_IPT=request.getParameter("Date_Started_on_IPT");
//IPT_Outcome=request.getParameter("IPT_Outcome");
//Date_of_IPT_Outcome=request.getParameter("Date_of_IPT_Outcome");
//Reason_Not_Completed=request.getParameter("Reason_Not_Completed");
//First_Viral_Load_Date=request.getParameter("First_Viral_Load_Date");
//Date_Last_VL_Conducted=request.getParameter("Date_Last_VL_Conducted");
//Justification=request.getParameter("Justification");
//PMTCT_Status=request.getParameter("PMTCT_Status");
//VL_Results=request.getParameter("VL_Results");
//Stability=request.getParameter("Stability");
//DC_Model=request.getParameter("DC_Model");
//well_unwell=request.getParameter("well_unwell");

user_id=request.getParameter("user_id");
timestamp=request.getParameter("timestamp");



String version="1.0.0";


 //id=id;
 //id=id.replace("18087","17799");

 

 String usermail=""; 
 if(user_id.contains("@") && (user_id.contains(".com") || user_id.contains(".org")  )){usermail=","+user_id;}
 
        
          
          //set maxconnection

System.out.println(" Curr Data upload by "+user_id+" ");
           
           // conn.st.executeUpdate("SET GLOBAL max_allowed_packet = 209715200");
            conn.rs = conn.st.executeQuery("SHOW VARIABLES LIKE 'max_allowed_packet' ");
            if (conn.rs.next()) 
            {
               // System.out.println("Max_allowed_connection_" + conn.rs.getString(2));

            }            
                  
           String checkexisting="select id from nonemr_curr where id  like '"+id+"' "; 
           //String checkexisting="select id from weekly_data_new where id='"+id+"' "; 
           //users should maintain the same date range
            
            /* TODO output your page here. You may use following sample code. */
         
   conn.rs=conn.st.executeQuery(checkexisting);
   
   if(conn.rs.next()){
    //System.out.println(" Data for id "+id+" and counsellor "+counselorname+" already added ");
   
   //do update code here
   
  
   //,newart=?,newpos_pmtct=?,art_pmtct=?
     
insert=" update nonemr_curr set 	ccc_number=?,	Current_Regimen=?,	Last_Clinical_Visit_Date=?,	Screened_For_TB=?,	Days_of_Dispense=?,	Months_of_Dispense=?,	Next_appointment_Date=?,	Monthly_Patient_Status=?,	Reason_For_LTFU=?,	Date_LTFU=?,	care_ending_reason=?,	Cause_of_Death=?,	Date_Restarted_on_ART=?,	user_id=?,	timestamp=? , mflcode =? , uzito=?"
     + " where id='"+id+"'  ";
         conn.pst1=conn.conne.prepareStatement(insert);   

conn.pst1.setString(1,ccc_number);

conn.pst1.setString(2,Current_Regimen);
conn.pst1.setString(3,Last_Clinical_Visit_Date);
conn.pst1.setString(4,Screened_For_TB);
conn.pst1.setString(5,Days_of_Dispense);
conn.pst1.setString(6,Months_of_Dispense);
conn.pst1.setString(7,Next_appointment_Date);
conn.pst1.setString(8,Monthly_Patient_Status);
conn.pst1.setString(9,Reason_For_LTFU);
conn.pst1.setString(10,Date_LTFU);
conn.pst1.setString(11,care_ending_reason);
conn.pst1.setString(12,Cause_of_Death);
conn.pst1.setString(13,Date_Restarted_on_ART);

conn.pst1.setString(14,user_id);
conn.pst1.setString(15,timestamp);
conn.pst1.setString(16,mflcode);
conn.pst1.setString(17,uzito);



 if(conn.pst1.executeUpdate()==1)
  { 
  if(!id.contains("annual")){ //notify user only when importing weekly summaries
    txtresponse="<font color='green'> Data updated succesfully for patient "+ccc_number+"  </font> ";
                             //sm.Sendemail("RRI Sep. IMPORT","Hi ,  nThis is to notify you that data for "+facilityname+" has been updated succesfully by user "+user+" for dates "+startdate+" to "+enddate+". n nPlease  do not reply to this mail. It is system generated ", "Updated RRI Sep Data for  "+facilityname+" & dates "+startdate+" to "+enddate,"EKaunda@fhi360.org,MObuya@fhi360.org"+usermail);
                            
                            if(user_id.equals("select counsellor"))
                            {
                                try {
                                    sm.Sendemail("Workload. VALIDATION FAILURE"," Hi, n This is to notify you that data for "+mflcode+"  for patient "+ccc_number+" Has no user name. n n Please Request the respective user to do the update and reexport data ", "Curr data export for "+mflcode+" & user "+ccc_number,"EKaunda@fhi360.org"+usermail);
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
                        txtresponse="<font color='red'>Data for <b>"+mflcode+"</b></font><font color='red'> NOT updated </font><font color='red'> for patient  "+ccc_number+". because the record was updated by a super admin.</font>";
                        
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
            
         
       
  insert=" replace into nonemr_curr(id,ccc_number,Current_Regimen,Last_Clinical_Visit_Date,Screened_For_TB,Days_of_Dispense,Months_of_Dispense,Next_appointment_Date,Monthly_Patient_Status,Reason_For_LTFU,Date_LTFU,care_ending_reason,Cause_of_Death,Date_Restarted_on_ART,user_id,timestamp,mflcode,uzito) "
                 + " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                      conn.pst1=conn.conne.prepareStatement(insert);    
                          
conn.pst1.setString(1,id);
conn.pst1.setString(2,ccc_number);
conn.pst1.setString(3,Current_Regimen);
conn.pst1.setString(4,Last_Clinical_Visit_Date);
conn.pst1.setString(5,Screened_For_TB);
conn.pst1.setString(6,Days_of_Dispense);
conn.pst1.setString(7,Months_of_Dispense);
conn.pst1.setString(8,Next_appointment_Date);
conn.pst1.setString(9,Monthly_Patient_Status);
conn.pst1.setString(10,Reason_For_LTFU);
conn.pst1.setString(11,Date_LTFU);
conn.pst1.setString(12,care_ending_reason);
conn.pst1.setString(13,Cause_of_Death);
conn.pst1.setString(14,Date_Restarted_on_ART);
conn.pst1.setString(15,user_id);
conn.pst1.setString(16,timestamp);
conn.pst1.setString(17,mflcode);
conn.pst1.setString(18,uzito);


                        
if(conn.pst1.executeUpdate()==1)
{
                             if(!id.contains("annual")){
                            txtresponse="<font color='green'> Data added succesfully for patient "+ccc_number+"  </font> </button>";
                           
                            //check if counsellor name is select counsellor
                            
                            //add team leaders variable at this point 
                            if(user_id.equals("select counsellor")){
                                try {
   sm.Sendemail("VL DATA VALIDATION FAILURE"," Hi, n This is to notify you that data for "+mflcode+"  for patient "+ccc_number+" and id "+id+" Has no user name. n n Please Request the respective user to do the update and reexport data ", "VL data export for "+mflcode+" & patient "+ccc_number,"EKaunda@fhi360.org"+usermail);
                                } catch (MessagingException ex) 
                                {
                                    Logger.getLogger(importVl.class.getName()).log(Level.SEVERE, null, ex);
                                }
                            }
                             }                          
          }
          
     else {
              
  if(!id.contains("annual")){
                          txtresponse="<font color='green'>Data for "+mflcode+" </font><font color='red'>  NOT inserted </font><font color='green'> succesfully for patient  "+ccc_number+". This could be a duplicate error. </font>";
                             }
  
           }
       
          }
   }
           
    if(id.contains("annual")){txtresponse="";}
         if(conn.st!=null){conn.st.close();}  
         if(conn.rs!=null){conn.rs.close();}  
         if(conn.pst1!=null){conn.pst1.close();}  
         if(conn.conne!=null){conn.conne.close();}  
        
   
        } catch (SQLException ex) 
        {
            Logger.getLogger(importVl.class.getName()).log(Level.SEVERE, null, ex);
            
             txtresponse="<font color='red'>Data  NOT inserted succesfully for ccc number "+ccc_number+".  "+ex+" </font>";
        //send an email at this point of the exception
            
            try {
                sm.Sendemail("Facility Curr DATA IMPORT",ex.toString()+ "___ n user name: "+user_id+" Facility name: n "+id+" n "+myresponse, "MYSQL IMPORTING ERROR ","EKaunda@fhi360.org");
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
