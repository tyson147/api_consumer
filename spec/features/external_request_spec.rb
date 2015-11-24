require 'rails_helper'

feature 'Mock external request' do
  it 'queries my API' do
  	fakeconnection = FakeConnection.new
	response = JSON.parse(fakeconnection.response)
  	expect(response.first["first_name"]).to eq "Richie"
  end
end