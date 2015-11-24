class FakeConnection 

	attr_reader :url
	API_BASE_URL = "http://localhost:3000/api/users"

	def initialize
		WebMock.stub_request(:get, /localhost:3000/).
		with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: File.read('spec/support/fixtures/users.json'), headers: {})
  end  

  def response 
  	Net::HTTP.get( URI(API_BASE_URL) )
  end

end