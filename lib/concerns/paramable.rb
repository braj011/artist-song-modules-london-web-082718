module Paramable

  module InstanceMethod


    def to_param
      name.downcase.gsub(' ', '-')
      # Returns a copy of str with the all occurrences of pattern substituted for the second argument.
      # https://apidock.com/ruby/String/gsub
    end

  end

end
