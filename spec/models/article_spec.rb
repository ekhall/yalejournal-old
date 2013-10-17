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

require 'spec_helper'

describe Article do
  it { should validate_presence_of :name }
  it { should validate_presence_of :journal }
  
  it { should have_many :suggests }
  it { should have_one(:user).through(:suggests) }
end
