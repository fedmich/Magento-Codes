-- Tested on Magento 1.7
SET @SALT = "SALT!!";
UPDATE admin_user
SET `password` = CONCAT(MD5(CONCAT( @SALT , "p@ssw0rD123") ), CONCAT(":", @SALT ))
WHERE username = 'mage'