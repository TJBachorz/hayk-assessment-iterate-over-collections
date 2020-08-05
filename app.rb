require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this

def company_as_string(company)
    "#{company.name}" + " - " + "#{company.size}"
end

def company_names(companies)
    companies.collect { |company| company.name + " - " + company.size.to_s }
end

#p company_names(companies)

def sum_sizes(companies)
    companies.collect { |company| company.size}.reduce(:+)
end

#p sum_sizes(companies)

def companies_over_100(companies)
    company_names(companies.filter { |company| company.size > 100})
end 

#p companies_over_100(companies) 

def find_company_by_name(companies, name)
    company_as_string(companies.find { |company| company.name == name })
end

#p find_company_by_name(companies, "Beta")

def largest_company(companies)
    company_as_string(companies.max_by {|company| company.size})
end

#p largest_company(companies)

def largest_to_smallest_companies(companies)
    company_names(companies.max_by(companies.length) { |company| company.size})
end
p largest_to_smallest_companies(companies)