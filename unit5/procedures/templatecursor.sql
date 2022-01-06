DELIMITER //
CREATE PROCEDURE sp_cursorname()
BEGIN
	-- Variable de control para permanecer en el lazo
	DECLARE v_finished INTEGER DEFAULT 0; 
	
	-- Sección de Variables a ser usadas en el fetch
	DECLARE var1, var2 varchar(10) DEFAULT '';
	
	-- Declarar el cursor para iterar las filas del ResultSet
	DEClARE cursor_name CURSOR FOR  
		-- Stament SQL para obtener el ResultSet 1;
	
	-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;

	OPEN cursor_name;
	loop_name: LOOP
		FETCH cursor_name INTO var1, var2, varN;
		IF v_finished = 1 THEN 
			LEAVE loop_name;
		END IF;
		
		-- aqui colocar las sentencias que se ejecutan en cada iteracion
		
	END LOOP loop_name;
	CLOSE cursor_name;
END //
DELIMITER ;
