<?php
if(isset($_POST['login'])){
	$input	= $classuser->login($_POST['username'], md5($_POST['password']));
	if($input){
		echo "<script>window.alert('Anda berhasil login.')</script>";
		echo redirectFull("index.php");
	}
}
echo $classuser->getProjectID();
?>
<div id="content">
                <div class="container background-white">
                    <div class="container">
                        <div class="row margin-vert-30">
                            <!-- Login Box -->
                            <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
                            <?php echo @$_SESSION['alertinput'] ?>
                            <?php echo $classuser->getProjectID(); ?>
                                <form method="post" class="login-page">
                                    <div class="login-header margin-bottom-30">
                                        <h2><span><img src="assets/img/icon-security.png" width="65px" /></span> Login</h2>
                                    </div>
                                    <div class="input-group margin-bottom-20">
                                        <span class="input-group-addon">
                                            <i class="fa fa-user"></i>
                                        </span>
                                        <input name="username" placeholder="Username" class="form-control" type="text">
                                    </div>
                                    <div class="input-group margin-bottom-20">
                                        <span class="input-group-addon">
                                            <i class="fa fa-lock"></i>
                                        </span>
                                        <input name="password" placeholder="Password" class="form-control" type="password">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="checkbox">
                                        </div>
                                        <div class="col-md-6">
                                            <button name="login" class="btn btn-primary pull-right" type="submit">Login</button>
                                        </div>
                                    </div>
                                    <hr>
                                    <h4>Belum Punya Akun Pemohon ?</h4>
                                    <p><a href="index.php?modul=login&&file=daftar" class="btn btn-primary">Daftar Disini</a></p>
                                </form>
                            </div>
                            <!-- End Login Box -->
                        </div>
                    </div>
                </div>
            </div>
