<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio.aspx.cs" Inherits="WebApplication2.WebForm1" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Portfolio Website</title>
    <!-- Link To CSS -->
    <link rel="stylesheet" href="../css/portfolio.css">
    <!-- Box Icons -->
    <link rel="stylesheet"
           href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" >

</head>
<body>
    <!-- Navbar -->
    <header>
        <a href="#" class="logo">My Portfolio</a>

        <div class="bx bx-menu" id="menu-icon"></div>

         <form runat="server">    
         <div>
             <asp:Button ID="Button1" class="button1" runat="server" Text="Admin" Height="54px" OnClick="Button1_Click" Width="108px" ForeColor="#00CCFF" />
             <asp:Button ID="Button2" class="button1" runat="server" Text="Contact Me" Height="54px" OnClick="Button2_Click" Width="108px" ForeColor="#00CCFF" />
    </div>  </form>

      

        <ul class="navbar">
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#skills">Skills</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#portfolio">Projects</a></li>
           
            <div class="bx bx-moon" id="darkmode"></div>
        </ul>
    </header>
    <!-- Home -->

    <section class="home" id="home">
        <div class="social">
            <a href="#"><i class='bx bxl-github'></i></a>
            <a href="#"><i class='bx bxl-dribbble'></i></a>
            <a href="#"><i class='bx bxl-behance'></i></a>



            


        </div>
        <div class="home-img">
            <img src="../Image/tt.jpg" alt="">
        </div>
        <div class="home-text">
            <span>Hello, I'm</span>
            <h1>Tahmid Alam</h1>
            <h2>Web Developer</h2>
            <p>Welcome to my world of coding and creativity. As a passionate web developer, I strive to create engaging and user-friendly web experiences. With a keen eye for design and a love for problem-solving, I transform ideas into visually stunning and functional websites.</p>
           
        </div>

    </section>
    <!-- About -->
    <section class="about" id="about">
        <div class="heading">
            <h2>About Me</h2>
            <span>Introduction</span>
        </div>
        <!-- About Content -->
        <div class="about-container">
            <div class="about-img">
                <img src="../Image/WhatsApp Image 2024-02-29 at 19.19.38_8bde1c59.jpg" alt="">
            </div>
            <div class="about-text">
    <p>Exploring the realms of technology and creativity, I find my passion in Machine Learning, delving into the world of algorithms and data. Beyond the screen, you'll often find me indulging in my favorite hobbies - fishing, enjoying movies, and diving into the immersive world of gaming. Currently, I'm on an exciting journey of learning and mastering the intricacies of web development, shaping digital experiences one line of code at a time.</p>

            
                             <div class="formdata">
                <strong>Phone:</strong> <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label><br />
                <strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label><br />
                <strong>University:</strong> <asp:Label ID="lblUniversity" runat="server" Text=""></asp:Label><br />
                <strong>Degree:</strong> <asp:Label ID="lblDegree" runat="server" Text=""></asp:Label><br />
            </div>

                   
</div>

                   
                  


           













                </div>
                <a href="#" class="btn">Download Cv</a>
            </div>
        </div>


    

    </section>
    <!-- Skills -->
    <section class="skills" id="skills">
        <div class="heading">
            <h2>Skills</h2>
            <span>My Skills</span>
        </div>
        <!-- Skills Content -->
        <div class="skills-container">
            <div class="bars">
                <!-- Box 1 -->
                <div class="bars-box">
                    <h3>HTML</h3>
                    <span>94%</span>
                    <div class="light-bar"></div>
                    <div class="percent-bar html-bar"></div>
                </div>
                <!-- Box 2 -->
                <div class="bars-box">
                    <h3>CSS</h3>
                    <span>84%</span>
                    <div class="light-bar"></div>
                    <div class="percent-bar css-bar"></div>
                </div>
                <!-- Box 3 -->
                <div class="bars-box">
                    <h3>JavaScript</h3>
                    <span>74%</span>
                    <div class="light-bar"></div>
                    <div class="percent-bar js-bar"></div>
                </div>
                <!-- Box 4 -->
                <div class="bars-box">
                    <h3>Android</h3>
                    <span>80%</span>
                    <div class="light-bar"></div>
                    <div class="percent-bar react-bar"></div>
                </div>
            </div>
            <div class="skills-img">
                <img src="../Image/123.png" alt="">
            </div>
        </div>

    </section>
    <!-- Services -->
    <section class="services" id="services">
        <div class="heading">
            <h2>Services</h2>
            <span>Our Services</span>
        </div>
        <div class="services-content">
            <!-- Box 1 -->
            <div class="services-box">
                <i class='bx bx-code-alt'></i>
                <h3>Web Development</h3>
                <a href="#">Learn More</a>
            </div>
            <!-- Box 2 -->
            <div class="services-box">
                <i class='bx bx-server'></i>
                <h3>Backend Development</h3>
                <a href="#">Learn More</a>
            </div>
            <!-- Box 3 -->
            <div class="services-box">
                <i class='bx bx-brush'></i>
                <h3>UI/UX Design</h3>
                <a href="#">Learn More</a>
            </div>

            <div class="services-box">
                <i class='bx bxl-wordpress'></i>
                <h3>Wordpress Developer</h3>
                <a href="#">Learn More</a>
            </div>
        </div>
    </section>
    <!-- Portfolio -->
    <section class="portfolio" id="portfolio">
        <div class="heading">
            <h2>Projects</h2>
            <span>My Recent Works</span>
        </div>
        <div class="portfolio-content">
            <div class="portfolio-img">
                <img src="../Image/pic-2.jpeg" alt="">
            </div>
            <div class="portfolio-img">
                <img src="../Image/pic-3.jpeg" alt="">
            </div>
            <div class="portfolio-img">
                <img src="../Image/pic-1.jpeg" alt="">
            </div>
           
          
            

        </div>
    </section>
    <!-- Contact -->
   
    <!-- Footer -->
    <div class="footer">
        <h2>My Portfolio</h2>
        <div class="footer-social">
            <a href="#"><i class='bx bxl-facebook'></i></a>
            <a href="#"><i class='bx bxl-twitter'></i></a>
            <a href="#"><i class='bx bxl-instagram'></i></a>
            <a href="#"><i class='bx bxl-youtube'></i></a>
        </div>

    </div>
    <!-- Copyright -->
    <div class="copyright">
        <p>Create By <a href="">Foolish Developer</a> | All Right Reserved.</p>
    </div>



    <!-- Link To JS -->
    <script src="../javascript/portfolio.js"></script>
</body>
</html>
