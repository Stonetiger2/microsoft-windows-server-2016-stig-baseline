control 'V-73269' do
  title 'The Host Based Security System (HBSS) McAfee Agent must be installed.'
  desc  "The McAfee Agent is the client side distributed component of McAfee
  ePolicy Orchestrator (McAfee ePO), which provides a secure communication
  channel between the ePO server and managed point products."
  impact 0.5
  tag "gtitle": 'SRG-OS-000480-GPOS-00227'
  tag "gid": 'V-73269'
  tag "rid": 'SV-87921r1_rule'
  tag "stig_id": 'WN16-00-000260'
  tag "fix_id": 'F-79713r1_fix'
  tag "cci": ['CCI-000366']
  tag "nist": ['CM-6 b', 'Rev_4']
  tag "documentable": false
  desc "check", "Run Services.msc.
  Verify the service is running, depending on the McAfee Agent version installed.

  McAfee Agent v5.x - McAfee Agent Service

  McAfee Agent v4.x - McAfee Framework Service

  If the service is not listed or does not have a Status of Started, this is
  a finding."
  desc "fix", "Deploy the McAfee Agent as detailed in accordance with the DoD
  HBSS STIG."
  describe.one do
    describe service('McAfee Agent Service') do
      it { should be_running }
    end
    describe service('McAfee Framework Service') do
      it { should be_running }
    end
    describe service('Trend Micro Deep Security Agent') do
      it { should be_running }
    end
  end
end
