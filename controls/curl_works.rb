curl_test = attribute('curl_test', default: '/bin/curl Sleeping /hab/svc/curl/hooks/run')

describe bash(curl_test) do
  its('stdout') { should match /echo "Sleeping ..."/ }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end
