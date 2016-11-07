<footer>
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
                        <button type="submit" class="login-button" id="login-button"><i class="fa fa-chevron-right"></i></button>
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
</footer>

<!--
EasyGo is open source software and you are free to remove the powered by EasyGo if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for EasyGo 2.0 www.welfordmedia.co.uk -->

</body></html>