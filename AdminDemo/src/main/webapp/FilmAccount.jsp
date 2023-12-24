<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Films Details</title>
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
       
   <h1 class="topic-uplode">Film<span> Details..</span></h1>
    
		<c:forEach var="fil" items="${film}">
		
			<c:set var="filmid" value="${fil.filmid}"/>
			<c:set var="filmname" value="${fil.filmname}"/>
			<c:set var="filtype" value="${fil.filtype}"/>
			<c:set var="filmtime" value="${fil.filmtime}"/>
			<c:set var="filmdate" value="${fil.filmdate}"/>
			<c:set var="filmurl" value="${fil.filmurl}"/>
			<c:set var="filmdescription" value="${fil.filmdescription}"/>
			
     
	<div class="uplode-container">
        <div class="uplode-card">
          <div class="details-container">
            <label class="lable-uplode" for="name">Film ID</label><br />
            <input class="uplode-input" value="${fil.filmid}" readonly /><br />

            <label class="lable-uplode">Film Name</label><br />
            <input
              class="uplode-input"
              value="${fil.filmname}"
              readonly
            /><br />

            <label class="lable-uplode" for="description">Film Type</label
            ><br />
            <input class="uplode-input" value="${fil.filtype}" readonly /><br />

            <label class="lable-uplode">Film Time Duration</label><br />
            <input
              class="uplode-input"
              value="${fil.filmtime}"
              readonly
            /><br />

            <label class="lable-uplode">Film Release Date</label><br />
            <input
              class="uplode-input"
              value="${fil.filmdate}"
              readonly
            /><br />

            <label class="lable-uplode">Film Download Url</label><br />
            <input class="uplode-input" value="${fil.filmurl}" readonly /><br />

            <label class="lable-uplode">Film Details</label><br />
            <input
              class="uplode-input"
              value="${fil.filmdescription}"
              readonly
            /><br />
            <br />
          </div>



		
		</c:forEach>
		
		<c:url value="UpdateFilm.jsp" var="filmupdate">
		
			<c:param name="filmid" value="${filmid}"/>
			
			<c:param name="filmname" value="${filmname}"/>
			<c:param name="filtype" value="${filtype}"/>
			<c:param name="filmtime" value="${filmtime}"/>
			<c:param name="filmdate" value="${filmdate}"/>
			<c:param name="filmurl" value="${filmurl}"/>
			<c:param name="filmdescription" value="${filmdescription}"/> <br>
		
		</c:url>

		
		<c:url value="FilmDelete.jsp" var="fildelete">
		
			<c:param name="filmid" value="${filmid}"/>
			<c:param name="filmname" value="${filmname}"/>
			<c:param name="filtype" value="${filtype}"/>
			<c:param name="filmtime" value="${filmtime}"/>
			<c:param name="filmdate" value="${filmdate}"/>
			<c:param name="filmurl" value="${filmurl}"/>
			<c:param name="filmdescription" value="${filmdescription}"/>
		
		</c:url>
		

		          <div class="button-form">
          
            <a href="${filmupdate}">
              <button class="uplode">Update</button>
            </a>

		
            <br /><br />

            <a href="${fildelete}">
              <button class="uplode dl">Delete</button>
            </a>
          </div>
        </div>
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
    </div>
</body>
</html>
