class Request < ActiveRecord::Base
  belongs_to :task
  attr_accessible :task_attributes, :task_id
  #attr_accessible :req_use, :req_new
  attr_accessible :abnahme_fachlich_gkv, :abnahme_technisch_itsg, :abnahme_teradata, :analyse_und_design, :fachl_freigabe_implementierung, :fachl_freigabe_implementierung, :fachl_freigabe_implementierung, :gkv_fachlich, :gkv_technisch, :itsg_fachlich, :itsg_teschnisch, :kostenstelle, :migration_produktion, :request_beschreibung, :request_nr, :request_version, :sonderstatus, :teradata_fachlich, :teradata_technisch, :ziel_migration
  accepts_nested_attributes_for :task
  #attr_accessor :req_use, :req_new, :req_tmp
  

end


