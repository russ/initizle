require "initizle/version"

class Object
  INITIALIZE_MISSPELLINGS = %i(
    init
    initailzie
    initalize
    initalzie
    initile
    initizle
    initizlie
    initizlize
    initizlize
    intialie
    intialize
  ).uniq

  def initialize(*args)
    INITIALIZE_MISSPELLINGS.each do |spelling|
      if self.class.instance_methods.include?(spelling)
        self.send(spelling, *args)
      end
    end
  end
end
