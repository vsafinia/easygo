<?php echo $header; ?>
  <section class="fullsize-video-bg">
    <div class="inner">
      <div>
        <h1>welcome to easygo...</h1>
        <h3>Discover us</h3>
        <br/>


        <!-- Trigger/Open The Modal -->
        <div id="myModal" class="modal">
          <div class="text-center" style="padding:50px 0">

            <!-- Main Form -->
            <div class="login-form-1">
              <form id="login-form" class="text-left">
                <div class="login-form-main-message"></div>
                <div class="main-login-form">
                  <div class="login-group">
                    <div class="form-group">
                      <h3>Login</h3>
                      <label for="lg_username" class="sr-only">Username</label>
                      <input type="text" class="form-control" id="lg_username" name="email"
                             placeholder="username">
                    </div>
                    <div class="form-group">
                      <label for="lg_password" class="sr-only">Password</label>
                      <input type="password" class="form-control" id="lg_password" name="password"
                             placeholder="password">
                    </div>
                    <div class="form-group login-group-checkbox">
                      <input type="checkbox" id="lg_remember" name="lg_remember">
                      <label for="lg_remember">remember</label>
                    </div>
                  </div>
                  <button type="submit" id="login-button" class="login-button"><i class="fa fa-chevron-right"></i></button>
                </div>
                <div class="etc-login-form">
                  <p>forgot your password? <a href="<?php echo $forgotten;?>">click here</a></p>
                  <p>new user? <a href="<?php echo $register;?>">create new account</a></p>
                </div>
              </form>
            </div>
            <!-- end:Main Form -->
          </div>


        </div>


        <div align="center" class="socialbtns">
          <ul>
            <?php foreach($social as $icon){?>
            <li><a target="_blank" href="<?php echo $icon['href'];?>" class="<?php echo $icon['icon']?>" ></a></li>
            <?php } ?>
<!--            <li><a href="#" class="fa fa-lg fa-twitter" style="color:#55acee"></a></li>-->
<!--            <li><a href="#" class="fa fa-lg fa-google-plus" style="color:#dd4b39"></a></li>-->
<!--            <li><a href="#" class="fa fa-lg fa-pinterest" style="color:#cb2027"></a></li>-->
<!--            <li><a href="#" class="fa fa-lg fa-linkedin" style="color:#007bb5"></a></li>-->
<!--            <li><a href="#" class="fa fa-lg fa-instagram" style="color: #e95950"></a></li>-->
<!--            <li><a href="#" class="fa fa-lg fa-youtube" style="color:#bb0000"></a></li>-->
          </ul>
        </div>


      </div>


    </div>

    <div id="video-viewport">
      <video width="1920" height="1280" autoplay muted loop>
        <source src="catalog/view/theme/easygo/video/EasyGo.mp4" type="video/mp4"/>
        <source src="catalog/view/theme/easygo/video/EasyGo.webm" type="video/webm"/>
      </video>
    </div>
  </section>
<?php //echo $footer; ?>
</body>
</html>
