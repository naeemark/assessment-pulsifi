CREATE TABLE `profile` (
`profile_id` varchar(11) NOT NULL,
`first_name` varchar(255) NULL,
`last_name` varchar(255) NULL,
PRIMARY KEY (`profile_id`) 
);
CREATE TABLE `contact` (
`contact_id` int(11) NOT NULL AUTO_INCREMENT,
`mobile` varchar(255) NULL,
`email` varchar(255) NULL,
`profile_id` int(11) NOT NULL,
PRIMARY KEY (`contact_id`) 
);
CREATE TABLE `social_media` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`media` varchar(255) NULL,
`account_name` varchar(255) NULL,
`active_since` date NULL,
`profile_id` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `work_experience` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`job_title` varchar(255) NULL,
`organization_id` int(255) NULL,
`organization_name` varchar(255) NULL,
`started_at` date NULL,
`ended_at` date NULL,
`current_job` bit(1) NULL,
`profile_id` varchar(255) NOT NULL,
PRIMARY KEY (`id`) 
);

-- ALTER TABLE `contact` ADD CONSTRAINT `fk-contact_profile` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;
-- ALTER TABLE `social_media` ADD CONSTRAINT `fk_social_media_profile` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;
-- ALTER TABLE `work_experience` ADD CONSTRAINT `fk_work_experience_profile` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

