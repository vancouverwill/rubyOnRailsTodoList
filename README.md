## Useful Commands

`bin/rails server`


` bin/rails test `

` bin/rails routes`

` bin/rails test test/controllers/articles_controller_test.rb `

`bin/rails generate model TodoLists title:string`

`bin/rails db:migrate`



# db setup

If you don't have mysql installed go ahead, on mac just do `brew install mysql` I have used the default username of root and password empty but you use whatever you like, just update models/dbModel.go with your settings.

Note if you are using brew if you turn your mac on and off you need to run 

`mysql.server restart`

and then the db can be accessed via 

`mysql  -u root`

For ruby on rails lets use mysql2

`gem install mysql2`