# Ejercicios en clases de Stored Procedures

Los siguiente ejercicios están dirigidos a la base de datos “classicmodels”. 

Antes de intentar definir los procedures debe realizar lo siguiente:

* añadir una columna de nombre `numstars` de tipo `smallint` con `default 0` sobre `offices`. Use la siguiente sentencia para agregar la columna

    ```
    ALTER TABLE offices ADD COLUMN numstars SMALLINT DEFAULT 0;
    ```

## Ejercicio 1

Defina un procedure de nombre `sp_two_resultsets(cust_no)` que reciba el id del cliente `cust_no` y retorne dos conjuntos de resultados. 
El primer conjunto de resultados con el schema `(productCode, productName, numsProducts)` con todos los productos que hayan sido ordenados por el cliente con el id `cust_no` que se recibe. La columna `numsProducts` indica el número de productos ordenados. El segundo esquema (nums_pays, total_amounts), debe contener el número de pagos (payments) y el total que ha pagado el mismo cliente. 

## Ejercicio 2

Defina un procedure de nombre `sp_wcursor()` que no recibe parametro alguno, y actualice el nuevo atributo `numstars` de la tabla `offices` con el siguiente algoritmo: 

    * Si la oficina tiene entre 1 y 2 empleados, debe incrementar el numero de estrellas en 1
    * Si la oficina tiene entre 3 y 4 empleados, debe incrementar el numero de estrellas en 2
    * Si la oficina tiene mas de 5 empleados, debe incrementar el numero de estrellas en 3

## Recursos
* `template.sql`: plantilla que incluye la definición de un stored procedure basico que retorna un resultset. 
* `templatecursor.sql`: plantilla que incluye la definición de un stored procedure de ejemplo que contiene un cursor que itera un ResultSet. 