# encoding: utf-8
class CreateInternTag < ActiveRecord::Migration
  def up
    execute "CREATE TABLE `intern_tags` (
      `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
      `intern_id` int(10) unsigned NOT NULL DEFAULT '0',
      `created_at` datetime DEFAULT NULL,
      `updated_at` datetime DEFAULT NULL,
      UNIQUE KEY `intern_id_tag_id_unique_idx`(`intern_id`, `tag_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci"
  end
  def down
    drop_table :intern_tags
  end
end
