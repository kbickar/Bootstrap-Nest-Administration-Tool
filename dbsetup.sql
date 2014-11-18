CREATE TABLE `data` (
    `record_id` int(11) NOT NULL AUTO_INCREMENT,
    `timestamp` int(5) NOT NULL,
    `timestamp_offset` int(5) NOT NULL,
    `user_id` int(11) NOT NULL,
    `heating` tinyint unsigned NOT NULL,
    `cooling` tinyint unsigned NOT NULL,
    `target` numeric(7,3) NOT NULL,
    `current` numeric(7,3) NOT NULL,
    `humidity` tinyint unsigned NOT NULL,
    `outside_temp` numeric(7,3) NOT NULL,
    `outside_humidity` numeric(7,3) NOT NULL,
    UNIQUE KEY `record_id` (`record_id`)
)
ENGINE=MyIASM DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `user_zip` int(11) NOT NULL,
  `user_location_lat` float(10,6) NOT NULL,
  `user_location_long` float(10,6) NOT NULL,
  `nest_username` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nest user name, unique',
  `nest_password` varchar(64)COLLATE utf8_unicode_ci NOT NULL,
  `scale` varchar(10),
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';