class TarefasController < ApplicationController

  # GET /tarefas or /tarefas.json
  def index
    @tarefas = Tarefa.all
  end

  # GET /tarefas/1 or /tarefas/1.json
  def show
    # app/views/:nome_do_controller/:nome_da_acao.html.erb
    @pais = params[:pais]
    @cidade = params[:c]
    @tarefa = Tarefa.find(params[:id])
    # raise params.inspect
  end

  # GET /tarefas/new
  def new
    @tarefa = Tarefa.new
  end

  # GET /tarefas/1/edit
  def edit
    @tarefa = Tarefa.find(params[:id])
  end

  # POST /tarefas or /tarefas.json
  def create
    @tarefa = Tarefa.new(tarefa_params)

    respond_to do |format|
      if @tarefa.save
        format.html { redirect_to @tarefa, notice: "Tarefa criada com sucesso!" }
        format.json { render :show, status: :created, location: @tarefa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarefas/1 or /tarefas/1.json
  def update
    @tarefa = Tarefa.find(params[:id])

    if @tarefa.update(tarefa_params)
      redirect_to @tarefa, notice: "Tarefa editada com sucesso!"
    else
      # app/views/tarefas/edit.html.erb
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /tarefas/1 or /tarefas/1.json
  def destroy
    @tarefa = Tarefa.find(params[:id])
    @tarefa.destroy
    redirect_to tarefas_url, notice: "Parabéns por concluir mais uma tarefa!"
  end

  private

    # Only allow a list of trusted parameters through.
    def tarefa_params
      params.require(:tarefa).permit(:nome, :descricao, :inicio, :previsao, :status)
    end
end
