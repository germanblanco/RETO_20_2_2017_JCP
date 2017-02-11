# RETO_20_2_2017_JCP

Esta tarea consiste en crear un interprete de Zeppelin para Presto y otro para MySQL, preparar los parametros de conexion para que funcionen los interpretes de Presto y de MySQL y crear un docker en el que estos interpretes aparezcan sin necesidad de hacer pasos adicionales (vengan ya configurados al arrancar Zeppelin en el docker). Se supone que los nuevos interpretes pueden ser creado usando el driver JDBC basico de Zeppelin (ver http://thedataist.com/tutorial-using-apache-zeppelin-with-mysql/).

En este repositorio hay un docker-compose.yml con el que se levanta una base de datos MySQL, un Presto conectado a esa base de datos y un Zeppelin en el que aun no estan configurados los interpretes. El objetivo es modificar la imagen de docker de Zeppelin para que incluya el interprete de MySQL y el de Presto. Por favor, cuando este terminada la tarea, hacer un Pull Request a este repositorio.

Suerte!
