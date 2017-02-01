class CreateUsersCustoms < ActiveRecord::Migration[5.0]
  def change
    	add_column :users, :cpf, :string, null: false, :limit => 11
    	add_column :users, :dtnasc, :datetime, null: false
		add_column :users, :nome, :string, null: false, :limit => 100
		add_column :users, :sexo, :string, null: false, :limit => 1
		add_column :users, :telefone, :string, null: true, :limit => 10
		add_column :users, :celular, :string, null: false, :limit => 11
		add_column :users, :cep, :string, null: false, :limit => 8
		add_column :users, :endereco, :string, null: false, :limit => 200
		add_column :users, :complemento, :string, null: true, :limit => 100
		add_column :users, :cidade, :string, null: false, :limit => 100
		add_column :users, :bairro, :string, null: false, :limit => 100
  end
end
