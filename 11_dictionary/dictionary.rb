class Dictionary

  attr_reader :entries
  
  def initialize
    @entries = {}
    @keywords = []
  end
  
  def add(entry)
    if entry.is_a? Hash
      @entries.merge!(entry)
      @keywords << entry.keys
    elsif entry.is_a? String
      @keywords << entry
    end
  end
  
  def keywords
    @keywords.sort
  end
  
  def include?(word)
    @keywords.include?(word)
  end
  
  def find(prefix)
  end
  
  def printable
  end
  
end
