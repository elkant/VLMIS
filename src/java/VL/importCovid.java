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
public class importCovid extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String insert="";
          String myresponse="";
        
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        
         sendmail sm=new sendmail();
        
        PrintWriter out = response.getWriter();
        String txtresponse="Error occured during COVID data export at the server."; 
        dbConnweb conn= new dbConnweb();
 

String id=null;
//String facility=null;
String ccc_number=null;


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
if(request.getParameter("mflcode")!=null){
mflcode=request.getParameter("mflcode");}
 else {
supplimental_oxygen=null;
}


if(request.getParameter("user_id")!=null){
user_id=request.getParameter("user_id");}
 else {
user_id="Unknown User";
}


String version="1.0.0";


 //id=id;
 //id=id.replace("18087","17799");

 

 String usermail=""; 
// if(user_id.contains("@") && (user_id.contains(".com") || user_id.contains(".org")  )){usermail=","+user_id;}
 if(user_id.contains("@") && (user_id.contains(".com") || user_id.contains(".org")  )){usermail=","+user_id;}
 
        
          
          //set maxconnection

System.out.println(" covid Data upload by "+user_id+" ");
           
           // conn.st.executeUpdate("SET GLOBAL max_allowed_packet = 209715200");
            conn.rs = conn.st.executeQuery("SHOW VARIABLES LIKE 'max_allowed_packet' ");
            if (conn.rs.next()) 
            {
               // System.out.println("Max_allowed_connection_" + conn.rs.getString(2));

            }            
                  
           String checkexisting="select id from nonemr_covid where id  like '"+id+"' "; 
           //String checkexisting="select id from weekly_data_new where id='"+id+"' "; 
           //users should maintain the same date range
            
            /* TODO output your page here. You may use following sample code. */
         
   conn.rs=conn.st.executeQuery(checkexisting);
   
   if(conn.rs.next()){
    //System.out.println(" Data for id "+id+" and counsellor "+counselorname+" already added ");
   
   //do update code here
   
  
   //,newart=?,newpos_pmtct=?,art_pmtct=?
     
insert=" update nonemr_covid set 	ccc_number=?, ever_vaccinated=?, vaccination_status=?, vaccine1=?, dose1=?, date1=?, verified1=?, vaccine2=?, dose2=?, date2=?, verified2=?, received_booster=?, vaccine_booster=?, date_booster=?, verified_booster=?, tested_for_covid19=?, date_tested_covid19=?, covid_test_result=?, covid_presentation=?, hospitalized=?, admission_unit=?, supplimental_oxygen=?, user_id=?,timestamp=? ,mflcode=?"
     + " where id='"+id+"'  ";
         conn.pst1=conn.conne.prepareStatement(insert);   

conn.pst1.setString(1,ccc_number);
conn.pst1.setString(2,ever_vaccinated);
conn.pst1.setString(3,vaccination_status);
conn.pst1.setString(4,vaccine1);
conn.pst1.setString(5,dose1);
conn.pst1.setString(6,date1);
conn.pst1.setString(7,verified1);
conn.pst1.setString(8,vaccine2);
conn.pst1.setString(9,dose2);
conn.pst1.setString(10,date2);
conn.pst1.setString(11,verified2);
conn.pst1.setString(12,received_booster);
conn.pst1.setString(13,vaccine_booster);
conn.pst1.setString(14,date_booster);
conn.pst1.setString(15,verified_booster);
conn.pst1.setString(16,tested_for_covid19);
conn.pst1.setString(17,date_tested_covid19);
conn.pst1.setString(18,covid_test_result);
conn.pst1.setString(19,covid_presentation);
conn.pst1.setString(20,hospitalized);
conn.pst1.setString(21,admission_unit);
conn.pst1.setString(22,supplimental_oxygen);
conn.pst1.setString(23,user_id);
conn.pst1.setString(24,timestamp);
conn.pst1.setString(25,mflcode);

 if(conn.pst1.executeUpdate()==1)
  { 
  if(!id.contains("annual")){ //notify user only when importing weekly summaries
    txtresponse="<font color='green'> Data updated succesfully for patient "+ccc_number+"  </font> ";
                             //sm.Sendemail("RRI Sep. IMPORT","Hi ,  nThis is to notify you that data for "+facilityname+" has been updated succesfully by user "+user+" for dates "+startdate+" to "+enddate+". n nPlease  do not reply to this mail. It is system generated ", "Updated RRI Sep Data for  "+facilityname+" & dates "+startdate+" to "+enddate,"EKaunda@fhi360.org,MObuya@fhi360.org"+usermail);
                            
                            if(user_id.equals("select counsellor"))
                            {
                                try {
                                    sm.Sendemail("covid. VALIDATION FAILURE"," Hi, n This is to notify you that data for "+mflcode+"  for patient "+ccc_number+" Has no user name. n n Please Request the respective user to do the update and reexport data ", "Curr data export for "+mflcode+" & user "+ccc_number,"EKaunda@fhi360.org"+usermail);
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
            
         
       
  insert=" replace into nonemr_covid(id,ccc_number,ever_vaccinated,vaccination_status,vaccine1,dose1,date1,verified1,vaccine2,dose2,date2,verified2,received_booster,vaccine_booster,date_booster,verified_booster,tested_for_covid19,date_tested_covid19,covid_test_result,covid_presentation,hospitalized,admission_unit,supplimental_oxygen,user_id,timestamp,mflcode) "
                 + " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                      conn.pst1=conn.conne.prepareStatement(insert);    
                          
conn.pst1.setString(1,id);
conn.pst1.setString(2,ccc_number);
conn.pst1.setString(3,ever_vaccinated);
conn.pst1.setString(4,vaccination_status);
conn.pst1.setString(5,vaccine1);
conn.pst1.setString(6,dose1);
conn.pst1.setString(7,date1);
conn.pst1.setString(8,verified1);
conn.pst1.setString(9,vaccine2);
conn.pst1.setString(10,dose2);
conn.pst1.setString(11,date2);
conn.pst1.setString(12,verified2);
conn.pst1.setString(13,received_booster);
conn.pst1.setString(14,vaccine_booster);
conn.pst1.setString(15,date_booster);
conn.pst1.setString(16,verified_booster);
conn.pst1.setString(17,tested_for_covid19);
conn.pst1.setString(18,date_tested_covid19);
conn.pst1.setString(19,covid_test_result);
conn.pst1.setString(20,covid_presentation);
conn.pst1.setString(21,hospitalized);
conn.pst1.setString(22,admission_unit);
conn.pst1.setString(23,supplimental_oxygen);
conn.pst1.setString(24,user_id);
conn.pst1.setString(25,timestamp);
conn.pst1.setString(26,mflcode);



                        
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
    if(conn.rs!=null){conn.rs.close();}  
         if(conn.st!=null){conn.st.close();}           
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
