-- ============================================================
-- item_variant migration
-- Run this against craftcottage_bwn_db
-- ============================================================

-- 1. Create item_variant table
CREATE TABLE `item_variant` (
  `sku_id`      VARCHAR(50) NOT NULL,
  `item_id`     VARCHAR(10) NOT NULL,
  `size`        VARCHAR(30) DEFAULT NULL,
  `color`       VARCHAR(30) DEFAULT NULL,
  `unit_mrp`    FLOAT UNSIGNED NOT NULL,
  `unit_price`  FLOAT UNSIGNED NOT NULL,
  `stock`       SMALLINT UNSIGNED NOT NULL DEFAULT 0,
  `active`      TINYINT(1) NOT NULL DEFAULT 1,
  `created_on`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sku_id`),
  KEY `item_variant_item_id_idx` (`item_id`),
  CONSTRAINT `item_variant_item_fk` FOREIGN KEY (`item_id`) REFERENCES `item`(`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 2. Add sku_id and variant_label to order_item, then widen the PK
ALTER TABLE `order_item`
  ADD COLUMN `sku_id`        VARCHAR(50)  NOT NULL DEFAULT '',
  ADD COLUMN `variant_label` VARCHAR(100) NOT NULL DEFAULT '',
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`order_id`, `item_id`, `sku_id`);
