class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :request_nr
      t.string :request_version
      t.references :task
      t.string :request_beschreibung
      t.string :itsg_fachlich
      t.string :itsg_teschnisch
      t.string :gkv_fachlich
      t.string :gkv_technisch
      t.string :teradata_fachlich
      t.string :teradata_technisch
      t.string :kostenstelle
      t.string :sonderstatus
      t.date :analyse_und_design
      t.date :fachl_freigabe_implementierung
      t.date :fachl_freigabe_implementierung
      t.date :fachl_freigabe_implementierung
      t.date :abnahme_teradata
      t.date :abnahme_fachlich_gkv
      t.date :abnahme_technisch_itsg
      t.date :migration_produktion
      t.date :ziel_migration

      t.timestamps
    end
    add_index :requests, :task_id
  end
end
