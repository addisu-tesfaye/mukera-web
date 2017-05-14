package en;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
@WebServlet("/Subjects")
public class Subjects extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String[] pictures = {"english2.png","math2.png","AP.png","chemistry.png","biology.png","physics.png"};
		String[] subjects = {"English","Math","Aptitude","Chemistry","Biology","Physics"};
		
		HttpSession sessions = request.getSession();
    	String username = (String)sessions.getAttribute("username");
		out.println(
				"<!DOCTYPE html><html><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><head>"+
				"<meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">"+
			    "<meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\"><title>Material Design Bootstrap</title>"+
			    "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css\">"+
			    "<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\"><link href=\"css/mdb.css\" rel=\"stylesheet\">"+
			    "<link href=\"css/style.css\" rel=\"stylesheet\">"+
			    "</head><body style=\"background-color:#f5f5f5\"><div class = \"container\">"+
				"<nav class = \"navbar navbar-dark bg-primary\">"+
				"<button class=\"navbar-toggler hidden-sm-up\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseEx2\">"+
		        "<img src=\"img/nav-mob.png\" width=\"45%\" height=\"45%\"/></button>"
				+ "<div class=\"collapse navbar-toggleable-xs\" id=\"collapseEx2\">"+
			    "<ul class=\"nav navbar-nav\"><li class=\"nav-item dropdown\">"+
			    "<a class=\"nav-link dropdown-toggle\" type=\"button\" id=\"dropdownMenu1\" "
			    + "data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Grade 12</a>"+
			    "<div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenu1\">"+
			    "<a class=\"dropdown-item\" href=\"#\">Grade 10</a><a class=\"dropdown-item\" href=\"#\">Grade 8</a>"+
			    "</div></li><li class=\"nav-item dropdown\">"+
				"<a class=\"nav-link dropdown-toggle\" type=\"button\" id=\"dropdownMenu1\" data-toggle=\"dropdown\" "
						+ "aria-haspopup=\"true\" aria-expanded=\"false\"><img src=\"img/user.png\" width=\"15px\" height=\"15px\"/></a>"+
				"<div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenu1\">"+
				"<a class=\"dropdown-item\" href=\"am/index.jsp\" id=\"dropdownSubMenu\"><span id = \"sub_lang\">logout</span></a>"+
				"</div></li><li class=\"nav-item active\"><a class=\"nav-link\" href=\"#\">"+username+"<span class=\"sr-only\">(current)</span></a>"+
			    "</li><li class=\"nav-item\"><a class=\"nav-link\" href=\"settings.html\"><img src=\"img/settings.png\" width=\"15px\" height=\"15px\"/></a>"+
				"</li></ul></div></nav><br></br><div class = \"row\">"
				);
		
			
			for (int j = 0; j < 3; j++){
				out.println(
								"<div class = \"col-sm-4\"><div class=\"card\"><div class=\"view overlay hm-white-slight\">"+
								"<img src=\"img/"+pictures[j]+"\"  class=\"img-fluid\" alt=\"\"><a href=\"2000_en.html\">"+
								"<div class=\"mask\"></div></a></div><div class=\"card-block\"><h4 class=\"card-title\">"+subjects[j]+"</h4>"+
								"<div class=\"btn-group dropup\"><button type=\"button\" class=\"btn btn-primary\">2000</button>"+
								"<button type=\"button\" class=\"btn btn-primary dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">"+
								"<span class=\"sr-only\">Toggle Dropdown</span></button><div class=\"dropdown-menu\">" 
								+ "<a class=\"dropdown-item\" onclick=\"choose()\" href=\"#\">2001</a>"+
								"<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2002</a><a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2003</a>"
								+ "<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2004</a>"+
								"<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2005</a><a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2006</a>"
								+ "<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2007</a>"+
								"<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2008</a></div></div></div></div></div>"
						);
			}
			out.println("</div><div class = \"row\">");
			for (int j = 3; j < 6; j++){
				out.println(
						"<div class = \"col-sm-4\"><div class=\"card\"><div class=\"view overlay hm-white-slight\">"+
						"<img src=\"img/"+pictures[j]+"\"  class=\"img-fluid\" alt=\"\"><a href=\"2000_en.html\">"+
						"<div class=\"mask\"></div></a></div><div class=\"card-block\"><h4 class=\"card-title\">"+subjects[j]+"</h4>"+
						"<div class=\"btn-group dropup\"><button type=\"button\" class=\"btn btn-primary\">2000</button>"+
						"<button type=\"button\" class=\"btn btn-primary dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">"+
						"<span class=\"sr-only\">Toggle Dropdown</span></button><div class=\"dropdown-menu\">" 
						+ "<a class=\"dropdown-item\" onclick=\"choose()\" href=\"#\">2001</a>"+
						"<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2002</a><a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2003</a>"
						+ "<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2004</a>"+
						"<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2005</a><a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2006</a>"
						+ "<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2007</a>"+
						"<a class=\"dropdown-item\" onclick=\"choose()\"href=\"#\">2008</a></div></div></div></div></div>"
						);
			}
			out.println("</div>");
		
		
		out.println(
				"</div><script type=\"text/javascript\" src=\"js/jquery-2.2.3.min.js\"></script><script type=\"text/javascript\" src=\"js/tether.min.js\"></script>"+
			    "<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script><script type=\"text/javascript\" src=\"js/mdb.min.js\"></script></body></html>"
				);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
