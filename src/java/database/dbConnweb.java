/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.net.URL;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SIXTYFOURBIT
 */
public final class dbConnweb {

   public ResultSet rs0,rs, rs1, rs2, rs3, rs4, rs_1, rs_2, rs_3, rs_4, rs_5, rs_6, anc_sch_rs;
   public Statement st0,st, st1, st2, st3, st4, st_1, st_2, st_3, st_4, st_5, st_6, anc_scheduling_st;
   public PreparedStatement pst,pst1,pst2,pst3,pst4;
   String mydrive = "";
   public static int issetdbcalled_file_exists = 2;
   public static int issetdbcalled_exception = 2;
   public static int issetdbcalled_wrongpword = 2;
   public  String dbsetup[] = new String[4];
   public Connection conne = null;

    public dbConnweb() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
         //conne = DriverManager.getConnection("jdbc:mysql://localhost:3306/aphiaplus_moi?maxAllowedPacket=1000000000","root", "P@ss4M&E!Fhiimpact!");
         //conne = DriverManager.getConnection("jdbc:mysql://104.45.29.195:3306/aphiaplus_moi","root", "admin");
    // conne = DriverManager.getConnection("jdbc:mysql://localhost:3306/internal_system?maxAllowedPacket=1000000000","root", "test");
    
    /**
   
    String ssl_ca_balt="";
    String ssl_ca_digi="";
    String ssl_ksf="";
    
     if(OSValidator.isWindows()){
      ssl_ca_digi=mydrive+":\\Projects\\Certificates\\DigiCertGlobalRootCA.crt.pem"; 
      ssl_ca_balt=mydrive+":\\Projects\\Certificates\\BaltimoreCyberTrustRoot.crt.pem"; 
      ssl_ksf=mydrive+":\\Projects\\Certificates\\tujengejamii.keystore"; 
       
        }
        else if(OSValidator.isUnix()){
        ssl_ca_digi="/HSDSA/DigiCertGlobalRootCA.crt.pem";     
        ssl_ca_balt="/HSDSA/BaltimoreCyberTrustRoot.crt.pem";     
        ssl_ksf="/HSDSA/tujengejamii.keystore";     
          
        }
    
    //generate truststore and keystore in code
String importCert = " -import "+
    " -alias mysqlServerCACert "+
    " -file " + ssl_ca_digi +
    " -keystore truststore "+
    " -trustcacerts " +
    " -storepass tujengejamii -noprompt ";
String genKey = " -genkey -keyalg rsa " +
    " -alias mysqlClientCertificate -keystore keystore " +
    " -storepass tujengejamii -keypass password " +
    " -dname CN=MS ";
sun.security.tools.keytool.Main.main(importCert.trim().split("\\s+"));
sun.security.tools.keytool.Main.main(genKey.trim().split("\\s+"));

// use the generated keystore and truststore
System.setProperty("javax.net.ssl.keyStore",ssl_ksf);
System.setProperty("javax.net.ssl.keyStorePassword","tujengejamii");
System.setProperty("javax.net.ssl.trustStore",ssl_ca_digi);
System.setProperty("javax.net.ssl.trustStorePassword","tujengejamii");

Properties properties = new Properties();

String url = String.format("jdbc:mysql://%s/%s?serverTimezone=UTC&useSSL=true", "tujengejamii-db.mysql.database.azure.com","internal_system");
properties.setProperty("user", "tujengejamii@tujengejamii-db");
properties.setProperty("password", "usaidtj12345%");
conne = DriverManager.getConnection(url, properties);
    
**/
    
     //conne = DriverManager.getConnection("jdbc:mysql://kenmysqlserver1.mysql.database.azure.com:3306/internal_system?verifyServerCertificate=false&useSSL=true&requireSSL=true","websqladmkn@kenmysqlserver1", "P@$$w9rd4$q12Use1nK#K");
    // conne = DriverManager.getConnection("jdbc:mysql://tujengejamii-db.mysql.database.azure.com:3306/internal_system?verifyServerCertificate=false&useSSL=true&requireSSL=true","tujengejamii@tujengejamii-db", "usaidtj12345%");
           
      // conne = DriverManager.getConnection("jdbc:mysql://localhost:3306/internal_system?maxAllowedPacket=1000000000","imis", "imis");
       conne = DriverManager.getConnection("jdbc:mysql://localhost:3306/internal_system?maxAllowedPacket=1000000000","imis", "imis");
       
       
//conne = DriverManager.getConnection("jdbc:mysql://tujengejamii-db.mysql.database.azure.com:3306/internal_system?verifyServerCertificate=false&useSSL=true&requireSSL=true&enabledTLSProtocols=TLSv1.2","tujengejamii@tujengejamii-db","usaidtj12345%");         

            //if the saved host name is less than 2 letters long, then thats not a genuine host name

            URL location = dbConnweb.class.getProtectionDomain().getCodeSource().getLocation();


            mydrive = location.getFile().substring(1, 2);

                     

                st0 = conne.createStatement();
                st = conne.createStatement();
                st1 = conne.createStatement();
                st2 = conne.createStatement();
                st3 = conne.createStatement();
                st4 = conne.createStatement();
                st_1 = conne.createStatement();
                st_2 = conne.createStatement();
                st_3 = conne.createStatement();
                st_4 = conne.createStatement();
                st_5 = conne.createStatement();
                st_6 = conne.createStatement();
                anc_scheduling_st = conne.createStatement();




        } catch (Exception ex) {
            Logger.getLogger(dbConnweb.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("This is the error::"+ex);
            //error in dbase configuration 
            //call the jsp page that does configuration
        }
    }

 

}
