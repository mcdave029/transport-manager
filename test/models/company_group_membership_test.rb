# == Schema Information
#
# Table name: company_group_memberships
#
#  id               :bigint           not null, primary key
#  memberable_type  :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  company_group_id :bigint           not null
#  memberable_id    :bigint           not null
#
# Indexes
#
#  index_company_group_memberships_on_company_group_id  (company_group_id)
#  index_company_group_memberships_on_type_and_id       (memberable_type,memberable_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_group_id => company_groups.id)
#
require 'test_helper'

# Group of company model test
class CompanyGroupMembershipTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:company_group)
    should belong_to(:memberable)
  end

  context 'validations' do
    should validate_inclusion_of(:memberable_type)
      .in_array(CompanyGroupMembership::MEMBERABLE_TYPES)
  end
end
