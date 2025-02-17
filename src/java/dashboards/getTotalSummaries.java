/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dashboards;

import database.dbConnweb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Emmanuel E
 */
public class getTotalSummaries extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");
        try {
            
            
            
              if(request.getParameter("cd")!=null){} else {response.sendRedirect("index.jsp");}
            
            
            dbConnweb conn= new dbConnweb();
            
              // conn.st.executeUpdate("SET GLOBAL max_allowed_packet = 209715200"); 
               
              
              String orgunit="";
              String Project="Afya Nyota ya Bonde";
              String county="";
              String subcounty="";
              String mflcode="";
              String startdate="2020-06-01";
              String enddate="2020-06-30";
              
         
              
        if(request.getParameter("startdate")!=null)
        {
        
            startdate=request.getParameter("startdate");
        
        }
        if(request.getParameter("enddate")!=null)
        {
        
            enddate=request.getParameter("enddate");
        
        }
        //subcounty
        if(request.getParameter("subcounty")!=null)
        {
            subcounty=request.getParameter("subcounty");
        }
        //county
        if(request.getParameter("county")!=null)
        {
         county=request.getParameter("county");
        }
        if (request.getParameter("mflcode") != null ) {
                mflcode = request.getParameter("mflcode");
                
                                                            }
              
              
              if(!mflcode.equals("")){orgunit=mflcode;}
              else if(!subcounty.equals("")){orgunit=subcounty;}
              else if(!county.equals("")){orgunit=county;}
              else {orgunit=Project;}
              
            JSONArray jarr=new JSONArray();
            //String getfacils="SELECT id,facility,year,hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,new_art_target_child,new_art_target_adult,new_art_target_total,viral_load_target_child,viral_load_target_adult,viral_load_target_total,ipt_target_child,ipt_target_adult,ipt_target_total,testing_target_child,testing_target_adult,testing_target_total,pmtct_hiv_pos_target,eid_target,viral_load_mothers_target,timestamp FROM  targets where year ='"+year+"'order by id";
           
            //currently i am not validating targets that are being fetched 
            
            String getQuery="call internal_system.sp_nonemr_vldashb('"+startdate+"', '"+enddate+"', '1=1', '"+orgunit+"');";
            
            System.out.println(""+getQuery);
            
            conn.rs=conn.st.executeQuery(getQuery);
            while (conn.rs.next()){
                 JSONObject jobj= new JSONObject();

jobj.put("All",conn.rs.getString("All"));
jobj.put("County",conn.rs.getString("County"));
jobj.put("Sub-county",conn.rs.getString("Sub-county"));
jobj.put("facility",conn.rs.getString("facility"));
jobj.put("mflcode",conn.rs.getString("mflcode"));
jobj.put("IMIS_CURR_F1a",conn.rs.getString("IMIS_CURR_F1a"));
jobj.put("Total Patients Entered",conn.rs.getString("Total Patients Entered"));
jobj.put("Approx. Pending Entry Records",conn.rs.getString("Approx. Pending Entry Records"));
jobj.put("New On ART",conn.rs.getString("New On ART"));
jobj.put("Current On ART VL Tool",conn.rs.getString("Current On ART VL Tool"));
jobj.put("VL Done in Last 12 Months",conn.rs.getString("VL Done in Last 12 Months"));
jobj.put("VL Uptake",conn.rs.getString("VL Uptake"));
jobj.put("VL Supressed",conn.rs.getString("VL Supressed"));
jobj.put("% VL Suppression",conn.rs.getString("% VL Suppression"));
jobj.put("PMTCT-Breastfeeding",conn.rs.getString("PMTCT-Breastfeeding"));
jobj.put("PMTCT-Pregnant",conn.rs.getString("PMTCT-Pregnant"));



jobj.put("VL LDL <400",conn.rs.getString("VL LDL <400"));
jobj.put("Started On IPT",conn.rs.getString("Started On IPT"));
jobj.put("Completed IPT",conn.rs.getString("Completed IPT"));
jobj.put("Screened For TB",conn.rs.getString("Screened For TB"));
jobj.put("Entries by",conn.rs.getString("Entries by"));
jobj.put("Time Last Record Exported",conn.rs.getString("Time Last Record Exported"));
jobj.put("Time Last Record Entered",conn.rs.getString("Time Last Record Entered"));
jobj.put("Time First Record Exported",conn.rs.getString("Time First Record Exported"));
jobj.put("Time First Record entered",conn.rs.getString("Time First Record entered"));





            jarr.put(jobj);
            
          
            }
            
              if(conn.rs!=null){conn.rs.close();}
              if(conn.st!=null){conn.st.close();}
              if(conn.conne!=null){conn.conne.close();}
            
            
          // System.out.println(""+jarr); 
            
            try (PrintWriter out = response.getWriter()) {
                
                if(request.getParameter("cd")!=null){
                    
                    if(request.getParameter("cd").equals("909090")){
                out.println(jarr);
                    }
                    else {
                    response.sendRedirect("index.jsp");
                    }
                }
            }
        }   catch (SQLException ex) {
            Logger.getLogger(getTotalSummaries.class.getName()).log(Level.SEVERE, null, ex);
        }
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

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
