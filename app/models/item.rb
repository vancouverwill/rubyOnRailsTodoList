class Item < ApplicationRecord
  belongs_to :todo_list

  def get_state
    if self.done == true
      $result = 'Done!'
    else
       $result =  'lots to do!'
    end
    $result
  end
end
