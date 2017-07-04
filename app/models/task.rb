class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :connection

 def initialise()
      super
  end

end
