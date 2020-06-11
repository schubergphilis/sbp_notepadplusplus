describe package('Notepad') do
  it { should be_installed }
  its('version') { should eq '7.8.4' }
end
