# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
  # binding.pry
    emails.split.map do |email|
      email.split(",")
    end
    .flatten.uniq
    # binding.pry
  end
end