curl_path = attribute('curl_path', default: '/bin/curl')

describe file(curl_path) do
  it { should exist }
end
