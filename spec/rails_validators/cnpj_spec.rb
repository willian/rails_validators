require "spec_helper"

describe "RailsValidators::Cnpj" do
  VALID_CNPJS.each do |cnpj_number|
    it "should accept #{cnpj_number} as a valid cnpj" do
      RailsValidators::Cnpj.valid?(cnpj_number).should be_true
    end
  end

  INVALID_CNPJS.each do |cnpj_number|
    it "should reject #{cnpj_number} as a valid cnpj" do
      RailsValidators::Cnpj.valid?(cnpj_number).should be_false
    end
  end
end
