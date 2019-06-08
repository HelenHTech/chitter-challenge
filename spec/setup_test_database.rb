require 'pg'

p 'Setting up the database...'

def setup_test_database
  connection = PG.connect(dbname: 'chitter_test')
  connection.exec('TRUNCATE userdetails CASCADE;')
end