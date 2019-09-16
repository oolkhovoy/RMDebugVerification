require 'singleton'

class SingletonClass
  include Singleton

  def initialize
    puts "singleton created"
  end

  def shout
    puts "inside singleton"
  end
end

