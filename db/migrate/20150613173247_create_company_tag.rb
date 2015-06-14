# encoding: utf-8
class CreateCompanyTag < ActiveRecord::Migration
  def up
    execute "CREATE TABLE `company_tags` (
      `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
      `company_id` int(10) unsigned NOT NULL DEFAULT '0',
      `created_at` datetime DEFAULT NULL,
      `updated_at` datetime DEFAULT NULL,
      UNIQUE KEY `company_id_tag_id_unique_idx`(`company_id`, `tag_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci"
  end
  def down
    drop_table :company_tags
  end
end
