# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email

  def initialize(email)
    @email
  end

  def self.new_from_cvs(cvs_data)
    rows = cvs_data.split(" ")
    emails = rows.collect do |row|
      data = row.split(", ")
      email_addresses = data[0]

      email_final = self.new
      email.email_addresses = email
      email_final
    end
    email_final
  end

end
