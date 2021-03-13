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
public class importIPT extends HttpServlet {

    
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

String ccc_number=null;



String Started_on_IPT=null;
String Date_Started_on_IPT=null;
String IPT_Outcome=null;
String Date_of_IPT_Outcome=null;
String Reason_Not_Completed=null;

String user_id=null;
String timestamp=null;




        
        try {
        
       
    
 id=request.getParameter("id");

ccc_number=request.getParameter("ccc_number");



Started_on_IPT=request.getParameter("Started_on_IPT");
Date_Started_on_IPT=request.getParameter("Date_Started_on_IPT");
IPT_Outcome=request.getParameter("IPT_Outcome");
Date_of_IPT_Outcome=request.getParameter("Date_of_IPT_Outcome");
Reason_Not_Completed=request.getParameter("Reason_Not_Completed");

user_id=request.getParameter("user_id");
timestamp=request.getParameter("timestamp");



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
     
insert=" update nonemr_ipt ccc_number=?, Started_on_IPT=?,Date_Started_on_IPT=?,IPT_Outcome=?,Date_of_IPT_Outcome=?,Reason_Not_Completed=?,user_id=?,	timestamp=? "
     + " where id='"+id+"'  ";
         conn.pst1=conn.conne.prepareStatement(insert);   
//facilityname.startdate.enddate.hiv_pos_target_child.hiv_pos_target_adult.hiv_pos_target_total.hiv_pos_child.hiv_pos_adult.hiv_pos_total.new_care_child.new_care_adult.new_care_total.new_art_target_child.new_art_target_adult.new_art_target_total.started_art_child.started_art_adult.started_art_total.viral_load_target_child.viral_load_target_adult.viral_load_target_total.viral_load_done_child.viral_load_done_adult.viral_load_done_total.ipt_target_child.ipt_target_adult.ipt_target_total.ipt_child.ipt_adult.ipt_total.testing_target_child.testing_target_adult.testing_target_total.test_child.test_adult.test_total.pmtct_hiv_pos_target.pmtct_hiv_pos.eid_target.eid_done.viral_load_mothers_target.viral_load_mothers_done.user.hiv_pos_yield_perc_child.hiv_pos_yield_perc_adult.hiv_pos_yield_perc_all.hiv_pos_care_perc_child.hiv_pos_care_perc_adult.hiv_pos_care_perc_all.started_art_perc_child.started_art_perc_adult.started_art_perc_all.viral_test_perc_child.viral_test_perc_adult.viral_test_perc_all.ipt_done_perc_child.ipt_done_perc_adult.ipt_done_perc_all.tested_perc_child.tested_perc_adult.tested_perc_all.hiv_pos_yield_cmts.hiv_pos_care_cmts.started_art_cmts.viral_test_cmts.ipt_done_cmts.tested_cmts.viral_load_mothers_perc.eid_done_perc.pmtct_hiv_pos_perc.viral_load_mothers_cmts.eid_done_cmts.pmtct_hiv_pos_cmts
                          

conn.pst1.setString(1,ccc_number);

conn.pst1.setString(2,Started_on_IPT);
conn.pst1.setString(3,Date_Started_on_IPT);
conn.pst1.setString(4,IPT_Outcome);
conn.pst1.setString(5,Date_of_IPT_Outcome);
conn.pst1.setString(6,Reason_Not_Completed);


conn.pst1.setString(7,user_id);
conn.pst1.setString(8,timestamp);




 if(conn.pst1.executeUpdate()==1)
  { 
  if(!id.contains("annual")){ //notify user only when importing weekly summaries
    txtresponse="<font color='green'> Data updated succesfully for patient "+ccc_number+"  </font> ";
                             //sm.Sendemail("RRI Sep. IMPORT","Hi ,  nThis is to notify you that data for "+facilityname+" has been updated succesfully by user "+user+" for dates "+startdate+" to "+enddate+". n nPlease  do not reply to this mail. It is system generated ", "Updated RRI Sep Data for  "+facilityname+" & dates "+startdate+" to "+enddate,"EKaunda@fhi360.org,MObuya@fhi360.org"+usermail);
                            
                            if(user_id.equals("select counsellor"))
                            {
                                try {
                                    sm.Sendemail("Workload. VALIDATION FAILURE"," Hi, n This is to notify you that data  for patient "+ccc_number+" Has no user name. n n Please Request the respective user to do the update and reexport data ", "VL data export for IPT & user "+ccc_number,"EKaunda@fhi360.org"+usermail);
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
                        txtresponse="<font color='red'>Data </font><font color='red'> NOT updated </font><font color='red'> for patient  "+ccc_number+". because the record was updated by a super admin.</font>";
                        
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
            
         
       
          insert=" replace into nonemr_ipt(id,ccc_number,Started_on_IPT,Date_Started_on_IPT,IPT_Outcome,Date_of_IPT_Outcome,Reason_Not_Completed,user_id,timestamp) "
                 + " values (?,?,?,?,?,?,?,?,?)";
                      conn.pst1=conn.conne.prepareStatement(insert);    
                          
conn.pst1.setString(1,id);
conn.pst1.setString(2,ccc_number);
conn.pst1.setString(3,Started_on_IPT);
conn.pst1.setString(4,Date_Started_on_IPT);
conn.pst1.setString(5,IPT_Outcome);
conn.pst1.setString(6,Date_of_IPT_Outcome);
conn.pst1.setString(7,Reason_Not_Completed);
conn.pst1.setString(8,user_id);
conn.pst1.setString(9,timestamp);



                        
          if(conn.pst1.executeUpdate()==1)
          {
                             if(!id.contains("annual")){
                            txtresponse="<font color='green'> Data added succesfully for patient "+ccc_number+"  </font> </button>";
                           
                            //check if counsellor name is select counsellor
                            
                            //add team leaders variable at this point 
                            if(user_id.equals("select counsellor")){
                                try {
                                    sm.Sendemail("VL DATA VALIDATION FAILURE"," Hi, n This is to notify you that data   for patient "+ccc_number+" and id "+id+" Has no user name. n n Please Request the respective user to do the update and reexport data ", "VL data export for  patient "+ccc_number,"EKaunda@fhi360.org"+usermail);
                                } catch (MessagingException ex) 
                                {
                                    Logger.getLogger(importVl.class.getName()).log(Level.SEVERE, null, ex);
                                }
                            }
                             }                          
          }
          
     else {
              
  if(!id.contains("annual")){
                          txtresponse="<font color='green'>Data </font><font color='red'>  NOT inserted </font><font color='green'> succesfully for patient  "+ccc_number+". This could be a duplicate error. </font>";
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
            
             txtresponse="<font color='red'>Data for "+ccc_number+" NOT inserted succesfully for ccc number "+ccc_number+".  "+ex+" </font>";
        //send an email at this point of the exception
            
            try {
                sm.Sendemail("VLMIS IPT DATA IMPORT",ex.toString()+ "___ n user name: "+user_id+"  n "+myresponse, "MYSQL IMPORTING ERROR ","EKaunda@fhi360.org");
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
