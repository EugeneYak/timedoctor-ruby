RSpec.describe TimeDoctor::Core::WebAndApp do
  let!(:list_stub) do
    stub_request(:get, "#{entry}/v1.1/companies/#{company_id}/webandapp" \
                       "?_format=json&access_token=#{token}")
      .to_return(response)
  end

  it '.list' do
    client.list(company_id: company_id)
    expect(list_stub).to have_been_requested
  end
end
