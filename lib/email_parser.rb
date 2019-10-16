# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails

  def initialize(emails) #emails are equal to whatever list you are giving
    @emails= emails
  end

  def parse
    # gsub used on strings to replace parts of it, turn @emails into an array and only store uniq keys
    @emails = @emails.gsub(/[\s,]/," ").split
    @emails.uniq
  end

end
