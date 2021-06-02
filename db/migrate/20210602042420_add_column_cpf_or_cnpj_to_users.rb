class AddColumnCpfOrCnpjToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cpf_or_cnpj, :string, unique: true
  end
end
