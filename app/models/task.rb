class Task < ActiveRecord::Base
  attr_accessible :task_beschreibung, :task_nr
  #attr_accessible :requests_attributes
  has_many :requests
  validates :task_nr, :uniqueness => true
  #accepts_nested_attributes_for :requests
  #validates :task_name, :presence => true
  scope :by_id, lambda {|task| where('id=?',task)}
  def a_method_used_for_validation_purposes
      errors[:task_name] = "cannot be blank"
    end
   
   def full_task
     [task_nr, task_beschreibung].join(' | ')
   end
end

