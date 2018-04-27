# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"
class EmailParser
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    emails = email.gsub(",","").split(" ").uniq { |x| x }
  end

end
=begin this method also works
        def parse
        emails.split.map do |email|
          email.split(',')
        end.flatten.uniq
        end
=end