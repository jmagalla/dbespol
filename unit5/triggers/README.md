# Ejercicios en clases de Triggers

Los siguientes ejercicios están dirigidos a la base de datos `unidb`. 
Antes de intentar definir los procedures debe realizar lo siguiente:

* añadir un atributo `numadvisor` de tipo `smallint` con `default 0` sobre la tabla `instructor`.
* añadir un atributo `status` de tipo `char(15)` con `default ‘’` sobre la tabla `instructor`.

    Use las siguientes sentencias para agregar las columnas:
    ```
    ALTER TABLE instructor ADD COLUMN numadvisor SMALLINT DEFAULT 0;
    ALTER TABLE instructor ADD COLUMN status CHAR(15) DEFAULT '';
    ```
* actualizar los nuevos atributos con las siguientes sentencias: 
    ```
    UPDATE instructor SET status='active';
    UPDATE instructor i SET numadvisor = (SELECT count(*) FROM advisor a WHERE i.id = a.i_id); 
    ```

## Ejercicio 1

Defina un trigger que cuando cambie el estatus del `instructor` de ‘active’ a ‘jubilado’ establezca el numero de advisor a 0 y que borre los registros relacionados de la tabla advisor.  

## Ejercicio 2

Defina un trigger que cuando se inserte un registro en `advisor` para un `instructor` y un `estudiante` se incremente el número de advisor en 1 del `instructor`.

## Recursos
* `template.sql`: plantilla que incluye la definición de un stored procedure basico que retorna un resultset. 
* `templatecursor.sql`: plantilla que incluye la definición de un stored procedure de ejemplo que contiene un cursor que itera un ResultSet. 