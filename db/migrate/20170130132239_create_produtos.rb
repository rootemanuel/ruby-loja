class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
		
	t.string :nome
     	t.string :descricao
      	t.decimal :preco

      	t.timestamps
    end
  end
end
