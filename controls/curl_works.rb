curl_test = input('curl_test', value: '/bin/curl --version')

describe bash(curl_test) do
  its('stdout') { should match /Protocols/ }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end
