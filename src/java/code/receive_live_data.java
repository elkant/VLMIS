/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package code;

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
import javax.servlet.http.HttpSession;
import notification.sendmail;

/**
 *
 * @author Emmanuel E
 */
public class receive_live_data extends HttpServlet {

      HttpSession session;
    
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
        
          String usersession="system";
            session=request.getSession();
        
      if(session.getAttribute("user")!=null)
      {
      usersession=session.getAttribute("user").toString();
      }


String id=null;
String facility=null;
String counselorname=null;
String register_no=null;
String serialno=null;
String date_tested=null;
String age=null;
String gender=null;
String modality=null;
String testresult=null;
String linked=null;
String cccno=null;
String linked_site=null;
String other_facility_linked=null;
String reason_not_linked=null;
String reason_for_death=null;
String other_reason_for_death=null;
String reason_for_declining=null;
String other_reason_for_declining=null;
String user=null;
String timestamp=null;
String datestartedart="";
String newid=null;
    try {
        
       
      
       
        
id=request.getParameter("id");
facility=request.getParameter("facility");
counselorname=request.getParameter("counselorname");
register_no=request.getParameter("register_no");
serialno=request.getParameter("serialno");
date_tested=request.getParameter("date_tested");
age=request.getParameter("age");
gender=request.getParameter("gender");
modality=request.getParameter("modality");
testresult=request.getParameter("testresult");
linked=request.getParameter("linked");
cccno=request.getParameter("cccno");
linked_site=request.getParameter("linked_site");
other_facility_linked=request.getParameter("other_facility_linked");
reason_not_linked=request.getParameter("reason_not_linked");
reason_for_death=request.getParameter("reason_for_death");
other_reason_for_death=request.getParameter("other_reason_for_death");
reason_for_declining=request.getParameter("reason_for_declining");
other_reason_for_declining=request.getParameter("other_reason_for_declining");
user=request.getParameter("user");
timestamp=request.getParameter("timestamp");
newid=request.getParameter("newid");

String version="4.0.0";
if(request.getParameter("datestartedart")!=null){
datestartedart=request.getParameter("datestartedart");
}
else {
 version="3.0.0";
}

 //id=id+date_tested.replace("-","").substring(0,6);
 id=id.replace("18087","17799");
 newid=newid.replace("18087","17799");

 

 String usermail=""; 
 if(user.contains("@") && (user.contains(".com") || user.contains(".org")  )){usermail=","+user;}
 
         if(modality.equals("ld") || modality.equals("anc1") || modality.equals("anc2")|| modality.equals("pnc"))
             
         {
         
         if(gender.equals("Male")){ gender="Female"; }
             
         }
          
          //set maxconnection


           
           // conn.st.executeUpdate("SET GLOBAL max_allowed_packet = 209715200");
            conn.rs = conn.st.executeQuery("SHOW VARIABLES LIKE 'max_allowed_packet' ");
            if (conn.rs.next()) {
                System.out.println("Max_allowed_connection_" + conn.rs.getString(2));

            }   
            
            
            if(!id.equals(newid))
            {
            //if the user has been updated on either Facilityname, serial no, register no , modality , yearmonth , then delete the old record and add anew one afresh
                
            String insert1=" replace into aphiaplus_moi.deleted_daily_raw select id, facility, counsellor, register_no, serialno, date_tested, age, gender, modality, testresult, linked, cccno, linked_site, other_facility_linked, reason_not_linked, reason_for_death, other_reason_for_death, reason_for_declining, other_reason_for_declining, user, timestamp, lastsynced, datestartedart, positive_verified,linkage_verified,locked, '"+user+"' as deletedby  from aphiaplus_moi.daily_raw where id='"+id+"'; ";
            conn.st.executeUpdate(insert1);
            conn.st.executeUpdate("call aphiaplus_moi.delete_record('"+id+"');");   
            conn.st.executeUpdate(" insert into audit(action, user) values('Deleted user whose id is "+id+" and added a new user whose id is "+newid+"','"+user+"')"); 
            
            id=newid;
            
            }
            
                  
           String checkexisting="select id from daily_raw where id  like '"+id+"' and counsellor='"+counselorname+"'"; 
           //String checkexisting="select id from weekly_data_new where id='"+id+"' "; 
           //users should maintain the same date range
            
            /* TODO output your page here. You may use following sample code. */
         
   conn.rs=conn.st.executeQuery(checkexisting);
   
   if(conn.rs.next()){
       System.out.println(" Data for id "+id+" and counsellor "+counselorname+" already added ");
   
   //do update code here
   
   //tested	positive_tg	positive	treatment_tg	linked_here	linked_else	declined	dead	tca	viralload_tg	viralload
   //tested	positive_tg	positive	treatment_tg	linked_here	linked_else	declined	dead	tca	viralload_tg	viralload


   //,newart=?,newpos_pmtct=?,art_pmtct=?
     
          insert=" update daily_raw set facility=?,counsellor=?,register_no=?,serialno=?,date_tested=?,age=?,gender=?,modality=?,testresult=?,linked=?,cccno=?,linked_site=?,other_facility_linked=?,reason_not_linked=?,reason_for_death=?,other_reason_for_death=?,reason_for_declining=?,other_reason_for_declining=?,user=?,timestamp=?,datestartedart=? ,locked=1"
                 + " where id='"+id+"' ";
                        conn.pst1=conn.conne.prepareStatement(insert);   
//facilityname.startdate.enddate.hiv_pos_target_child.hiv_pos_target_adult.hiv_pos_target_total.hiv_pos_child.hiv_pos_adult.hiv_pos_total.new_care_child.new_care_adult.new_care_total.new_art_target_child.new_art_target_adult.new_art_target_total.started_art_child.started_art_adult.started_art_total.viral_load_target_child.viral_load_target_adult.viral_load_target_total.viral_load_done_child.viral_load_done_adult.viral_load_done_total.ipt_target_child.ipt_target_adult.ipt_target_total.ipt_child.ipt_adult.ipt_total.testing_target_child.testing_target_adult.testing_target_total.test_child.test_adult.test_total.pmtct_hiv_pos_target.pmtct_hiv_pos.eid_target.eid_done.viral_load_mothers_target.viral_load_mothers_done.user.hiv_pos_yield_perc_child.hiv_pos_yield_perc_adult.hiv_pos_yield_perc_all.hiv_pos_care_perc_child.hiv_pos_care_perc_adult.hiv_pos_care_perc_all.started_art_perc_child.started_art_perc_adult.started_art_perc_all.viral_test_perc_child.viral_test_perc_adult.viral_test_perc_all.ipt_done_perc_child.ipt_done_perc_adult.ipt_done_perc_all.tested_perc_child.tested_perc_adult.tested_perc_all.hiv_pos_yield_cmts.hiv_pos_care_cmts.started_art_cmts.viral_test_cmts.ipt_done_cmts.tested_cmts.viral_load_mothers_perc.eid_done_perc.pmtct_hiv_pos_perc.viral_load_mothers_cmts.eid_done_cmts.pmtct_hiv_pos_cmts
                          
conn.pst1.setString(1,facility);
conn.pst1.setString(2,counselorname);
conn.pst1.setString(3,register_no);
conn.pst1.setString(4,serialno);
conn.pst1.setString(5,date_tested);
conn.pst1.setString(6,age);
conn.pst1.setString(7,gender);
conn.pst1.setString(8,modality);
conn.pst1.setString(9,testresult);
conn.pst1.setString(10,linked);
conn.pst1.setString(11,cccno);
conn.pst1.setString(12,linked_site);
conn.pst1.setString(13,other_facility_linked);
conn.pst1.setString(14,reason_not_linked);
conn.pst1.setString(15,reason_for_death);
conn.pst1.setString(16,other_reason_for_death);
conn.pst1.setString(17,reason_for_declining);
conn.pst1.setString(18,other_reason_for_declining);
conn.pst1.setString(19,user);
conn.pst1.setString(20,timestamp);
conn.pst1.setString(21,datestartedart);

                      
                   
                          
                        
                        if(conn.pst1.executeUpdate()==1)
                        { 
                            if(!id.contains("annual")){ //notify user only when importing weekly summaries
                            txtresponse="<font color='green'> Data for <b> "+facility+" </b> updated succesfully for date "+date_tested+" </font>";
                             //sm.Sendemail("RRI Sep. IMPORT","Hi ,  nThis is to notify you that data for "+facilityname+" has been updated succesfully by user "+user+" for dates "+startdate+" to "+enddate+". n nPlease  do not reply to this mail. It is system generated ", "Updated RRI Sep Data for  "+facilityname+" & dates "+startdate+" to "+enddate,"EKaunda@fhi360.org,MObuya@fhi360.org"+usermail);
                            
                              conn.st.executeUpdate(" insert into audit(action, user) values('Updated data whose id is "+id+"','"+usersession+"')");  
                             
                            if(counselorname.equals("select counsellor")){
                                try {
                                    sm.Sendemail("RRI Sep. VALIDATION FAILURE"," Hi, n This is to notify you that data for "+facility+"  for date "+date_tested+" Has no Counsellor name. n n Please Request the respective counsellor to do the update and reexport data ", "RRI Sep. data export for "+facility+" & date "+date_tested,"EKaunda@fhi360.org"+usermail);
                                } catch (MessagingException ex) {
                                    Logger.getLogger(importweeklydata.class.getName()).log(Level.SEVERE, null, ex);
                                }
                            }
                            
                            }
                        }
                        else 
                        {
                              if(!id.contains("annual")){
                        txtresponse="<font color='green'>Data for <b>"+facility+"</b></font><font color='red'> NOT updated </font><font color='green'> for date  "+date_tested+". This is because data for a similar date already exists. </font>";
                        
                              }
                        }
   
   
                     myresponse=" update daily_raw set  facility='"+facility+"',counsellor='"+counselorname+"',register_no='"+register_no+"',serialno='"+serialno+"',date_tested='"+date_tested+"',age='"+age+"',gender='"+gender+"',modality='"+modality+"',testresult='"+testresult+"',linked='"+linked+"',cccno='"+cccno+"',linked_site='"+linked_site+"',other_facility_linked='"+other_facility_linked+"',reason_not_linked='"+reason_not_linked+"',reason_for_death='"+reason_for_death+"',other_reason_for_death='"+other_reason_for_death+"',reason_for_declining='"+reason_for_declining+"',other_reason_for_declining='"+other_reason_for_declining+"',user='"+user+"',timestamp='"+timestamp+"',datestartedart='"+datestartedart+"'"
                 + " where id='"+id+"' ";
                      System.out.println(myresponse);
                        
   
   }
   else 
   {
   //do insert code here
   
      myresponse="insert into daily_raw"
  + "( id,facility,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,user,timestamp,datestartedart) "
+ " values ('"+id+"','"+facility+"','"+counselorname+"','"+register_no+"','"+serialno+"','"+date_tested+"','"+age+"','"+gender+"','"+modality+"','"+testresult+"','"+linked+"','"+cccno+"','"+linked_site+"','"+other_facility_linked+"','"+reason_not_linked+"','"+reason_for_death+"','"+other_reason_for_death+"','"+reason_for_declining+"','"+other_reason_for_declining+"','"+user+"','"+timestamp+"','"+datestartedart+"')";
      System.out.println(myresponse);                   
            
         
       
          insert="insert into daily_raw(id,facility,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,user,timestamp,datestartedart,locked) "
                 + " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                      conn.pst1=conn.conne.prepareStatement(insert);    
                          
conn.pst1.setString(1,id);
conn.pst1.setString(2,facility);
conn.pst1.setString(3,counselorname);
conn.pst1.setString(4,register_no);
conn.pst1.setString(5,serialno);
conn.pst1.setString(6,date_tested);
conn.pst1.setString(7,age);
conn.pst1.setString(8,gender);
conn.pst1.setString(9,modality);
conn.pst1.setString(10,testresult);
conn.pst1.setString(11,linked);
conn.pst1.setString(12,cccno);
conn.pst1.setString(13,linked_site);
conn.pst1.setString(14,other_facility_linked);
conn.pst1.setString(15,reason_not_linked);
conn.pst1.setString(16,reason_for_death);
conn.pst1.setString(17,other_reason_for_death);
conn.pst1.setString(18,reason_for_declining);
conn.pst1.setString(19,other_reason_for_declining);
conn.pst1.setString(20,user);
conn.pst1.setString(21,timestamp);
conn.pst1.setString(22,datestartedart);
conn.pst1.setString(23,"1");
                        
                      
            
                     
                        
                        
                        if(conn.pst1.executeUpdate()==1){
                             if(!id.contains("annual")){
                            txtresponse="<font color='green'> Data for "+facility+" added succesfully for date "+date_tested+"  </font>";
                            conn.st.executeUpdate(" insert into audit(action, user) values('inserted data whose id is "+id+"','"+usersession+"')");  
                             
                            //check if counsellor name is select counsellor
                            
                            //add team leaders variable at this point 
                            if(counselorname.equals("select counsellor")){
                                try {
                                    sm.Sendemail("RRI Sep. VALIDATION FAILURE"," Hi, n This is to notify you that data for "+facility+"  for date "+date_tested+" and id "+id+" Has no Counsellor name. n n Please Request the respective counsellor to do the update and reexport data ", "RRI Sep. data export for "+facility+" & date "+date_tested,"EKaunda@fhi360.org"+usermail);
                                } catch (MessagingException ex) {
                                    Logger.getLogger(importweeklydata.class.getName()).log(Level.SEVERE, null, ex);
                                }
                            }
                             }                          } 
                        else {
                             if(!id.contains("annual")){
                          txtresponse="<font color='green'>Data for "+facility+" </font><font color='red'>  NOT inserted </font><font color='green'> succesfully for dates to "+date_tested+". This could be a duplicate error. </font>";
                             }
                             }
       
       
   }
           
    if(id.contains("annual")){txtresponse="";}
         if(conn.st!=null){conn.st.close();}  
         if(conn.rs!=null){conn.rs.close();}  
         if(conn.pst1!=null){conn.pst1.close();}  
         if(conn.conne!=null){conn.conne.close();}  
        
   
        } catch (SQLException ex) {
            Logger.getLogger(importweeklydata.class.getName()).log(Level.SEVERE, null, ex);
             txtresponse="<font color='red'>Data for "+facility+" NOT inserted succesfully for date "+date_tested+".  "+ex+" </font>";
        //send an email at this point of the exception
            
            try {
                sm.Sendemail("HTS RRI RAW DATA IMPORT",ex.toString()+ "___ n Counsellor name: "+counselorname+" Facility name: n "+facility+" n "+myresponse, "MYSQL IMPORTING ERROR ","EKaunda@fhi360.org");
                } catch (MessagingException ex1) {
                Logger.getLogger(importweeklydata.class.getName()).log(Level.SEVERE, null, ex1);
            }
            
        }
        
       
      out.println(txtresponse);   
        
        
        
    }

   
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
