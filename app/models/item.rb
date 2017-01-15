class Item < ApplicationRecord
  belongs_to :todo_list

  def get_state
    if self.done == "1"
      $result = 'not quite done!'
    else
       $result =  'lots to do!'
    end
    $result
  end
end
