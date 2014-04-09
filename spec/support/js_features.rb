RSpec.configure do |config|

  config.before(:each) do

    expect(page_.not_to have_errors) if example.metadata[:js]

  end

  config.after(:each) do

    expect(page_.not_to have_errors) if example.metadata[:js]

  end

  end
