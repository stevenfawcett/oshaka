class Task < ApplicationRecord
  belongs_to :project
  belongs_to :connection

end
