class Update8AExpiryDateTo9Years < ActiveRecord::Migration
  def change
    eight_a = CertificateType.get('eight_a')
    eight_a.update_attributes type: "CertificateType::EightA", duration_in_days: 3286, wait_period_in_days: 90, renewal_period_in_days: 365
    DataUpdates::EightAExpiry.new.update!
  end
end
