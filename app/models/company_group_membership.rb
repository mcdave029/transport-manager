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
class CompanyGroupMembership < ApplicationRecord
  include StringEnum

  enum_init memberable_type: %w[Admin Driver Mechanic]

  belongs_to :company_group
  belongs_to :memberable, polymorphic: true
end
