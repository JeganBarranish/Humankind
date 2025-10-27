<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>HumanKind</title>
		<style>
		/*body {
		  background-image: url('img.jpg');
		  background-repeat: no-repeat;
		  background-attachment: fixed;
		  background-size: cover;
		}*/
		
		* {
				font-family: 'Montserrat', sans-serif;
			}
			
			/*Service Section*/
			#services_offered {
				margin-top: 30px;
			}
			
			.services-column {
				padding: 20px;
				text-align: center;
			}
			
			.services-content {
				margin-top: 20px;
			}
			
			/*Gallery section*/
			#gallery {
				margin-top: 100px;
			}
			
			.img-container {
				text-align: center;
			}
			
			button {
				margin-top: 100px;
			}
			
			/*footer section*/
			footer {
				padding: 20px;
				margin-top: 50px;
				
				color: #ffffff;
			}
			
			.footer-link {
				color: white;
			}
			
			.footer-link:hover {
				color: white;
			}
			
			ul {
				list-style: none;
			}
			
			/*Contact Section*/
			.contact-section {
				margin-bottom: 20px;
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				text-align: center;
				width: 100%;
				height: 60vh;
				padding: 0 2rem;
				background-image:
					url('https://t3.ftcdn.net/jpg/03/00/40/08/240_F_300400890_gIVeecUgaknasaavuK1xYtUudTv6Qalw.jpg');
				background-position: center;
				background-repeat: no-repeat;
				background-size: 100% 100%;
				position: relative;
				color: black;
			}
			
			.contact-section-header>h2 {
				font-size: 6rem;
			}
			
			@media ( max-width : 28.75em) {
				.contact-section-header>h2 {
					font-size: 4rem;
				}
			}
			
			.contact-section-header>p {
				font-style: italic;
			}
			
			.contact-links {
				display: flex;
				justify-content: center;
				width: 100%;
				max-width: 980px;
				margin-top: 4rem;
				flex-wrap: wrap;
			}
			
			.contact-details {
				font-size: 2.4rem;
				text-shadow: 2px 2px 1px #1f1f1f;
				transition: transform 0.3s ease-out;
			}
			
			.contact-details:hover {
				transform: translateY(8px);
				text-decoration: underline;
			}
		
		</style>


  </head>
  <body>
    
    <!-- NAVBAR -->
    
	<nav class="navbar navbar-expand-lg   navbar-dark sticky-top" style="background-color: #E78F8E;">
		<a class="navbar-brand" href="<%= request.getContextPath() %>/home/index.jsp"><strong>HumanKind</strong></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<!--  <li class="nav-item active"><a class="nav-link" href="<%= request.getContextPath() %>/register/register.jsp">Register
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/avail/avail.jsp">Avail</a></li>
				<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/donor/donor.jsp">Donor</a></li>
				<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/recipient/recipient.jsp">Recipient</a></li>-->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown1"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Ambulance </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="<%= request.getContextPath() %>/register/register.jsp">Register</a> <a
							class="dropdown-item" href="<%= request.getContextPath() %>/avail/avail.jsp">Book</a>
						
					</div></li>
					<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown2"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Blood </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="<%= request.getContextPath() %>/donor/donor.jsp">Donor</a> <a
							class="dropdown-item" href="<%= request.getContextPath() %>/recipient/recipient.jsp">Recipient</a>
						
					</div></li>
					<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/about/about.jsp">About</a></li>
					<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/contact/contact.jsp">Contact Us</a></li>
			</ul>
			
		</div>
	</nav>
	
	<!-- CAROUSEL -->
	
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	  <ol class="carousel-indicators">
	    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	  </ol>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="https://www.ambipalm.com/home/images/slider-img/delivery1.jpg" class="d-block w-100" style="height: 550px;"alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="mother-child.jpg" class="d-block w-100" style="height: 550px;"alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="heart2.jpg" class="d-block w-100" style="height: 550px;"alt="...">
	    </div>
	  </div>
	  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
	
	<!--Services offered--> 
	
	
	<section id="services_offered" class="container">
		<h1 class="text-center">Services Offered</h1>
		<hr>
	<div class="row">
		<div class="col-sm-6  services-column">
			<img src="https://t4.ftcdn.net/jpg/02/71/94/89/240_F_271948928_GbzUmSklwxG4C8sD51ureB6aJeR29zZG.jpg" class="img-fluid img-responsive" width="100%" >
			<p class="services-content" align="justify">With our 24*7 ambulance booking service, we ensure to make it quick and hassle-free by offering affordable ambulance booking service.
