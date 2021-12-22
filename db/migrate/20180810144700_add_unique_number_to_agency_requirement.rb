class AddUniqueNumberToAgencyRequirement < ActiveRecord::Migration
  def change
    add_column :agency_requirements, :unique_number, :text, {null: false}
    set_column_comment :agency_requirements, :unique_number, "autogenerated unique identifier that can be used to refer to an agency requirement, in the format of <A-Z><A-Z><timestamp><A-Z> (two uppercase letters followed by a timestamp number followed by an uppercase letter)"
  end
end
