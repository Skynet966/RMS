package satish.kumar;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
import com.mysql.jdbc.Statement;

public class MyDatabase {

	// Database constants
			String dbname = "jdbc:mysql://localhost/rms";
			String dbuser = "root";
			String dbpass = "";
			
			public boolean save(String user, String pass, String mail, String pno) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					if(user!=""&&pass!=""&&mail!=""&&pno!=""){
					String sql = "INSERT into authentication("
							+ "UserName, PassWord, PhoneNo, Email) VALUES('" + user 
							+ "', '" + pass + "','"+pno+"','"+mail+"')";
					int rcount = st.executeUpdate(sql);
					if(rcount > 0){
						result = true;
					}}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}

			public boolean auth(String user, String pass) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "SELECT username from authentication where "
							+ "username='" + user + "' and "
							+ "password='" + pass + "'";
					ResultSet rs = st.executeQuery(sql);
					if(rs.next()){
						result = true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return result;
			}

			public String recovery(String to) {
				// TODO Auto-generated method stub
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					if(to!=""){
					String sql = "SELECT UserName, PassWord from authentication WHERE Email='"+to+"'";
					ResultSet rs = st.executeQuery(sql);
					if(rs.next()){
					String rsuser=rs.getString("UserName");
			        String rspswd=rs.getString("PassWord");
			        String msg=("Username: "+rsuser+"\nPassword: "+rspswd+"\n\nNote:Open the website and change your password for the Safety Reason.\nThankyou");
			        return msg;
					}
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return null;
			}

			public boolean feedback(String name, String mail, String phno, String mseg) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "INSERT into ContactUs(Name,Email,Phno,Message) VALUES('"+name+"','"+mail+"',"+phno+",'"+mseg+"');";
					int rcount = st.executeUpdate(sql);
					if(rcount > 0){
						result = true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}

			public String Search(String sloc) {
				// TODO Auto-generated method stub
				final String commingsoonimg="http://kccomingsoon.com/data/images/Photo-CS-3.jpg";
				String flatsinfo="";
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "SELECT * FROM flats WHERE ALocation='"+sloc+"';";
					ResultSet rslt = st.executeQuery(sql);
					
					while(rslt.next()){
						String Rid=rslt.getString("SNo");
						String Anam=rslt.getString("AName");
				        String Atyp=rslt.getString("Atype");
				        String Adrs=rslt.getString("Aaddress");
				        String Aimg=rslt.getString("LivingroomImg");
				        String Aprc=rslt.getString("Aprice");
				        
				        String flats="<form action='GetDetails' method='post'><div class='w3-third w3-margin-bottom'>"
				        		+ "<img src='"+Aimg+"' alt='"+Anam+"' style='width:100%'>"
				        		+ "<div class='w3-container w3-white'>"
				        		+ "<h3>"+Anam+"</h3>"
				        		+ "<h6 class='w3-opacity'><i class='fa fa-inr'></i>"+Aprc+"</h6>"
				        		+ "<p>"+Adrs+"</p>"
				        		+ "<p>"+Atyp+"</p><input type='hidden' name='RID' value="+Rid+">"
				        		+ "<p class='w3-large'><i class='fa fa-bath'></i> <i class='fa fa-phone'></i> <i class='fa fa-wifi'></i> <i class='fa fa-tv'></i> <i class='fa fa-glass'></i> <i class='fa fa-cutlery'></i></p>"
				        		+ "<button type='submit' class='w3-button w3-block w3-black w3-margin-bottom'>RENT Flat</button></div></div></form>";
				        
					flatsinfo=flatsinfo+flats;
					}
					if(flatsinfo==""||flatsinfo==null){
						flatsinfo="<form action='GetDetails' method='post'><div class='w3-third w3-margin-bottom'>"
				        		+ "<img src='"+commingsoonimg+"' alt='Comming Soon' style='width:100%'>"
				        		+ "<div class='w3-container w3-white'>"
				        		+ "<h3>Currently There is no Flats Available at "+sloc+"</h3>"
				        		+ "<h6 class='w3-opacity'><i class='fa fa-inr'></i>N/A</h6>"
				        		+ "<p></p>"
				        		+ "<p>We are Growing up our bussiness in these city also as soon as possible</p>"
				        		+ "<p class='w3-large'></p>"
				        		+ "<button type='submit' class='w3-button w3-block w3-black w3-margin-bottom' disabled>Currently Flat Not Available</button></div></div></form>";
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return flatsinfo;
			}

			public boolean chngpass(String newpass, String oldpass) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "UPDATE authentication SET PassWord='"+newpass+"' WHERE PassWord='"+oldpass+"'";
					int rcount = st.executeUpdate(sql);
					if(rcount > 0){
						result = true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}

			public String[] getDetails(String sid) {
				// TODO Auto-generated method stub
				String apartments[]=new String[13];
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "SELECT * FROM flats WHERE SNo='"+sid+"';";
					ResultSet rslt = st.executeQuery(sql);
					
					while(rslt.next()){
						apartments[1]=rslt.getString("SNo");
						apartments[2]=rslt.getString("AName");
				        apartments[3]=rslt.getString("Atype");
				        apartments[4]=rslt.getString("Aaddress");
				        apartments[5]=rslt.getString("LivingroomImg");
				        apartments[6]=rslt.getString("DiningroomImg");
				        apartments[7]=rslt.getString("BedroomImg");
				        apartments[8]=rslt.getString("Livingroom2Img");
				        apartments[9]=rslt.getString("Aprice");
				        apartments[10]=rslt.getString("AExInfo");
				        apartments[11]=rslt.getString("Availability");
				        apartments[12]=rslt.getString("ALocation");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return apartments;
			}

			public boolean reciptsave(String string, String string2, String string3, String string4, String string5,
					String string6) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
						String sql = "INSERT into payment(Recipt_no,S_deposit,F_rent,Sgst,Cgst,T_amt) VALUES('"+string+"','"+string2+"','"+string3+"','"+string4+"','"+string5+"',"+string6+")";
						int rcount = st.executeUpdate(sql);
						if(rcount > 0){
							result = true;
						}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}

			public boolean flatatus(String string) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "UPDATE flats SET Availability=0 WHERE SNo='"+string+"'";
					int rcount = st.executeUpdate(sql);
					if(rcount > 0){
						result = true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}

			public boolean putRenter(String string, String string2, String string3, String string4, String string5,
					String string6, String string7, String string8, String string9, String string10) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
						String sql = "INSERT into renter(CheckIn,Checkout,RName,Rmail,RMonths,PhoneNo,SelectedID,IDno,Fid,Aid) VALUES('"+string+"','"+string2+"','"+string3+"','"+string4+"','"+string5+"','"+string6+"','"+string7+"','"+string8+"',"+string9+","+string10+")";
						int rcount = st.executeUpdate(sql);
						if(rcount > 0){
							result = true;
						}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}

			public String getRecipt() {
				// TODO Auto-generated method stub
				String re="";
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "SELECT * FROM reciptgenerator";
					ResultSet rslt = st.executeQuery(sql);
					
					while(rslt.next()){
						re=rslt.getString("recipt_no");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return re;
			}

			public boolean updaterecipt(String string) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "UPDATE reciptgenerator SET recipt_no="+string+"";
					int rcount = st.executeUpdate(sql);
					if(rcount > 0){
						result = true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}

			public String[] fetchReview() {
				// TODO Auto-generated method stub
				//SELECT * FROM (SELECT * FROM some_table ORDER BY id DESC LIMIT 3) a ORDER BY id
				String rep[]=new String[6];
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "SELECT * FROM (SELECT * FROM clientReview ORDER BY Crid DESC LIMIT 3) a ORDER BY Crid";
					ResultSet rslt = st.executeQuery(sql);
					int i=0;
					int j=1;
					while(rslt.next()){
						rep[i]=rslt.getString("Name");
						rep[j]=rslt.getString("Message");
						i=i+2;
						j=j+2;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return rep;
			}

			

			public String[] getUserDetails(String user, String pass) {
				// TODO Auto-generated method stub
				String a[] = new String[5];
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "SELECT * from authentication where "
							+ "username='" + user + "' and "
							+ "password='" + pass + "'";
					ResultSet rs = st.executeQuery(sql);
					while(rs.next()){
						a[0]=rs.getString("SNo");
						a[1]=rs.getString("UserName");
						a[2]=rs.getString("PassWord");
						a[3]=rs.getString("PhoneNo");
						a[4]=rs.getString("Email");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return a;
			}

			public boolean setreviw(String a1, String a2, String a3) {
				// TODO Auto-generated method stub
				boolean res=false;
				try{
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
					String sql = "INSERT into ClientReview(Message,Name,Aid) VALUES('"+a1+"','"+a2+"','"+a3+"')";
					int rcount = st.executeUpdate(sql);
					if(rcount > 0){
						res = true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return res;
			}

			public boolean DataInsert(String[] a) {
				// TODO Auto-generated method stub
				boolean result = false;
				try {
					DriverManager.registerDriver(new Driver());
					Connection con = 
							(Connection) 
							DriverManager.getConnection(
									dbname, dbuser,dbpass);
					Statement st = (Statement) con.createStatement();
						String sql = "INSERT into flats(AName,Atype,ALocation,Aaddress,LivingroomImg,Aprice,DiningroomImg,BedroomImg,Livingroom2Img,AExInfo,Availability) VALUES('"+a[0]+"','"+a[2]+"','"+a[4]+"','"+a[3]+"','"+a[5]+"','"+a[1]+"','"+a[6]+"','"+a[7]+"','"+a[8]+"','"+a[9]+"','1')";
						int rcount = st.executeUpdate(sql);
						if(rcount > 0){
							result = true;
						}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}

}
