# frozen_string_literal: true

title 'Test AliCloud Server Load Balancers in bulk'

control 'alicloud-slbs-1.0' do
  impact 1.0
  title 'Ensure AliCloud server load balancers plural resource has the correct properties.'

  # Verify that you have server load balancers defined
  describe alicloud_slbs do
    it { should exist }
  end

  # Verify you have more than the default security group
  describe alicloud_slbs do
    its('entries.count') { should be > 1 }
  end
end
