<?php
    session_start();
    error_reporting(0);
    $varsession = $_SESSION['usuario'];

    if ($varsession==null || $varsession=='') {
      echo "usted no tiene autorizacion";
      die();
    }
 ?>

<!DOCTYPE html>
<html>
  <head>
  	<title>Chat theme example</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">

  	<link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>


    <div class="container">

      <span class="badge badge-primary">Hola <?php echo $varsession; ?></span>
      <div class="row">
        <div class="col-4">
          	<div class="chatbox">

                <div>

                  <div class="row">
                  <div class="col">
                    <div id="usuarios">
                      <div class='list-group' id='list-tab' role='tablist'>




                        </div>
                        <br>
                        <a class='list-group-item list-group-item-action' href="login/cerrarSession.php">Cerrar sesion</a>
                    </div>


                  </div>
                </div>

                </div>
            </div>
        </div>



        <div class="col-8">
          <div class="chatbox">
            <div id="chatlogs" class="chatlogs" >
              <div class="chat friend">
                <div class="user-photo"></div>
                <p class="chat-message">Bienvenido <?php echo $varsession; ?></p>
              </div>
            </div>



            <div class="chat-form">
              <textarea id="textarea" onkeypress="onTestChange();"></textarea>
              <button onclick="send()" >Enviar</button>
            </div>
          </div>
        </div>


      </div>
    </div>





	<script src="script.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>



  </body>
</html>
