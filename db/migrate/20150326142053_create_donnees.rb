class CreateDonnees < ActiveRecord::Migration
  def change
  	create_table :donnees do |t|
  		t.string :nom
  		t.string :prenom
  		t.string :adresse
  	end
  end
end
