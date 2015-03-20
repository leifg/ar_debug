namespace :association do
  desc "create association to reproducde error"
  task create: :environment do
    company = Company.last
    projects = Project.includes(:employee).where(employees: { company: company })
    puts "found the projects: #{projects.inspect}"
  end
end
