
# => we will get the db name, username and password from the commandline
# => instead of an internal hash
database = ARGV.shift
username = ARGV.shift
password = ARGV.shift
end_of_iter = ARGV.shift

if end_of_iter.nil?
  backup_file = database + '_' + Time.now.strftime('%Y%m%d')
else
  backup_file = database + '_' + end_of_iter
end
mysqldump = "mysqldump -u#{username} -p#{password} " + "#{database}"

`sudo #{mysqldump} > #{backup_file}.sql`
`sudo gzip #{backup_file}.sql`
