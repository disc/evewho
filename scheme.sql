-- Create syntax for TABLE 'ew_alliances'
CREATE TABLE IF NOT EXISTS `ew_alliances` (
  `alliance_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `memberCount` int(11) DEFAULT NULL,
  `corp_count` int(11) DEFAULT NULL,
  `recalc` int(11) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT NULL,
  `mc_2` int(11) DEFAULT NULL,
  `mc_3` int(11) DEFAULT NULL,
  `mc_4` int(11) DEFAULT NULL,
  `mc_5` int(11) DEFAULT NULL,
  `mc_6` int(11) DEFAULT NULL,
  `mc_7` int(11) DEFAULT NULL,
  `avg_sec_status` float DEFAULT NULL,
  `diff` int(11) DEFAULT NULL,
  PRIMARY KEY (`alliance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1988009452 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'ew_characters'
CREATE TABLE IF NOT EXISTS `ew_characters` (
  `character_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `corporation_id` int(11) unsigned NOT NULL,
  `alliance_id` int(11) unsigned NOT NULL,
  `faction_id` int(11) unsigned NOT NULL,
  `sec_status` float unsigned NOT NULL,
  `history_added` int(11) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT NULL,
  `lastAffUpdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2115749584 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'ew_corporations'
CREATE TABLE IF NOT EXISTS `ew_corporations` (
  `corporation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `memberCount` int(11) unsigned DEFAULT NULL,
  `diff` int(11) DEFAULT NULL,
  `recalc` int(11) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT NULL,
  `avg_sec_status` float DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `mc_2` int(11) unsigned DEFAULT NULL,
  `mc_3` int(11) unsigned DEFAULT NULL,
  `mc_4` int(11) unsigned DEFAULT NULL,
  `mc_5` int(11) unsigned DEFAULT NULL,
  `mc_6` int(11) unsigned DEFAULT NULL,
  `mc_7` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`corporation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2082062387 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'ew_history'
CREATE TABLE IF NOT EXISTS `ew_history` (
  `character_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `corp_number` int(11) DEFAULT NULL,
  `corporation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2115749584 DEFAULT CHARSET=utf8;