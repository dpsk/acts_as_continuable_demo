require 'acts_as_continuable/class_macros'
require 'acts_as_continuable/wrapper'
require 'acts_as_continuable/action'

# :include: README.rdoc

module ActsAsContinuable
  def self.included(c) #:nodoc:
    class << c
      include ClassMacros
    end
  end
end
