# Configure VCR here:
#
VCR.configure do |c|
  c.cassette_library_dir = 'tests/fixtures/vcr'
  c.hook_into :webmock
  c.default_cassette_options = {
    :record => :new_episodes,
    :match_requests_on => [ :method, :path, :query ]
  }
  c.before_record do |r|
    u = URI.parse(r.request.uri)
    u.user = 'fakeuser'
    u.password = 'fakepassword'
    r.request.uri = u.to_s
  end
end
