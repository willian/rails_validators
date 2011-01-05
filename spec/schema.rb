ActiveRecord::Schema.define(:version => 0) do
  create_table :users do |t|
    t.string :email, :cpf, :zipcode
  end

  create_table :companies do |t|
    t.string :cnpj, :url
  end
end
