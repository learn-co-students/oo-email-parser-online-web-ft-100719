# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailAddressParser

attr_accessor :email_addresses

  def initialize(string)
    @email_addresses=string
  end

  def parse
    if @email_addresses.include?(',') && @email_addresses.include?(" ")
      @email_addresses.split(/[,\s]/).delete_if{|element|element==""}.uniq
    elsif @email_addresses.include?(" ")
        @email_addresses.split(" ").uniq
      end
    end
end
