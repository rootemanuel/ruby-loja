class ProdutosController < ApplicationController
	respond_to :json

	before_action :authenticate_user!, :except => [:produtos,:teste]

	def produtos
		@produtos = Produto.all
	end

	def teste
	end
	
end
