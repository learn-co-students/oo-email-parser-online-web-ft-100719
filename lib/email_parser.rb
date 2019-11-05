# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    new_email_list = []
    new_email_list = @emails.split(/[\s,]/)
    new_email_list.each do |email|
      email.tr(' ', '')
      email.tr(',', '')
    end
    new_email_list.delete_if do |email|
      email == ""
    end
      
    new_email_list = new_email_list.uniq
    new_email_list
  end

  
end

