DROP PROCEDURE IF EXISTS get_cust_names_from_area;

DELIMITER $$

CREATE PROCEDURE get_cust_names_from_area (
	IN  city VARCHAR(100)
)
BEGIN
	SELECT cust_name
    FROM customer
    where working_area=city;
END$$

DELIMITER ;

CALL get_cust_names_from_area("Bangalore");

