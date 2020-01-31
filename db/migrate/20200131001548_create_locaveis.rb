class CreateLocaveis < ActiveRecord::Migration[6.0]
  def change
    create_table :locaveis do |t|
      t.string :nome
      t.text :endereco
      t.decimal :preco
      t.string :email

      t.timestamps
    end
  end
end
