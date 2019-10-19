require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email
  def initialize(emails)
    @emails = emails
  end

  def parse
    return_email = @emails.split(/[\s,]+/).uniq
    return_email
  end

end