DROP PROCEDURE IF EXISTS CUSTOMER_DB.get_cust_name_grade_opre_amt_gt_10000;

DELIMITER $$

CREATE PROCEDURE CUSTOMER_DB.get_cust_name_grade_opre_amt_gt_10000()
BEGIN
	SELECT cust_name, grade
    FROM customer
    WHERE opening_amt+receive_amt>10000;
END$$

DELIMITER ;

CALL CUSTOMER_DB.get_cust_name_grade_opre_amt_gt_10000();