We being your health partners will ensure you never waste those precious golden hours of emergency. You can book the emergency ambulance service from our app for your family or any stranger in distress.
 </p></div>
		<div class="col-sm-6 services-column">
			<img src="https://t4.ftcdn.net/jpg/02/34/19/41/240_F_234194143_0FDtADzQgafk1YbxSyk7q0XLn162XF4O.jpg" class="img-fluid img-responsive" width="100%">
			<p class="services-content" align="justify">Platform for receiving and donating Blood. 
			Users can Request for Blood or Donate Blood. 
			Using the Website, you can find Donors who are willing to Donate Blood and Recipients, who are in need of Blood </p></div>
		
	</div>
	<hr>
	<!-- <section id="serve">
	<div class="row">
                <div class="col-md-6 servicepromise">
                    <h1>Our Service Promise</h1>
                    <p>
                        AmbiPalm&nbsp;will be right there at your fingertips offering Online Ambulance service giving an edge
                        to medical&nbsp;assistance.
                        In the age of instant cabs and pizzas, we started off with the idea of online ambulance service
                        to make
                        <b><a href="https://www.ambipalm.com/home/book-ambulance-online.html">ambulance booking</a></b>
                        quick and hassle-free.<br><br>
                        Medical emergencies! An issue long put second on priority. AmbiPalm is here to change the idea
                        with
                        <b><a href="https://www.ambipalm.com/">online ambulance booking services</a></b>
                        and providing a platform to
                        <b><a href="https://www.ambipalm.com/home/download-blood-donor-app.html">Request or Donate
                                Blood.</a></b>
                    </p>
                </div>
                <div class="col-md-6 promiseimage">
                    <img src="promise4.jpg" alt="Online Ambulance service" class="lazy">
                </div>
            </div>
            </section>
            <br>
            <br>
			-->
			
			<div class="media">
				<img src="https://www.ambipalm.com/home/images/aboutus/ambulance3.jpg" class="mr-3" alt="..." width="500" height="250">
				<div class="media-body">
					
					The human body is a natural machine. The machine tends to get ruptured and needs maintenance at times. Doctors are next to god! They save lives in times of crisis. Although, it is very difficult to get proper medical service at the time of emergency. Unfortunately, many lives are lost due to the unavailability of an ambulance on time. Although, the basic and advanced needs like food, clothes, house, etc. everything is available online and in the minimum time. But not a perfect app for ambulance service. The need of the hour is an ambulance service, Which can be easily accessible and can provide the best possible support in case of emergency the minimum time and cost
				</div>
			</div>
			<hr>
			
			<div class="media">
				<img src="https://t3.ftcdn.net/jpg/02/34/63/16/240_F_234631610_IjpDvwVKfvjHt4y3hnG7SywuVUOwbtTk.jpg" class="mr-3" alt="..." width="500" height="250">
				<div class="media-body">
					
					 Build a strong community of a humanitarian cause.
					 Needless to talk about the nobility of the cause of Blood Donation.
					  Build a community where you help and get all others who wish to help come in a single platform.
					   The donor list is by society and for society. So keep doing the good work and let more lives have a new boon of hope.
				</div>
			</div>
			<hr>
			<div class="media">
				<img src="https://www.ambipalm.com/home/images/slider-img/help.jpg" class="mr-3" alt="..." width="500" height="250">
				<div class="media-body">
					
					This is a very big question for many. How much more time? How long do we need to wait?
					In a critical hour when you see your loved one suffering from pain, you feel every second is an hour.
					 The wait seems never-ending and you start panicking and being restless. 
					 The moment of helplessness, the agony of the difficult situation, the hope of some miracle- all of it builds up in your mind.
					 Time is crucial.
					 A lost time might mean a lost life. 
					 An ailing patient needs the attendance of a doctor. 
					 The sole purpose of an ambulance service is making the service of transportation easier without wasting any hour in any unnecessary obstacles.
					  But so many times, finding a reliable service is difficult who knows the value of time.
				</div>
			</div>
			

	</section>
	<br>
	<br>
	<!-- CONTACT US SECTION -->
	
	<section id="contact" class="contact-section">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

      <div class="contact-section-header">
        <h2>Let's turn the page...</h2>
        <p>Don't let fear cloud your judgement</p>
      </div>
      <div class="contact-links">
        <a href="https://www.facebook.com/"
           target="_blank"
           class="btn contact-details"
           ><i class="fa fa-facebook-square"></i></a>
       <a href="https://www.instagram.com/"
           target="_blank"
           class="btn contact-details"
           ><i class="fa fa-instagram"></i></a>
        <a
           href="https://twitter.com/"
           target="_blank"
           class="btn contact-details"
           ><i class="fa fa-twitter"></i>
          </a>
          
        <a href="mailto:justdoit@mail.com"
           class="btn contact-details"
           ><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
</svg></a>
          
          <br>
          

      </div>
      <!-- <div>
            <h5>Mail us: justdoit@gmail.com</h5>
          </div> -->
    </section>
    
    <!-- FOOTER SECTION -->
    
<div style="background-image: url('https://t3.ftcdn.net/jpg/03/00/40/08/240_F_300400890_gIVeecUgaknasaavuK1xYtUudTv6Qalw.jpg'); background-size: 100% 100%;">
<footer class="container"  >

	<div class="row">
		<div class="col-sm-4">
		<img src="HumanKind.png" class="img-fluid img-responsive">
	</div>
		<div class="col-sm-4 text-center" >
			<h2 style="font-size: 24px;">Links</h2>
			<hr style="border: 2px solid white; width: 50%">
			
			<a href="<%= request.getContextPath() %>/about/about.jsp" class="footer-link">About</a>
			<br>
			<a href="#" class="footer-link">Privacy Policy</a>
			<br>
			<a href="#" class="footer-link">Terms and Condition</a>
	</div>
		<div class="col-sm-4 text-center">
			<h2 style="font-size: 24px;">Contact Us</h2>
			<hr style="border: 2px solid white; width: 50%">
			<p>Phone : 1800 XXXX 8888</p>
			<p>Email : HumanKind@yourcare.com </p>

		</div>
	</div>
	<br>
	<p class="text-center">Copyright &copy; HumanKind 2020. All rights reserved.</p>
	<p class="text-center">Made with &hearts; in India</p>
	</footer>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>