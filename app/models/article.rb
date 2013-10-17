# == Schema Information
#
# Table name: articles
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  presentation_date     :date
#  journal               :string(255)
#  publication_date      :date
#  presentation_comments :text
#  created_at            :datetime
#  updated_at            :datetime
#

class Article < ActiveRecord::Base
  validates :name, presence: true
  validates :journal, presence: true
end
