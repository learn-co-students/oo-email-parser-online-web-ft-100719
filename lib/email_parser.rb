# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
    # You don't need a name in here, it is redundant
    # @name = name
    @emails = emails
    end

    # parse cvs emails
    def parse
        # emails.split.collect do |address|
        #     address.split(",")
        # end
        # .flatten.uniq

        # or 

        @emails = @emails.gsub(/[\s,]/," ").split # parses space delimited emails
        # @email is an array now
        @emails.uniq # removes duplicates
    end

end










