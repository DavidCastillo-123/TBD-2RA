DELIMITER $$

CREATE FUNCTION comparar_valores(val1 INT, val2 INT)
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
    
    DECLARE mensaje VARCHAR(50) DEFAULT "Los valores son iguales";
    
    IF val1 > val2 THEN
        SET mensaje = CONCAT(val1, " es mas grande");
    ELSEIF val1 < val2 THEN 
        SET mensaje = CONCAT(val2, " es mas grande");
    END IF;
    
    RETURN mensaje;
END $$

DELIMITER ;