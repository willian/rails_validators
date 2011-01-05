# encoding: utf-8
# Source: https://github.com/fnando/validators
require "spec_helper"

describe ".validates_email_format_of" do
  before do
    User.validates :email, :email => true
  end

  VALID_EMAILS.each do |email|
    it "should accept #{email.inspect} as a valid email" do
      user = User.new(:email => email)
      user.should be_valid
    end
  end

  INVALID_EMAILS.each do |email|
    it "should reject #{email.inspect} as a valid email" do
      user = User.new(:email => "invalid")
      user.should_not be_valid
    end
  end

  it "should use default error message" do
    user = User.new(:email => "invalid")
    user.should_not be_valid
    user.errors[:email].should == ["is not a valid address"]
  end

  it "should reject nil value" do
    user = User.new(:email => nil)
    user.should_not be_valid
    user.errors[:email].should_not be_empty
  end

  it "should reject empty value" do
    user = User.new(:email => "")
    user.should_not be_valid
    user.errors[:email].should_not be_empty
  end

  it "should use I18n string as error message [pt-BR]" do
    I18n.locale = :'pt-BR'
    user = User.new(:email => "invalid")
    user.should_not be_valid
    user.errors[:email].should == ["não parece ser um e-mail válido"]
  end

  it "should have alias method" do
    User.should respond_to(:validates_email)
  end
end
