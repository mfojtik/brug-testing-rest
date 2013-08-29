require 'twitter'

class Person

  def initialize(name)
    @name = name
  end

  def followers
    Twitter.followers(@name).map { |f| f.name }
  end

end
