require 'active_record'
require File.dirname(__FILE__) + '/rails_validators/constants'
require File.dirname(__FILE__) + '/rails_validators/validates_cep_format_of'
require File.dirname(__FILE__) + '/rails_validators/validates_cnpj_format_of'
require File.dirname(__FILE__) + '/rails_validators/validates_cpf_format_of'
require File.dirname(__FILE__) + '/rails_validators/validates_email_format_of'
require File.dirname(__FILE__) + '/rails_validators/validates_url_format_of'

module RailsValidators
  autoload :Cep, 'rails_validators/cep'
  autoload :Cnpj, 'rails_validators/cnpj'
  autoload :Cpf, 'rails_validators/cpf'
end
