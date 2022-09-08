DROP PROCEDURE IF EXISTS add_nums;

DELIMITER $$

CREATE PROCEDURE cust_agent_a00 ()
BEGIN
	DECLARE finis INTEGER default 0;
	DECLARE cgrade decimal(10,0);
    DECLARE cname, ccity, ccountry VARCHAR(100);
    DECLARE curse CURSOR FOR
        select
            cust_name
            , cust_city
            , cust_country
            , grade
        from customer
        where agent_code like "A00%";
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finis=1;
    OPEN curse;
    loco: LOOP
        FETCH curse INTO cname, ccity, ccountry, cgrade;
        IF finis=1 THEN LEAVE loco;
        END IF;

        select cname, ccity, ccountry, cgrade;
    END LOOP;
    CLOSE curse;
END$$

DELIMITER ;

CALL cust_agent_a00();