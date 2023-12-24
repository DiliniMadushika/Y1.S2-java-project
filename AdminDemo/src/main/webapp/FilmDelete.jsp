<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Film</title>
<link href="CSS/FilmAccount.css" rel="stylesheet">
</head>
<body>
<nav>
        <header>
          <img class="logo" src="CSS/Logo.png" alt="logo " />
          <nav>
            <ul class="nav__links">
              <li>
              <a href="http://localhost:8090/AdminDemo/HomeAfterLogin.jsp">Home</a>
              <a href="http://localhost:8090/AdminDemo/FilmLogin.jsp">Videos</a>
              <a href="http://localhost:8090/Feedback/SearchFeedback.jsp">FeedBack</a>
              <a href="http://localhost:8090/AdminDemo/AdminLogin.jsp">Admin</a>
              </li>
            </ul>
          </nav>
        <a href="http://localhost:8090/User/Login.jsp" class="cta">
        	<button>Profile</button>
        </a>
        </header>
       
      </nav>
       <br><br><br>

<%
	String filmid = request.getParameter("filmid");
	String filmname = request.getParameter("filmname");
	String filtype = request.getParameter("filtype");
	String filmtime = request.getParameter("filmtime");
	String filmdate = request.getParameter("filmdate");
	String filmurl = request.getParameter("filmurl");
	String filmdescription = request.getParameter("filmdescription");
	
%>

 <h1 class="topic-uplode">Delete Film<span> Details..</span></h1>
<div class="uplode-container">
<form action="deletefil" method="post">
          <div class="uplode-card">
            <div class="details-container">
            <label class="lable-uplode" for="name">Film id</label><br />
              <input
                class="uplode-input"
                type="text"
                id="filmid"
                name="filmid"
                 value="<%=filmid%>"
                required
              /><br />
              <label class="lable-uplode" for="name">Film Name</label><br />
              <input
                class="uplode-input"
                type="text"
                id="filmname"
                name="filmname"
                 value="<%=filmname%>"
                required
              /><br />

              <label class="lable-uplode" for="type">type</label><br />
              <input class="uplode-input" type="text" id="type" name="filtype" value="<%=filtype%>" required /><br />

              <label class="lable-uplode" for="description">filmtime</label
              ><br />
              <input
                class="uplode-input"
                type="text"
                id="filmtime"
                name="filmtime"
                 value="<%=filmtime%>"
                required
              /><br />
              <label class="lable-uplode" for="date">filmdate</label><br />
              <input
                class="uplode-input"
                type="date"
                id="filmdate"
                name="filmdate"
                 value="<%=filmdate%>"
                required
              /><br />
              <label class="lable-uplode" for="type">filmurl</label><br />
              <input class="uplode-input" type="text" id="filmurl" name="filmurl"  value="<%=filmurl%>" required /><br />
              <label class="lable-uplode" for="type">filmdescription</label><br />
              <input class="uplode-input" type="text" id="filmdescription" name="filmdescription"  value="<%=filmdescription%>" required /><br />
              <br />
            </div>
            <div class="button-form">
              <button class="uplode dl">Delete</button>
            </div>
          </div>
        </form>
        </div>
        <br><br><br>
        <!--Footer-->
    <div className="ft">
      <footer class="footer">
        <div class="container">
          <div class="row">
            <div class="footer-col">
              <h4><b>Discover</b></h4>
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4><b>About</b></h4>
              <ul>
                <li><a href="#">Clients</a></li>
                <li><a href="#">Team</a></li>
                <li><a href="#">Career</a></li>
                <li><a href="#">Journal</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4><b>Help</b></h4>
              <ul>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Terms & Conditions</a></li>
                <li><a href="#">Partners</a></li>
                <li><a href="#">Legalty</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4><b>Follow us</b></h4>
              <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
        </div>
      </footer>
</body>
</html>