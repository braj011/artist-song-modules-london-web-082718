module Findable

  module ClassMethod

    def find_by_name(name)
      self.all.detect { |ele_name| ele_name.name ==name }
    end


  end



end
