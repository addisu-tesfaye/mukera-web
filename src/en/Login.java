package en;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String login_param = request.getParameter("login");
		String nameErr = "username";
		String passErr = "password";
		
		
		
		String name_color = "#a1a1a1";
		String pass_color = "#a1a1a1";
		
		if (login_param != null){
			try{
				 Class.forName("com.mysql.jdbc.Driver").newInstance();
				 Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/mukera?user=root&password=tiger");
				 Statement stmt = con.createStatement();
				 
				 String username = request.getParameter("username");
				 String password = request.getParameter("password");
				 
				 
				 if(username.isEmpty()){
					 nameErr = "Please enter a username";
					 name_color="#f57c00";
				 }
				 if(password.isEmpty()){
					 passErr = "Please enter a password";
					 pass_color = "#f57c00";
				 }
				 if (!password.isEmpty() && !username.isEmpty()){
					 ResultSet userquery = stmt.executeQuery("select username from users_tbl where username ='"+username+"' and password ='"+password+"'");
					 if (userquery.next()){
						 HttpSession sessionvar = request.getSession();
						 sessionvar.setAttribute("username", username);
						 response.sendRedirect("en/g_12/subjects.jsp");
					 	}
					 else{
						 nameErr = "Password and username must match!";
						 pass_color = "#f57c00";
						 name_color="#f57c00";
					 }
						 
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
		
		
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">"+
		"<html lang = \"en\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">"+
		    "<meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\"><title>Material Design Bootstrap</title>"+
		    "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css\">"
		    + "<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">"+
		    "<link href=\"css/mdb.css\" rel=\"stylesheet\"><link href=\"/css/style.css\" "
		    + "rel=\"stylesheet\"></head><body style=\"background-color:#e7e8e8;\">"+
			"<nav class=\"navbar navbar-dark bg-primary\"><div class=\"container-fluid\">"
			+ "<div class=\" navbar-toggleable-xs\" id=\"collapseEx2\">"+
		            "<div class=\"row\"><div class=\"col-sm-2\"><a class=\"navbar-brand\" href=\"#\">"
					+ "<img src=\"img/logo.png\" width=\"20%\" height=\"20%\"/></a></div></div>"+
		        "</div></div></nav><br><div class=\"row\"><div class=\"col-sm-8 col-sm-offset-2\">"+
					"<h1 class=\"h1-responsive\" style=\"color:#ff9800; text-align:center\">Log in page</h1>"+
				"</div></div><div class=\"row\"><div class=\"col-sm-12\"><hr></div>"
				+ "</div><div class=\"col-sm-4 col-sm-offset-4\">"+
					"<form method=\"post\" action=\"Login\"><div class=\"card card-block\">"+
					"<input placeholder="+"\""+nameErr+"\""+" style = \"color:"+name_color+"\""+"type=\"text\" name=\"username\" class=\"form-control\">"+
							"<input placeholder="+"\""+passErr+"\""+" style = \"color:"+pass_color+"\""+"type=\"password\" name=\"password\" class=\"form-control\">"+	
							"<a class=\"btn btn-warning\">Forgot Password</a>"
							+ "<button name=\"login\" type = \"submit\" class=\"btn btn-info\">Login</button>"+
						"</div><br><br><br><br><br><br><br><br><br><br><br><br></form></div><div class=\"row\"></div><div class=\"row\">"+
				"<footer class=\"page-footer blue center-on-small-only\"><div class=\"container-fluid\">"+
					"<div class=\"row\"><div class=\"col-md-8 col-md-offset-2\">"+
					"<p style=\"text-align:center\"><a href=\"#\" >Contact Us</a> | <a href=\"#\" >FAQ's</a></p>"+
						"</div><div class=\"col-md-6\"><ul><li><a href=\"#!\"></a></li><li><a href=\"#!\"></a></li></ul></div>"+
					"</div><br></div><div class=\"footer-copyright\"><div class=\"container-fluid\">© 2015 Copyright: Mukera.com </div>"+
				"</div></footer></div><script type=\"text/javascript\" src=\"/js/jquery-2.2.3.min.js\"></script>"+
		    "<script type=\"text/javascript\" src=\"/js/tether.min.js\"></script><script type=\"text/javascript\" src=\"/js/bootstrap.min.js\"></script>"+
		    "<script type=\"text/javascript\" src=\"/js/mdb.min.js\"></script><script type=\"text/javascript\" src=\"/js/chart.js\"></script>"+
		"</body></html>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
