DELIMITER ;;
DROP PROCEDURE IF EXISTS migrate;;
CREATE PROCEDURE migrate ()
BEGIN
    DECLARE CONTINUE HANDLER FOR 1060 BEGIN END;
    ALTER TABLE codereview_patch ADD COLUMN old_filename VARCHAR (500);
END;;
CALL migrate();;
