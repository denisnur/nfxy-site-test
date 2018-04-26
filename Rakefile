require 'rubygems'
require 'bundler/setup'

# Jekyll Task
domain="www.denisn.com"

task :default => :build

desc 'Build site with Jekyll.'
task :build  => :clean do
  print "Compiling website...\n"
  # system "grunt"
  system "export TZ=Europe/Berlin"
  system "echo Current date: `date`"

  system "jekyll build"
  # system "compass compile"
  system "rm -rf source/tags"
end # task: build

desc 'Clean public folder'
task :clean do
  print "Clean public folder.\n"
  system "rm -rf public/*"
end # task: clean

# desc 'Deploy to S3'
# task :deploy do
#   print "Deploying website to Server\n"
#   system "rsync -az --delete-after $TRAVIS_BUILD_DIR/public/ web@ssh.juev.org:~/public/juev.org"
# end # task: deploy

desc 'Create new post.'
task :new do
  throw "No title given" unless ARGV[1]
  title = ""
  ARGV[1..ARGV.length - 1].each { |v| title += " #{v}" }
  title.strip!
  now = Time.now
  path = "source/_posts/#{now.strftime('%F')}-#{title.downcase.gsub(/[\s\.]/, '-').gsub(/[^\w\d\-]/, '')}.markdown"

  File.open(path, "w") do |f|
    f.puts "---"
    f.puts "layout: post"
    f.puts "title: #{title}"
    f.puts "date: #{now.strftime('%F %R')}"
    f.puts "tags:"
    f.puts "- "
    f.puts "---"
    f.puts ""
  end

  system("echo #{path}")
  exit
end # task: new

desc 'Update local copy'
task :update do
  print "Update local copy.\n"
  system "git pull"
end # task: update

####
#todo robots configure
####

# Copy
desc 'Copy public'
task :copy do
  print "Copy public to www.\n"
  system "rsync -az --delete public/ web/denisn.com/"
end # task: copy

# Publish site
desc 'Publish site'
task :publish => [:deploy, :notify] do
end # task :publish
