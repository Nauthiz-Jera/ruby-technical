# frozen_string_literal: true

RSpec.describe Hello do
  it "can run tests" do
    expect(true).to eq(true)
  end

  it "can say hello" do
    expect { Hello.say_hello("Sean") }.to output("Hello Sean\n").to_stdout
  end

  it "can say bye" do
    instance = Hello.new
    expect { instance.say_bye("Sean") }.to output("Bye Sean\n").to_stdout
  end
end
