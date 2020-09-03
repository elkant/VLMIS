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
public class getfineagesummaries extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");
        try {
            
            dbConnweb conn= new dbConnweb();
            
              // conn.st.executeUpdate("SET GLOBAL max_allowed_packet = 209715200"); 
               
              
              String orgunit="";
              String Project="Afya Nyota ya Bonde";
              String county="";
              String subcounty="";
              String mflcode="";
              String startdate="2020-06-01";
              String enddate="2020-06-30";
              String groupby="";
         
              
              
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
              
              
              
              if(!mflcode.equals("")){orgunit=" `mflcode`=\""+mflcode+"\" "; groupby="mflcode";}
              else if(!subcounty.equals("")){orgunit=" `Sub-county`=\""+subcounty+"\" "; groupby="Sub-county";}
              else if(!county.equals("")){orgunit=" `County`=\""+county+"\" "; groupby="County"; }
              else {orgunit=" `Zote`=\""+Project+"\" "; groupby="Zote";}
              
              
              
            JSONArray jarr=new JSONArray();
            //String getfacils="SELECT id,facility,year,hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,new_art_target_child,new_art_target_adult,new_art_target_total,viral_load_target_child,viral_load_target_adult,viral_load_target_total,ipt_target_child,ipt_target_adult,ipt_target_total,testing_target_child,testing_target_adult,testing_target_total,pmtct_hiv_pos_target,eid_target,viral_load_mothers_target,timestamp FROM  targets where year ='"+year+"'order by id";
           
          
            String getQuery="call internal_system.sp_nonemr_vldashb_fineage('"+startdate+"', '"+enddate+"', '"+orgunit+"','"+groupby+"');";
            System.out.println(""+getQuery);
            
            conn.rs=conn.st.executeQuery(getQuery);
            while (conn.rs.next()){
                
                 JSONObject jobj= new JSONObject();

                if(conn.rs.getString("Indicator").equals("TX_Curr"))
                {
jobj.put("y","<1 Yrs");  jobj.put("b",conn.rs.getString("<1 F"));  
jobj.put("a",conn.rs.getString("<1 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","1-4 Yrs");  jobj.put("b",conn.rs.getString("1-4 F"));  
jobj.put("a",conn.rs.getString("1-4 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","5-9 Yrs");  jobj.put("b",conn.rs.getString("5-9 F"));  
jobj.put("a",conn.rs.getString("5-9 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","10-14 Yrs");  jobj.put("b",conn.rs.getString("10-14 F"));  
jobj.put("a",conn.rs.getString("10-14 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","15-19 Yrs");  jobj.put("b",conn.rs.getString("15-19 F"));  
jobj.put("a",conn.rs.getString("15-19 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","20-24 Yrs");  jobj.put("b",conn.rs.getString("20-24 F"));  
jobj.put("a",conn.rs.getString("20-24 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","25-29 Yrs");  jobj.put("b",conn.rs.getString("25-29 F"));  
jobj.put("a",conn.rs.getString("25-29 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","30-34 Yrs");  jobj.put("b",conn.rs.getString("30-34 F"));  
jobj.put("a",conn.rs.getString("30-34 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","35-39 Yrs");  jobj.put("b",conn.rs.getString("35-39 F"));  
jobj.put("a",conn.rs.getString("35-39 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","40-44 Yrs");  jobj.put("b",conn.rs.getString("40-44 F"));  
jobj.put("a",conn.rs.getString("40-44 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","45-49 Yrs");  jobj.put("b",conn.rs.getString("45-49 F"));  
jobj.put("a",conn.rs.getString("45-49 M"));  jarr.put(jobj);jobj= new JSONObject();
jobj.put("y","50+ Yrs");  jobj.put("b",conn.rs.getString("50+ F"));  
jobj.put("a",conn.rs.getString("50+ M"));  jarr.put(jobj);jobj= new JSONObject();

  
//jarr.put(jobj);jobj= new JSONObject();                    
                    
                    
                }

//{
//                    y: '50+',
//                    a: 100,
//                    b: 90
//                }


           // jarr.put(jobj);
            
          
            }
            
              if(conn.rs!=null){conn.rs.close();}
              if(conn.st!=null){conn.st.close();}
              if(conn.conne!=null){conn.conne.close();}
            
            
          // System.out.println(""+jarr); 
            
            try (PrintWriter out = response.getWriter()) {
                
                
                out.println(jarr);
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
