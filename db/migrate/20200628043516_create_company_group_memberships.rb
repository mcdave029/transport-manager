class CreateCompanyGroupMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :company_group_memberships do |t|
      t.references :company_group, null: false, foreign_key: true
      t.references :memberable, polymorphic: true, null: false,
                                index: { name: :index_company_group_memberships_on_type_and_id }

      t.timestamps
    end
  end
end
