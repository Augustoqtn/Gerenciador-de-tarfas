class Tarefa < ApplicationRecord
    validates_presence_of :nome
    validates_presence_of :descricao
    validates_presence_of :inicio
    validates_presence_of :status
end
