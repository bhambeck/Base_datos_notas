# Base_datos_notas
Entregable Base de Datos DH


## DIAGRAMA
La base de datos de notas contiene 4 tablas. 

La primera USUARIOS contiene los datos personales del usuario (nombre, apellido y e-mail). A su vez el id del usuario es clave foranea para la tabla NOTAS ya que una nota pertence a un unico usuario, pero un usuario puede crear, modificar o eliminar muchas notas. 

La tabla NOTAS contiene datos de la nota como título, contenido, usuario al que pertenece, fecha de creación, modificación, posibilidad de ser eliminada (es un TinyInt donde 1 es que es posible eliminarla y 0 no lo es) y su id. 

Como cada nota puede tener varias CATEGORIAS y cada categoría estar presente en muchas NOTAS, fue necesario crear una tabla pivot NOTAS_CATEGORIAS vinculando ambas PKs.

Por último una tabla simple de CATEGORIAS que contiene las diferentes categorías que pueden aparecer en una nota. 


## SCRIPT
El script se realizó siguiendo el diagrama propuesto. Algunas veces me encontré con problemas de orden en la creación de los registros, ya que si no se definia una clave foránea previamente, no se puede generar el registro que la utiliza. 
