curl_path = input('curl_path', value: '/bin/curl')

describe file(curl_path) do
  it { should exist }
end
