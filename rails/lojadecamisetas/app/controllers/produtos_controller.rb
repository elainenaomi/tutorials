class ProdutosController < ApplicationController
    before_action :set_produto, only: [:edit, :update, :destroy]

	def index
		@produtos_por_nome = Produto.order(:nome).limit 3
		@produtos_por_preco = Produto.order(:preco).limit 2
	end

	def new
		@produto = Produto.new
		renderiza_new
	end
	
	def create
		valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade, :departamento_id
	    @produto = Produto.new valores
	    if @produto.save
	    	flash[:notice] = "Produto salvo com sucesso"
	        redirect_to root_url
	    else
	       renderiza_new
	    end
	end

	def edit
	   renderiza_new
	end

	def update
	    if @produto.update produto_params    #observa cada valor e os atualiza
	        flash[:notice] = "Produto atualizado com sucesso"    #dando certo, aparece a mensagem
	        redirect_to root_url    #volta para a página inicial
	    else
	        renderiza_new
	    end
	end

	def destroy
    	@produto.destroy
    	redirect_to root_url
	end

	def busca
		@nome_a_buscar = params[:nome]
    	@produtos = Produto.where "nome like ?", "%#{@nome_a_buscar}%"
	end

	private

	def renderiza_new
	    @departamentos = Departamento.all
	    render :new
	end

	def set_produto
    	id = params[:id]
    	@produto = Produto.find(id)
	end

	def produto_params
	    params.require(:produto).permit :nome, :preco, :descricao, :quantidade, :departamento_id
	end
end
