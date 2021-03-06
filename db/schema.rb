# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_190_714_103_256) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'blogs', force: :cascade do |t|
    t.string 'title'
    t.bigint 'user_id'
    t.text 'body'
    t.string 'image'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_blogs_on_user_id'
  end

  create_table 'cars', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'title'
    t.string 'image'
    t.string 'icon'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'connections', force: :cascade do |t|
    t.integer 'sender_id'
    t.integer 'recipient_id'
    t.boolean 'accepted', default: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'conversations', force: :cascade do |t|
    t.integer 'sender_id'
    t.integer 'recipient_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'event_categories', force: :cascade do |t|
    t.bigint 'event_id'
    t.bigint 'category_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['category_id'], name: 'index_event_categories_on_category_id'
    t.index ['event_id'], name: 'index_event_categories_on_event_id'
  end

  create_table 'events', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.string 'address'
    t.datetime 'date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id'
    t.bigint 'location_id'
    t.index ['location_id'], name: 'index_events_on_location_id'
    t.index ['user_id'], name: 'index_events_on_user_id'
  end

  create_table 'locations', force: :cascade do |t|
    t.string 'city'
    t.decimal 'latitude'
    t.decimal 'longitude'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'messages', force: :cascade do |t|
    t.text 'body'
    t.bigint 'conversation_id'
    t.bigint 'user_id'
    t.boolean 'read', default: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['conversation_id'], name: 'index_messages_on_conversation_id'
    t.index ['user_id'], name: 'index_messages_on_user_id'
  end

  create_table 'participations', force: :cascade do |t|
    t.bigint 'user_id'
    t.bigint 'event_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['event_id'], name: 'index_participations_on_event_id'
    t.index ['user_id'], name: 'index_participations_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'first_name'
    t.string 'last_name'
    t.string 'title'
    t.text 'description'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'blogs', 'users'
  add_foreign_key 'event_categories', 'categories'
  add_foreign_key 'event_categories', 'events'
  add_foreign_key 'events', 'locations'
  add_foreign_key 'events', 'users'
  add_foreign_key 'participations', 'events'
  add_foreign_key 'participations', 'users'
end
