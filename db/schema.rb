# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171017132438) do

  create_table "home_sections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "default_name"
    t.string "title"
    t.string "subtitle"
    t.string "link_text"
    t.string "link_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homefeatures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.string "subtitle"
    t.string "link_text"
    t.string "link_path"
    t.string "testimonial_image_file_name"
    t.string "testimonial_image_content_type"
    t.integer "testimonial_image_file_size"
    t.datetime "testimonial_image_updated_at"
    t.string "testimonila_remarks"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "image_text"
    t.string "testimonila_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managedbyqcomments", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "author"
    t.string "author_email"
    t.string "author_url"
    t.string "author_IP"
    t.text "content"
    t.string "approved", default: "pending"
    t.string "agent"
    t.string "typee"
    t.integer "comment_parent"
    t.integer "post_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["approved"], name: "index_managedbyqcomments_on_approved"
    t.index ["comment_parent"], name: "index_managedbyqcomments_on_comment_parent"
    t.index ["post_id"], name: "index_managedbyqcomments_on_post_id"
    t.index ["user_id"], name: "index_managedbyqcomments_on_user_id"
  end

  create_table "managedbyqcustom_fields", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "object_class"
    t.string "name"
    t.string "slug"
    t.integer "objectid"
    t.integer "parent_id"
    t.integer "field_order"
    t.integer "count", default: 0
    t.boolean "is_repeat", default: false
    t.text "description"
    t.string "status"
    t.index ["object_class"], name: "index_managedbyqcustom_fields_on_object_class"
    t.index ["objectid"], name: "index_managedbyqcustom_fields_on_objectid"
    t.index ["parent_id"], name: "index_managedbyqcustom_fields_on_parent_id"
    t.index ["slug"], name: "index_managedbyqcustom_fields_on_slug"
  end

  create_table "managedbyqcustom_fields_relationships", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "objectid"
    t.integer "custom_field_id"
    t.integer "term_order"
    t.string "object_class"
    t.text "value", limit: 4294967295
    t.string "custom_field_slug"
    t.integer "group_number", default: 0
    t.index ["custom_field_id"], name: "index_managedbyqcustom_fields_relationships_on_custom_field_id"
    t.index ["custom_field_slug"], name: "index_managedbyqcustom_fields_relationships_on_custom_field_slug"
    t.index ["object_class"], name: "index_managedbyqcustom_fields_relationships_on_object_class"
    t.index ["objectid"], name: "index_managedbyqcustom_fields_relationships_on_objectid"
  end

  create_table "managedbyqmetas", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "key"
    t.text "value", limit: 4294967295
    t.integer "objectid"
    t.string "object_class"
    t.index ["key"], name: "index_managedbyqmetas_on_key"
    t.index ["object_class"], name: "index_managedbyqmetas_on_object_class"
    t.index ["objectid"], name: "index_managedbyqmetas_on_objectid"
  end

  create_table "managedbyqposts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "slug"
    t.text "content", limit: 4294967295
    t.text "content_filtered", limit: 4294967295
    t.string "status", default: "published"
    t.datetime "published_at"
    t.integer "post_parent"
    t.string "visibility", default: "public"
    t.text "visibility_value"
    t.string "post_class", default: "Post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "post_order", default: 0
    t.integer "taxonomy_id"
    t.boolean "is_feature", default: false
    t.index ["post_class"], name: "index_managedbyqposts_on_post_class"
    t.index ["post_parent"], name: "index_managedbyqposts_on_post_parent"
    t.index ["slug"], name: "index_managedbyqposts_on_slug"
    t.index ["status"], name: "index_managedbyqposts_on_status"
    t.index ["user_id"], name: "index_managedbyqposts_on_user_id"
  end

  create_table "managedbyqterm_relationships", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "objectid"
    t.integer "term_order"
    t.integer "term_taxonomy_id"
    t.index ["objectid"], name: "index_managedbyqterm_relationships_on_objectid"
    t.index ["term_order"], name: "index_managedbyqterm_relationships_on_term_order"
    t.index ["term_taxonomy_id"], name: "index_managedbyqterm_relationships_on_term_taxonomy_id"
  end

  create_table "managedbyqterm_taxonomy", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "taxonomy"
    t.text "description", limit: 4294967295
    t.integer "parent_id"
    t.integer "count"
    t.string "name"
    t.string "slug"
    t.integer "term_group"
    t.integer "term_order"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["parent_id"], name: "index_managedbyqterm_taxonomy_on_parent_id"
    t.index ["slug"], name: "index_managedbyqterm_taxonomy_on_slug"
    t.index ["taxonomy"], name: "index_managedbyqterm_taxonomy_on_taxonomy"
    t.index ["term_order"], name: "index_managedbyqterm_taxonomy_on_term_order"
    t.index ["user_id"], name: "index_managedbyqterm_taxonomy_on_user_id"
  end

  create_table "managedbyqusers", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "role", default: "client"
    t.string "email"
    t.string "slug"
    t.string "password_digest"
    t.string "auth_token"
    t.string "password_reset_token"
    t.integer "parent_id"
    t.datetime "password_reset_sent_at"
    t.datetime "last_login_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "site_id", default: -1
    t.string "confirm_email_token"
    t.datetime "confirm_email_sent_at"
    t.boolean "is_valid_email", default: true
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_managedbyqusers_on_email"
    t.index ["role"], name: "index_managedbyqusers_on_role"
    t.index ["site_id"], name: "index_managedbyqusers_on_site_id"
    t.index ["username"], name: "index_managedbyqusers_on_username"
  end

  create_table "offices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "company_name"
    t.integer "zipcode"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "accept_legal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plugins_contact_forms", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "site_id"
    t.integer "count"
    t.integer "parent_id"
    t.string "name"
    t.string "slug"
    t.text "description"
    t.text "value"
    t.text "settings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quote_person"
    t.text "quote_text"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
