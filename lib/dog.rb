require "pry"
require "active_record"
ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/test.splite3"
)

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS test (
    id INTEGER PRIMARY KEY,
    name TEXT
  )
SQL
ActiveRecord::Base.connection.execute(sql)

ActiveRecord::Base.logger = Logger.new(STDOUT)


class Dog < ActiveRecord::Base
end
