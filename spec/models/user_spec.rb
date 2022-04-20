require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {
      User.new(email: "testAddr@gmail.com",
               password: "password123")
  }
  
  #checking non valid 1st
  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid  
  end  
  
  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid  
  end  

  #checking valid 2nd
  it "is valid with an email and password" do
    expect(subject).to be_valid  
  end

  
end
