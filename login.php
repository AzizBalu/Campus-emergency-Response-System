<?php
include "includes/conn.php";
error_reporting(0);
session_start();

if(isset($_POST['login'])){
    $user_name  =   $_POST['email'];
    $p_word =   $_POST['pass'];


     
        $query  =   "SELECT * 
                    FROM users_tbl
                    WHERE email='$user_name' AND pass = '{$p_word}'";
                    
        $user_query =   mysqli_query($conn, $query);
        
            $nu_row =   mysqli_num_rows($user_query);
            if($nu_row>0){
                $data   =   mysqli_fetch_assoc($user_query);
                $dbr=$data['email'];
                $dbp=$data['pass'];
                $dbi=$data['u_id'];
                $dbo=$data['type'];
                
                
                
                
}


                
                if(($dbr==$user_name) && ($dbp==$p_word) && ($dbo==2)){
                    $_SESSION['email']=$dbr;
                    $_SESSION['pass']=$dbp;
                        $_SESSION['u_id']=$dbi;
                        $_SESSION['type']=$dbo;
                        
                        echo "<script>window.location.href='index.php'</script>";

   
            

                    
                   }else{

                   echo "<p class='alert alert-danger'>Incorrect Email or Password!</p>"; 
                    
                            
                    

                    
                    
                  }  
                } 

?>

<!DOCTYPE html>
<html>

<?php include "head.php" ?>

<body class="sub_page">
  <div class="hero_area">
    <!-- header section strats -->
    <div class="hero_bg_box">
      <div class="img-box">
        <img src="images/hero-bg.jpg" alt="">
      </div>
    </div>

    <?php include "menu.php" ?>
    <!-- end header section -->
  </div>

  <!-- contact section -->

  <section class="contact_section layout_padding">
    <div class="contact_bg_box">
      <div class="img-box">
        <img src="images/contact-bg.jpg" alt="">
      </div>
    </div>
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Login to Account
        </h2>
      </div>
      <div class="">
        <div class="row">
          <div class="col-md-7 mx-auto">
            <form action="" method="POST">
              <div class="contact_form-container">
                <div>
                  
                  <div>
                    <input type="email" placeholder="Email " name="email" />
                  </div>
                  <div>
                    <input type="password" placeholder="Password" name="pass" />
                  </div>
                  
                  <div class="btn-box ">
                    <button type="submit" name="login">
                      Login
                    </button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

  <!-- info section -->
  <section class="info_section ">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info_logo">
            <a class="navbar-brand" href="index.html">
              <span>
                Guarder
              </span>
            </a>
            <p>
              dolor sit amet, consectetur magna aliqua. Ut enim ad minim veniam, quisdotempor incididunt r
            </p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_links">
            <h5>
              Useful Link
            </h5>
            <ul>
              <li>
                <a href="">
                  dolor sit amet, consectetur
                </a>
              </li>
              <li>
                <a href="">
                  magna aliqua. Ut enim ad
                </a>
              </li>
              <li>
                <a href="">
                  minim veniam,
                </a>
              </li>
              <li>
                <a href="">
                  quisdotempor incididunt r
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_info">
            <h5>
              Contact Us
            </h5>
          </div>
          <div class="info_contact">
            <a href="" class="">
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              <span>
                Lorem ipsum dolor sit amet,
              </span>
            </a>
            <a href="" class="">
              <i class="fa fa-phone" aria-hidden="true"></i>
              <span>
                Call : +233551838318
              </span>
            </a>
            <a href="" class="">
              <i class="fa fa-envelope" aria-hidden="true"></i>
              <span>
                braimahbaluaziz@gmail.com
              </span>
            </a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_form ">
            <h5>
              Newsletter
            </h5>
            <form action="#">
              <input type="email" placeholder="Enter your email">
              <button>
                Subscribe
              </button>
            </form>
            <div class="social_box">
              <a href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-youtube" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info_section -->




  <!-- footer section -->
  <footer class="container-fluid footer_section">
    <p>
      &copy; <span id="currentYear"></span> All Rights Reserved. Design by
      <a href="https://html.design/">ITE400A GROUP 5</a> Distribution by
      <a href="#">GROUP 5 </a>
    </p>
  </footer>
  <!-- footer section -->

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>