json.extract! tarefa, :id, :nome, :descricao, :inicio, :previsao, :status, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
