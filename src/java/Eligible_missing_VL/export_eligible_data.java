/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Eligible_missing_VL;

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
public class export_eligible_data extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String insert="";
          String myresponse="";
        
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        
         sendmail sm=new sendmail();
        
        PrintWriter out = response.getWriter();
        String txtresponse="Error occured during VL eligible for VL data export at the server."; 
        dbConnweb conn= new dbConnweb();
 

String Patient_ID=null;

String actioni=null;
String datebookedforbleeding=null;


String user_id=null;
String timestamp=null;


        
        try {
        
       
    
 Patient_ID=request.getParameter("Patient_ID");

actioni=request.getParameter("actioni");
datebookedforbleeding=request.getParameter("datebookedforbleeding");

user_id=request.getParameter("user_id");
//timestamp=request.getParameter("timestamp");



String version="1.0.0";

 //id=id;
 //id=id.replace("18087","17799");

 String usermail=""; 
 if(user_id.contains("@") && (user_id.contains(".com") || user_id.contains(".org")  )){usermail=","+user_id;}
 
     //set maxconnection

System.out.println(" eligible patients Data upload by "+user_id+" ");
           
           // conn.st.executeUpdate("SET GLOBAL max_allowed_packet = 209715200");
            conn.rs = conn.st.executeQuery("SHOW VARIABLES LIKE 'max_allowed_packet' ");
            if (conn.rs.next()) 
            {
               // System.out.println("Max_allowed_connection_" + conn.rs.getString(2));

            }            
                  
          // String checkexisting="select id from internal_system.vl_eligible_missing_vl where Patient_ID  like '"+Patient_ID+"' "; 
           //String checkexisting="select id from weekly_data_new where id='"+id+"' "; 
           //users should maintain the same date range
            
            /* TODO output your page here. You may use following sample code. */
         
   //conn.rs=conn.st.executeQuery(checkexisting);
   
//   if(conn.rs.next()){
   if(1==1){
    //System.out.println(" Data for id "+id+" and counsellor "+counselorname+" already added ");
   
   //do update code here
   
  
   //,newart=?,newpos_pmtct=?,art_pmtct=?
     
insert=" update internal_system.vl_eligible_missing_vl set actioni=?, datebookedforbleeding=? , userid=? "
     + " where Patient_ID='"+Patient_ID+"'  ";
         conn.pst1=conn.conne.prepareStatement(insert);   
//facilityname.startdate.enddate.hiv_pos_target_child.hiv_pos_target_adult.hiv_pos_target_total.hiv_pos_child.hiv_pos_adult.hiv_pos_total.new_care_child.new_care_adult.new_care_total.new_art_target_child.new_art_target_adult.new_art_target_total.started_art_child.started_art_adult.started_art_total.viral_load_target_child.viral_load_target_adult.viral_load_target_total.viral_load_done_child.viral_load_done_adult.viral_load_done_total.ipt_target_child.ipt_target_adult.ipt_target_total.ipt_child.ipt_adult.ipt_total.testing_target_child.testing_target_adult.testing_target_total.test_child.test_adult.test_total.pmtct_hiv_pos_target.pmtct_hiv_pos.eid_target.eid_done.viral_load_mothers_target.viral_load_mothers_done.user.hiv_pos_yield_perc_child.hiv_pos_yield_perc_adult.hiv_pos_yield_perc_all.hiv_pos_care_perc_child.hiv_pos_care_perc_adult.hiv_pos_care_perc_all.started_art_perc_child.started_art_perc_adult.started_art_perc_all.viral_test_perc_child.viral_test_perc_adult.viral_test_perc_all.ipt_done_perc_child.ipt_done_perc_adult.ipt_done_perc_all.tested_perc_child.tested_perc_adult.tested_perc_all.hiv_pos_yield_cmts.hiv_pos_care_cmts.started_art_cmts.viral_test_cmts.ipt_done_cmts.tested_cmts.viral_load_mothers_perc.eid_done_perc.pmtct_hiv_pos_perc.viral_load_mothers_cmts.eid_done_cmts.pmtct_hiv_pos_cmts
                          

conn.pst1.setString(1,actioni);

conn.pst1.setString(2,datebookedforbleeding);
conn.pst1.setString(3,user_id);

//conn.pst1.setString(7,user_id);
//conn.pst1.setString(8,timestamp);




 if(conn.pst1.executeUpdate()==1)
  { 
  if(!Patient_ID.contains("annual")){ //notify user only when importing weekly summaries
    txtresponse="<font color='green'> Data updated succesfully for patient id "+Patient_ID+"  </font> ";
                             //sm.Sendemail("RRI Sep. IMPORT","Hi ,  nThis is to notify you that data for "+facilityname+" has been updated succesfully by user "+user+" for dates "+startdate+" to "+enddate+". n nPlease  do not reply to this mail. It is system generated ", "Updated RRI Sep Data for  "+facilityname+" & dates "+startdate+" to "+enddate,"EKaunda@fhi360.org,MObuya@fhi360.org"+usermail);
                            
                            if(user_id.equals("select counsellor"))
                            {
                                try {
                                    sm.Sendemail(" Eligible VL records. VALIDATION FAILURE"," Hi, n This is to notify you that data  for patient "+Patient_ID+" Has no user name. n n Please Request the respective user to do the update and reexport data ", "VL data export for user "+Patient_ID,"EKaunda@fhi360.org"+usermail);
                                } catch (MessagingException ex) 
                                {
                                    Logger.getLogger(export_eligible_data.class.getName()).log(Level.SEVERE, null, ex);
                                }
                            }
                            
                            }
  }
                        else 
                        {
                              if(!Patient_ID.contains("annual"))
                              {
                        txtresponse="<font color='red'>Data </font><font color='red'> NOT updated </font><font color='red'> for patient  "+Patient_ID+". because the record was updated by a super admin.</font>";
                        
                              }
                        }
   
   
                     //myresponse=" update daily_raw set  facility='"+facility+"',counsellor='"+counselorname+"',register_no='"+register_no+"',serialno='"+serialno+"',date_tested='"+date_tested+"',age='"+age+"',gender='"+gender+"',modality='"+modality+"',testresult='"+testresult+"',linked='"+linked+"',cccno='"+cccno+"',linked_site='"+linked_site+"',other_facility_linked='"+other_facility_linked+"',reason_not_linked='"+reason_not_linked+"',reason_for_death='"+reason_for_death+"',other_reason_for_death='"+other_reason_for_death+"',reason_for_declining='"+reason_for_declining+"',other_reason_for_declining='"+other_reason_for_declining+"',user='"+user+"',timestamp='"+timestamp+"',datestartedart='"+datestartedart+"'"
                // + " where id='"+id+"' ";
                     // System.out.println(myresponse);
                        
   
   }
   
         if(conn.rs!=null){conn.rs.close();}  
         if(conn.st!=null){conn.st.close();}  
        
         if(conn.pst1!=null){conn.pst1.close();}  
         if(conn.conne!=null){conn.conne.close();}  
        
   
        } catch (SQLException ex) 
        {
            Logger.getLogger(export_eligible_data.class.getName()).log(Level.SEVERE, null, ex);
            
             txtresponse="<font color='red'>Data for "+Patient_ID+" NOT inserted succesfully for ccc number "+Patient_ID+".  "+ex+" </font>";
        //send an email at this point of the exception
            
            try {
                sm.Sendemail("VL ELIGIBLE FOR VL DATA IMPORT",ex.toString()+ "___ n user name: "+user_id+"  n "+myresponse, "MYSQL IMPORTING ERROR ","EKaunda@fhi360.org");
                } catch (MessagingException ex1) {
                Logger.getLogger(export_eligible_data.class.getName()).log(Level.SEVERE, null, ex1);
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
