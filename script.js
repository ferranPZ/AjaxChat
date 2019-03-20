window.onload = function() {
  document.getElementById("textarea").focus();
};

setSelf()
loadUser()
setInterval(function(){ getMessage(); }, 1500);

  var elem = document.getElementById('chatlogs');
  let selfUser=0;
  let actualUser=0;

  function setSelf(){
    fetch('session.php',{
  credentials: 'include'  
})
    .then(function(response) {
      return response.json()
    })
    .then(function(text) {
        text.forEach((users) => {
          selfUser= users.idUsuarios;
        })

      })

    }

function loadUser() {
  fetch('showUsers.php')
  .then(function(response) {
    return response.json()
  })
  .then(function(responseJSON) {
    console.log("reading")
    document.getElementById("list-tab").innerHTML = "<a class='list-group-item list-group-item-action active' id='list-home-list' data-toggle='list' href='#list-home' role='tab' aria-controls='home'>Usuarios</a>"
    responseJSON.forEach((users) => {
        document.getElementById("list-tab").innerHTML +=`
        <a class='list-group-item list-group-item-action' id='list-profile-list' onclick=setActual(${users.idUsuarios});getMessage()  href='#list' role='tab' >${users.nombre}</a>`
    })
  });
}

function setActual(id){
    actualUser=id;

}


function getMessage(){
  console.log(actualUser);
	fetch('getMessage.php?idUsuario1='+selfUser+'&idUsuario2='+actualUser)
  .then(function(response) {
	  return response.json()
	})

	.then(function(responseJSON) {

		document.getElementById("chatlogs").innerHTML = ""

		responseJSON.forEach((chat) => {
      
      if (chat.idUsuario1==selfUser) {
        document.getElementById("chatlogs").innerHTML += `
        <div class='chat self'>
          <div class='user-photo'></div>
          <p class='chat-message'>${chat.texto}</p>
        </div>`
      }
      if (chat.idUsuario1==actualUser) {
        document.getElementById("chatlogs").innerHTML += `
        <div class="chat friend">
          <div class="user-photo"></div>
          <p class="chat-message">${chat.texto}</p>
        </div>`
      }

      console.log(chat.texto);

		})
    elem.scrollTop = elem.scrollHeight;
	});

	}

  function send(){
    let texto=document.getElementById('textarea').value;

    fetch('setMessage.php?idUsuario1='+selfUser+'&idUsuario2='+actualUser+'&texto='+texto)
    .then(function(){
      getMessage(actualUser)
      elem.scrollTop = elem.scrollHeight;
      document.getElementById("textarea").value = "";



    })

  }


  function onTestChange() {
    var key = window.event.keyCode;

    if (key === 13) {
        send()


    }

}


/*
scripy base de datos

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuarios` (
  `idUsuarios` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idUsuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mensaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mensaje` (
  `idMensaje` INT NOT NULL,
  `texto` VARCHAR(45) NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  `Usuarios_idUsuarios1` INT NOT NULL,
  PRIMARY KEY (`idMensaje`, `Usuarios_idUsuarios`, `Usuarios_idUsuarios1`),
  INDEX `fk_Mensaje_Usuarios_idx` (`Usuarios_idUsuarios` ASC),
  INDEX `fk_Mensaje_Usuarios1_idx` (`Usuarios_idUsuarios1` ASC),
  CONSTRAINT `fk_Mensaje_Usuarios`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `mydb`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Mensaje_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios1`)
    REFERENCES `mydb`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
*/
