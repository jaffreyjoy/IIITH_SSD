DROP PROCEDURE IF EXISTS add_nums;

DELIMITER $$

CREATE PROCEDURE add_nums (
	IN  a INT,
	IN  b INT,
	OUT total INT
)
BEGIN
	SELECT a+b
	INTO total;
END$$

DELIMITER ;

CALL add_nums(60,9,@total);
SELECT @total;
