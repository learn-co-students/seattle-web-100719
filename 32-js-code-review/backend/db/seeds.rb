# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("Delete from feedback")
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE WHERE name='feedback'")
ActiveRecord::Base.connection.execute("Delete from dancers")
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE WHERE name='dancers'")

Dancer.create(url: 'https://media1.giphy.com/media/K6CkDdm0ofyms/giphy.gif?cid=790b7611207ea3c727649278ad3eeea3a378a95e010d49e5&rid=giphy.gif', description: 'Paul Rudd has all the moves!')
Dancer.create(url: 'https://media0.giphy.com/media/7XE0nUUauSj3a/giphy.gif?cid=790b761110afeb3b699a78557dfea5f191531c4e2572aa70&rid=giphy.gif', description: 'This is far too distracting.')
Dancer.create(url: 'https://media1.giphy.com/media/chU6iZtkStQTC/giphy.gif?cid=790b76119754a8a7a373417f51b41da002b4ca3184803469&rid=giphy.gif', description: 'Pure Carlton all the way, bring on the Tom Jones!')

Feedback.create(dancer_id: 1, content: 'This is very calming to watch, keep it up')
Feedback.create(dancer_id: 1, content: 'Speed it up, go faster!')
Feedback.create(dancer_id: 2, content: 'Make it stop!')
Feedback.create(dancer_id: 3, content: 'Reminds me of the good old days of yore...')
