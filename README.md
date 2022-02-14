# books-challenge
Aplicación basada en Express + EJS para la practica de ejercicios de CRUD

## Levantando la app
1. Primero se debe hacer un `fork` de este repositorio con el botón que encontramos arriba a la derecha y clonarlo en tu computadora. Asi podras trabajar con tu propia versión del repositorio.
2. Conectarse a MySQL y correr el script de creación de la base de datos llamado `books-db.sql`
3. Instalar las dependencias con el comando `npm install`
4. De ser necesario, actualizar las credenciales de la base de datos en el archivo `src/database/config`
5. Levantar la aplicación con el comando `npm run start` o `npm run test` si quieren trabajar con nodemon

## Explorando la app
La app tiene 3 secciones principales
* Listado de libros: se muestra el titulo y los autores de todos los libros de la base de datos. Al hacer click en alguno nos muestra el detalle del libro.
  * Detalle de libro: muestra información detallada de cada uno de los libros. Los botones de edicion y borrado se muestran solo para un usuario administrador.
  * Edición de libro: formulario para editar los campos de un lbro.
* Busqueda de libros: tenemos un campo de busqueda para poder buscar libros por su titulo.
* Listado de autores: muestra el nombre de cada uno de los autores. Al hacer click en alguno nos lleva a el listado de libros de ese autor.
  * Libros de un determinado autor: nos muestra un listado de libros que corresponden a un autor en particular.
* Login: vista para ingresar a la aplicación.
* Registro: vista para crear un nuevo usuario. 

## Desafios
1. Implementar la vista de detalle de un libro. Para ello debemos buscar en la base de datos el libro cuyo Id sea igual al que se envia por parametro en la ruta de nuestro endpoint y actualizar la vista `bookDetail.ejs` para recibir y mostrar estos datos.
2. Busqueda de libros: Desarrollar la funcionalidad de busqueda, para esto utilizaremos el formulario de busqueda que se encuentra en la vista de `search.ejs`. Debemos escuchar las peticiones POST sobre la ruta `/books/search` y con el campo `title` del body buscar en la base de datos los libros que tengan un titulo similar.
3. Libros de un autor: implementar la vista de `authorBooks.ejs` a la cual llegamos haciendo click en un autor, esta vista debera listar todos los libros de un determinado autor en particular, leyendo su Id por parametro.
4. Edicion de libros: Implementar el formulario de edicion de libros, tener en cuenta que solo un usuario administrador debera tener acceso a esta funcionalidad (ocultar el boton para usuarios comunes).
5. Eliminacion de libros: Implementar el boton de eliminación en el detalle de libros, tener en cuenta que solo los usuarios administradores pueden realizar esta accion.
6. Login y logout: Implementar la funcionalidad de login. Tener en cuenta:
   - El email debe estar registrado en la base de datos.
   - La contraseña debe ser la misma que la que guardamos en la base de datos (recordar que las contraseñas se guardan cifradas asi que deberemos hacer lo mismo para poder compararlas).
   - Al estar logueado debemos ver un botón de logout en lugar del botón de login que cerrará nuestra sesion.
   - Utilizar cookies para recordar el usuario logueado.
   - Distinguir entre usuarios estandar y administradores cuando corresponda según lo mencionado en puntos anteriores.
