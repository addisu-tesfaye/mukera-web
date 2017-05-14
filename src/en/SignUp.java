package en;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.security.provider.MD5;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    		PrintWriter out = response.getWriter();
    		String signup_param = request.getParameter("signup");
    		String nameErr = "username";
    		String mailErr = "email";
    		String passErr = "password";
    		String confErr = "repeat password";
    		String name_color = "#a1a1a1";
    		String mail_color = "#a1a1a1";
    		String pass_color = "#a1a1a1";
    		String conf_color = "#a1a1a1";
    		
			boolean login_name,login_mail,login_pass,login_conf,login;
			login_name = login_mail=login_pass=login_conf=login= false;
			
			if (signup_param != null){
				try{
					 Class.forName("com.mysql.jdbc.Driver").newInstance();
					 Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/mukera?user=root&password=tiger");
					 Statement stmt = con.createStatement();
					 
					 String username = request.getParameter("username");
					 String email = request.getParameter("email");
					 String password = request.getParameter("password");
					 String pass_conf = request.getParameter("pass_conf");
					 
					 ResultSet userquery = stmt.executeQuery("select username from users_tbl where username ='"+username+"'");
					 
					 if (userquery.next()){
						 
						 nameErr = "Username exists";
					 	}
					 else if(username.isEmpty() || username==null){
						 name_color="#f57c00";
						 nameErr = "Username cannot be empty";
					 }
					 else if (!username.matches("[a-zA-Z]+")){
						 name_color="#f57c00";
						 nameErr = "That is not a name sir.";
						 
					 }
					 else{
						 login_name = true;
						 System.out.println("Ok we are here"); 
					 }
					 
					 /////////////////////////////////////////validating mail
					 if (email.isEmpty() | email == null){
						 mailErr = "Email can not be empty";
						 mail_color = "#f57c00";
					 }
					 else if(!email.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
						 mail_color = "#f57c00";
						 mailErr = "That looks nothing like an e-mail";
					}
					 else{login_mail = true;}
					////////////////////////////////////////validating password
						 if (password.isEmpty() | password == null){
							 passErr = "Password is a must mate";
							 pass_color = "#f57c00";
						 }
						 else{login_pass = true;}
						 
					///////////////////////////////////////validating password confirmation
						 
						 if (pass_conf.isEmpty()|pass_conf == null){
							 confErr = "Password confirmation is a must is a must mate";
							 conf_color="#f57c00";
						 }
						 else if(!pass_conf.equals(password)){
							 confErr = "The two passwords must match";
							 conf_color="#f57c00";
						 }
						 else{login_conf = true;}
					/////////////////////////////////////	validating all parameters
						 if (login_conf == true && login_mail == true && login_name == true && login_pass == true){
							 login = true;
						 }
						 if (login == true){
							 	HttpSession sessionvar = request.getSession();
							 	sessionvar.setAttribute("username", username);
								sessionvar.setAttribute("email",email);
								
								int create_user= stmt.executeUpdate("insert into users_tbl(username,password,email)values('"+username+"','"+password+"','"+email+"')");
								ResultSet view_table = stmt.executeQuery("select * from users_tbl");
								
								if (create_user > 0){
									System.out.println("database has been updated");
									
								}
								else{
									System.out.println("Failed to update your database");
								}
								while(view_table.next()){
									System.out.println(view_table.getString("username"));
								}
								response.sendRedirect("en/subjects.jsp");
								
								}
					 
					 
				}
				catch(ClassNotFoundException cnfe) {
					System.err.println("Error loading driver: " + cnfe);
					} catch(SQLException sqle) {
					System.err.println("Error with connection: " + sqle);
					} catch (InstantiationException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IllegalAccessException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
			
			out.print("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">"+
			"<html lang = \"en\">"+
			"<head> <meta charset=\"utf-8\">"+
			    "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">"+
			    "<meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">"+
			    "<title>Material Design Bootstrap</title><!-- Font Awesome -->"
			    + "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css\">"
			    + "<!-- Bootstrap core CSS -->"+
			    "<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">"
			    + "<!-- Material Design Bootstrap --><link href=\"css/mdb.css\" rel=\"stylesheet\">"
			    + "<!-- Your custom styles (optional) -->"
			    + "<link href=\"css/style.css\" rel=\"stylesheet\">"+
			    "</head><body style=\"background-color:#e7e8e8;\"><!-- Start your project here-->"
			    + "<nav class=\"navbar navbar-dark bg-primary\"><div class=\"container-fluid\">"
			    + "<!--Collapse content-->"+
			    "<div class=\" navbar-toggleable-xs\" id=\"collapseEx2\"><!--Navbar Brand-->"
			    + "<div class=\"row\"><div class=\"col-sm-2\">"
			    + "<a class=\"navbar-brand\" href=\"#\"><img src=\"img/logo.png\" width=\"20%\" height=\"20%\"/></a>"+
				"</div></div></div></div></nav><br><div class=\"row\"><div class=\"col-sm-8 col-sm-offset-2\">"+
						"<h1 class=\"h1-responsive\" style=\"color:#ff9800; text-align:center\">Register Here</h1>"+
						"</div></div><div class=\"row\"><div class=\"col-sm-12\"><hr></div></div><div class=\"col-sm-4 col-sm-offset-4\">"
						+ "<form method=\"post\" action=\"SignUp\">"+
							"<div class=\"card card-block\">"
							+ "<input placeholder="+"\""+nameErr+"\""+" name=\"username\" style = \"color:"+name_color+"\""+"type=\"text\"class=\"form-control\">"
							+ "<input placeholder="+"\""+mailErr+"\""+" name=\"email\" style = \"color:"+mail_color+"\""+"type=\"text\"class=\"form-control\">"
							+"<input placeholder="+"\""+passErr+"\""+" name=\"password\" style = \"color:"+pass_color+"\""+"type=\"password\"class=\"form-control\">"
							+"<input placeholder="+"\""+confErr+"\""+" name=\"pass_conf\" style = \"color:"+conf_color+"\""+"type=\"password\"class=\"form-control\">"	
							+"<button type = \"submit\" class=\"btn btn-info\"name=\"signup\">Sign Up</button>"+
							"</div><br><br><br><br><br><br><br><br></form></div><div class=\"row\"></div>"+
				
				"<div class=\"row\"><footer class=\"page-footer blue center-on-small-only\">"+
					"<div class=\"container-fluid\"><div class=\"row\"><div class=\"col-md-8 col-md-offset-2\">"+
								"<p style=\"text-align:center\"<a href=\"#\" >Contact Us</a> | <a href=\"#\" >FAQ's</a></p></div>"
										+ "<div class=\"col-md-6\"><ul><li><a href=\"#!\"></a></li><li><a href=\"#!\"></a></li></ul>"+
							"</div></div><br></div><div class=\"footer-copyright\"><div class=\"container-fluid\">© 2015 Copyright: Mukera.com </div></div></footer></div>"+
			    "<script type=\"text/javascript\" src=\"js/jquery-2.2.3.min.js\"></script><script type=\"text/javascript\" src=\"js/tether.min.js\"></script>"+
			    "<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script><script type=\"text/javascript\" src=\"js/mdb.min.js\"></script>"+
				"<script type=\"text/javascript\" src=\"js/chart.js\"></script></body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
