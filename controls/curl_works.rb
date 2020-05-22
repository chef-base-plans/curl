curl_test = attribute('curl_test', default: '/bin/curl --version')

describe bash(curl_test) do
  its('stdout') { should match /Protocols/ }
end
