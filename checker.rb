REPOS = %w(widennV2 landing-widenn efluencer-landing efluencer )

puts Dir.pwd
res = Dir.glob("#{Dir.pwd}/**/**")
issues = []
res.each do |repo|
  issues << repo if REPOS.include? repo
end

puts "Over. Found #{issues.count} issues"
issues.each { |issue| puts "Folder: #{issue}" }
