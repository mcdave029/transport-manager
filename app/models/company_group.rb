# == Schema Information
#
# Table name: company_groups
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CompanyGroup < ApplicationRecord
end
