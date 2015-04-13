class Note < ActiveRecord::Base
  include Sortable
  belongs_to :user

  has_many :checklist_items, dependent: :destroy
  has_many :assets, dependent: :destroy

  has_and_belongs_to_many :tags, join_table: 'note_tags'

  has_many :child_notes

end
