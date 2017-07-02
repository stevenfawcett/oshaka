# This file should contain all the record creation needed to seed the database with its default values.

User.create( id: 1, name: "admin" , email: "admin@me.com" , admin: true  , activated: true, password: "admin123" )
User.create( id: 2, name: "test1" , email: "test1@me.com" , admin: false , activated: true, password: "test123" )

Jenkins.create( username: "admin"         , apikey: "9f77866cea1ec1928cbba1099af19113" , url: "http://127.0.0.1:8080" )
Ltrello.create(  username: "stevenfawcett" , apikey: "73aea1df20f7fb157901e5d34f2bf2ff" , apitoken: '11c7b9e0e764c1e7e3bf3c09137f329cb59200eebdb78741c87256fdce550f92' )

Project.create( id: 1,  name: "Jenkins", active: true , description: "Local Jenkins Test" )

Collaboration.create( id: 1 , project_id: 1 , user_id: 1 )
Collaboration.create( id: 2 , project_id: 1 , user_id: 2 )


Task.create( id: 7 , project: project.find(2) , connection: Connection.where( username: "stevenfawcett" ) )
Task.create( id: 8 , project: project.find(2) , connection: Connection.where( username: "stevenfawcett" ) )
Task.create( id: 9 , project: project.find(2) , connection: Connection.where( username: "stevenfawcett" ) )
Task.create( id: 4 , project: project.find(1) , connection: Connection.where( username: "admin" ) )
Task.create( id: 5 , project: project.find(1) , connection: Connection.where( username: "admin" ) )
Task.create( id: 6 , project: project.find(1) , connection: Connection.where( username: "admin" ) )
