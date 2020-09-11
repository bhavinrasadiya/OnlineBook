<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="OnlineBook.WebForm1" %>

<!DOCTYPE html>
<html lang="">

<head runat="server">

    <title>Book4u</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>

<body id="top">
    <form id="form1" runat="server">
        <div class="wrapper row1">
            <header id="header" class="hoc clear">
                <div id="logo" class="fl_left">
                    <h1><a href="login.aspx" style="text-decoration: none;">Book4u</a></h1>
                </div>
                <nav id="mainav" class="fl_right">
                    <ul class="clear">
                        <li><a href="login.aspx">Home</a></li>
                        <li><a class="drop" href="#">Pages</a>
                            <ul>
                                <li><a href="pages/gallery.html">Gallery</a></li>
                            </ul>
                        </li>
                        <li><a class="drop" href="#">Categories</a>
                            <ul>
                                <li><a href="#">Action & Adventure</a></li>
                                <li><a href="#">Arts, Film & Photography</a></li>
                                <li><a href="#">Business & Economics</a></li>

                                <li><a href="#">History </a></li>
                                <li><a class="drop" href="#">Sciences, Technology & Medical</a>
                                    <ul>
                                        <li><a href="#">Science</a></li>
                                        <li><a href="#">Technology</a></li>
                                        <li><a href="#">Medical</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Poetry</a></li>
                                <li><a href="#">Drama</a></li>
                            </ul>
                        </li>
                        <li><a href="#">How It Works</a></li>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                    </ul>
                </nav>
            </header>
        </div>
        <div class="wrapper bgded overlay" style="background-image: url('images/demo/backgrounds/01.jpg');">
            <div id="pageintro" class="hoc clear">
                <article>
                    <p>Now available borrowing and lending book services in Ahmedabad!</p>
                    <h4 class="heading">We are a delivery based library of books</h4>
                    <footer>
                        <ul class="nospace inline pushright">
                            <li><a class="btn" href="lend_book.aspx">Lend Book</a></li>
                            <li><a class="btn inverse" href="borrow_book.aspx">Borrow Book</a></li>
                        </ul>
                    </footer>
                </article>
            </div>
        </div>
        <div class="wrapper row3">
            <main class="hoc container clear">
                <!-- main body -->
                <!--  <section id="introblocks"> 
        <div class="sectiontitle">
          <h6 class="heading">Tellus malesuada dignissim</h6>
          <p>Nullam tincidunt ex vel volutpat accumsan ut lobortis metus</p>
        </div>
        <ul class="nospace btmspace-80 group">
          <li class="one_third first">
            <article><i class="fa fa-diamond"></i>
              <h6 class="heading font-x1"><a href="#">Feugiat maximus nisi</a></h6>
              <p>Sem volutpat massa sed tristique nisi sem sed est cras pulvinar augue libero&hellip;</p>
            </article>
          </li>
          <li class="one_third">
            <article><i class="fa fa-fort-awesome"></i>
              <h6 class="heading font-x1"><a href="#">Vel imperdiet libero</a></h6>
              <p>Condimentum id donec eu eros quis ligula sollicitudin malesuada scelerisque&hellip;</p>
            </article>
          </li>
          <li class="one_third">
            <article><i class="fa fa-forumbee"></i>
              <h6 class="heading font-x1"><a href="#">Dui nam sed tristique</a></h6>
              <p>Nunc sed ligula viverra egestas tincidunt accumsan porta eget lorem maecenas&hellip;</p>
            </article>
          </li>
        </ul>
        <p class="center"><a class="btn" href="#">book</a></p>
      </section>-->
                <hr class="btmspace-80">
                <section>
                    <div class="sectiontitle">
                        <h6 class="heading">Trending Books To Read</h6>
                    </div>
                    <ul class="nospace group overview">
                        <li class="one_third">
                            <figure>
                                <img src="images/demo/book1.jpg" alt="">
                                <figcaption>
                                    <h6 class="heading">The Empathy Edge</h6>
                                    <p>When my team members come to me with issues, I try to get under the surface and understand how I can get on their level. Empathy is an absolute necessity for businesses, and this book is a great resource on the way it plays into the leadership, brand, and culture for companies of all sizes.</p>
                                </figcaption>
                            </figure>
                        </li>
                        <li class="one_third">
                            <figure>
                                <img src="images/demo/book2.jpg" alt="">
                                <figcaption>
                                    <h6 class="heading">Ditch the Act</h6>
                                    <p>When I was starting out with my company, I felt like it was important to look and act the part of the professional without really knowing what that meant. Here, Kim and Foland show that it’s much more important to be human and connect with others through vulnerabilities. Essentially, this book is a great guide for being yourself.</p>
                                </figcaption>
                            </figure>
                        </li>
                        <li class="one_third">
                            <figure>
                                <img src="images/demo/book3.jpg" alt="">
                                <figcaption>
                                    <h6 class="heading">What It Takes</h6>
                                    <p>I’m always eager to learn about how other leaders have navigated the business world to get where they are today. Schwarzman outlines his path from student to CEO of Blackstone, one of the most successful investment firms in the world. This is an especially worthwhile read for those who are just getting their careers started.</p>
                                </figcaption>
                            </figure>
                        </li>
                    </ul>
                </section>
                <!-- / main body -->
                <div class="clear"></div>
            </main>
        </div>


        <!-- Footer Background Image Wrapper
  <div class="bgded overlay" style="background-image:url('images/demo/backgrounds/03.jpg');">
    <div class="wrapper row4">
      <footer id="footer" class="hoc clear">
        <div class="one_quarter first">
          <h6 class="heading">Aliquet ut auctor</h6>
          <ul class="nospace btmspace-30 linklist contact">
            <li><i class="fa fa-map-marker"></i>
              <address>
                Street Name &amp; Number, Town, Postcode/Zip
              </address>
            </li>
            <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
            <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
          </ul>
          <ul class="faico clear">
            <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
            <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          </ul>
        </div>
        <div class="one_quarter">
          <h6 class="heading">Augue sociis natoque</h6>
          <ul class="nospace linklist">
            <li><a href="#">Porta lacinia est velit</a></li>
            <li><a href="#">Sollicitudin nisl eu</a></li>
            <li><a href="#">Tincidunt turpis ante</a></li>
            <li><a href="#">Lobortis nisl fusce</a></li>
            <li><a href="#">Purus nisi faucibus et est</a></li>
          </ul>
        </div>
        <div class="one_quarter">
          <h6 class="heading">Penatibus et magnis</h6>
          <ul class="nospace linklist">
            <li><a href="#">Quis blandit dignissim</a></li>
            <li><a href="#">Lacus vestibulum porta</a></li>
            <li><a href="#">Quam nec mollis vulputate</a></li>
            <li><a href="#">Mauris aliquet cursus</a></li>
            <li><a href="#">Nisl duis sed rhoncus</a></li>
          </ul>
        </div>
        <div class="one_quarter">
          <h6 class="heading">Dis parturient montes</h6>
          <p class="nospace btmspace-15">Nascetur ridiculus mus elit aliquam erat volutpat proin scelerisque mi viverra.
          </p>
        
        </div>
      </footer>
    </div>
   
  </div>
  <!-- End Footer Background Image Wrapper -->
        <a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
        <!-- JAVASCRIPTS -->
        <script src="layout/scripts/jquery.min.js"></script>
        <script src="layout/scripts/jquery.backtotop.js"></script>
        <script src="layout/scripts/jquery.mobilemenu.js"></script>
    </form>
</body>

</html>
