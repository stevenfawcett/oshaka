class Project < ApplicationRecord
     has_many :collaborations
     has_many :users , :through => :collaborations

   attr_accessor :available ,  :selected

       def available
           @available
       end
       def available=(val)
            @available = val
       end
   
       def selected
           @selected
       end
       def selected=(val)
            @selected = val
       end
   
end
