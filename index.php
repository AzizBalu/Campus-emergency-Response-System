<?php
include "includes/conn.php";
session_start();
error_reporting(0);
$okk = $_SESSION['u_id'];
$uname = $_SESSION['email'];
$roletyp = $_SESSION['type'];

 use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'mailer/vendor/autoload.php';


?>

<!DOCTYPE html>
<html>

<?php include "head.php" ?>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    <div class="hero_bg_box">
      <div class="img-box">
        <img src="images/homebg.jpg" alt="">
      </div>
    </div>

    <?php include "menu.php" ?>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section ">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <h1>
                      Your Saftey <br>
                      <span>
                        Our Responsibility
                      </span>
                    </h1>
                    <p>
                      Welcome to the campus Emergency report and response system. You see any danger on campus. Report it!
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn-1" data-toggle='modal' data-target='#exampleModal3'> Create Account </a>
                      <?php 
                      if (empty($okk)) {
                            echo "<a href='' class='btn-2' data-toggle='modal' data-target='#exampleModal3'>Report Emergency</a>";

                          }else{
                            echo "<a href='' class='btn-2' data-toggle='modal' data-target='#exampleModal5'>Report Emergency</a>";

                        }
                       ?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
       
       <!-- Modal -->
<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">

    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">Create Account</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <?php
      if(isset($_POST['rego'])){
    $email  =   $_POST['email'];
    $phone =   $_POST['phone'];
    $fname =   $_POST['name'];
    $pass=$_POST['pass'];

    $country = 'Nigeria';
    $city = 0;
   
    $token= rand(0,999999);
    $state = 0;
    $address = 0;
    $zip = 0;




    $stmt = $conn->prepare("SELECT * FROM users_tbl WHERE email = ?");

$stmt->bind_param("s", $email);
$stmt->execute();
 $result = $stmt->get_result();

 
    if(mysqli_num_rows($result)>0){
        $row = mysqli_fetch_assoc($result);
                                  echo ("<script LANGUAGE='JavaScript'>
    window.alert('Account Already Exist!');
    window.location.href='';
    </script>"); 


                                  
                              }else{

                    $stmt = $conn->prepare("INSERT INTO users_tbl(email,pass,fname,country,phone)VALUES (?,?,?,?,?)");



        $stmt->bind_param('sssss',$email,$pass,$fname,$country,$phone);





       if($stmt->execute()){


   

   
        $query  =   "SELECT * 
                    FROM users_tbl
                    WHERE email='$email' AND pass = '{$pass}'";
                    
        $user_query =   mysqli_query($conn, $query);
        
            $nu_row =   mysqli_num_rows($user_query);
            if($nu_row>0){
                $data   =   mysqli_fetch_assoc($user_query);
                $dbr=$data['email'];
                $dbp=$data['pass'];
                $dbi=$data['u_id'];
                $dbo=$data['type'];
                
                
                
                
}


                
                if(($dbr==$email) && ($dbp==$pass) && ($dbo==2)){
                    $_SESSION['email']=$dbr;
                    $_SESSION['pass']=$dbp;
                        $_SESSION['u_id']=$dbi;
                        $_SESSION['type']=$dbo;
                        
                        echo "<script>window.location.href='index.php'</script>";

   
            

                    
                   }else{

                   echo "<p class='alert alert-danger'>Incorrect Email or Password!</p>"; 
                    
                            
                    

                    
                 }   
                  } }
                }  ?>

      <form action="" method="POST">
      <div class="modal-body">
        <label style="color:black">Your Full Name</label>
        <input type="text" name="name" class="form-control" required><br>
        <label style="color:black">Phone Number</label>
        <input type="text" name="phone" class="form-control" required><br>
        <label style="color:black">Email Address</label>
        <input type="email" name="email" class="form-control" required><br>
        <label style="color:black">Password</label>
        <input type="password" name="pass" class="form-control" required><br>

        <!-- <label>Password</label>
        <input type="password" name="pass" class="form-control"> -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name='rego' style="color: #fff;">Create Account</button>
        
      </div>
      <p style="text-align: center; color: black;">Already have an Account? <a href="login.php"> Sign In</a></p>

    </div>

  </div>

</div>


</form>   



<!-- Modal -->
<div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">

    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">Report an Emergency</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <?php
      if(isset($_POST['report'])){

         $sql = "SELECT * FROM company_tbl WHERE id = '1' ";
              $query = mysqli_query($conn,$sql);
              while ($row=$query->fetch_assoc()) {
                $adminemail=$row['email'];
              }

       


    $subject  =   $_POST['subject'];
    $msg =   $_POST['msg'];
    $time=date('d-M-Y h:i');
    
   
   $namephoto = $_FILES["img"]["name"];
  $size      = $_FILES["img"]["size"];
  $tmp_location_photo = $_FILES["img"]["tmp_name"];
  $typephoto = $_FILES["img"]["type"];

  $target_dir = "uploads/";

  $target_file = $target_dir .rand(). basename($namephoto);


    
                    $stmt = $conn->prepare("INSERT INTO cases_tbl(subject,msg,image,user,time)VALUES (?,?,?,?,?)");



        $stmt->bind_param('sssss',$subject,$msg,$target_file,$okk,$time);





       if($stmt->execute()){
        move_uploaded_file($tmp_location_photo, $target_file);


        $body="Dear Admin, A new emergency has been recorded on campus. Kindly login to your dashbaord to respond";
        $sub="New Emergency Recorded";


        $mail = new PHPMailer(true);
        
            $mail->SMTPDebug = 0;
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'ellagraham798@gmail.com';
            $mail->Password = 'wwpzhocmbxbtbcmd';
            // $mail->SMTPSecure = 'ssl';
            $mail->Port = 587;

            $mail->setFrom('campusemergency@campusapp.com', 'Campus Emergency Response System');
            $mail->addAddress($adminemail);

            $mail->isHTML(true);
            $mail->Subject = $sub;
            $mail->Body    = $body;
            
            $mail->AltBody = '';
            
            if($mail->Send()) { 
  
    echo ("<script LANGUAGE='JavaScript'>
    window.alert('Case Report! Campus Admin is currently reviewing the Emergency Case.');
    window.location.href='';
    </script>");


   
}}}
   
        ?>

      <form action="" method="POST" enctype="multipart/form-data">
      <div class="modal-body">
        <label style="color:black">Subject</label>
        <input type="text" name="subject" class="form-control" required><br>
        <label style="color:black">Emergency in Detail</label>
        <textarea name="msg" class="form-control"></textarea><br>
        
        <label style="color:black">Snap Shot of Emergency or Image</label>
        <input type="file" name="img" class="form-control" required><br>

        <!-- <label>Password</label>
        <input type="password" name="pass" class="form-control"> -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name='report' style="color: #fff;">Report Emergency</button>
        
      </div>
      <!-- <p style="text-align: center;">Already have an Account? <a href="login"> Sign In</a></p> -->

    </div>

  </div>

</div>


</form>   
       
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6 px-0">
          <div class="img_container">
            <div class="img-box">
              <img src="images/about-img.jpg" alt="" />
            </div>
          </div>
        </div>
        <div class="col-md-6 px-0">
          <div class="detail-box">
            <div class="heading_container ">
              <h2>
                About The TERMS
              </h2>
            </div>
            <p>
              The Campus Emergency Response Management System is an innovative system that alerts students, lecturers and campus authorities of any emergencies or dangers on campus. This innovation will help respond faster to emergencies and eliminate causualties if need be.
            </p>
            <div class="btn-box">
              <a href="about.php">
                Read More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

  <!-- service section -->

  <section class="service_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Latest Emergencies on Campus
        </h2>
      </div>
      <div class="row">
<?php
$sql = "SELECT * FROM cases_tbl WHERE status = '1' LIMIT 3 ";
              $query = mysqli_query($conn,$sql);
              while ($row=$query->fetch_assoc()) {
                $csubject=$row['subject'];
                $cmsg=$row['msg'];
                $cimage=$row['image'];
                $cdate=$row['time'];


                ?>
             

        <div class="col-md-4">
          <div class="box ">
            <div class="img-box">
             <img src="<?php echo $cimage ?>" width="200" height="100">
            </div>
            <div class="detail-box">
              <h6>
                <?php echo $csubject ?>
              </h6>
              <p>
                <?php echo $cmsg ?>
              </p>
              
              <p>
                Report Date: <?php echo $cdate ?>
              </p>
            </div>
          </div>
        </div>

<?php
 }  ?>
       
        
      
    </div>
  </section>

  <!-- end service section -->


  <!-- client section -->

 

  <!-- end client section -->

  <!-- contact section -->

  

  <!-- end contact section -->

  <!-- team section -->

  

  <!-- end team section -->

  <!-- info section -->
 

  <!-- end info_section -->




  <!-- footer section -->
  <?php include "footer.php" ?>
  <!-- footer section -->

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>