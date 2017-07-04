# This file should contain all the record creation needed to seed the database with its default values.

User.create( name: "admin" , email: "admin@me.com" , admin: true  , activated: true, password: "admin123" )
User.create( name: "test1" , email: "test1@me.com" , admin: false , activated: true, password: "test123" )

Jenkins.create( username: "admin"                          , apikey: "9f77866cea1ec1928cbba1099af19113" , url: "http://127.0.0.1:8080" )
Jenkins.create( username: "steven.fawcett@hpe.com"         , apikey: "f4be138e77551be34c77e7bf6c48ef5f" , url: "https://c4t19076.itcs.hpecorp.net:8443" )
Ltrello.create( username: "stevenfawcett"                  , apikey: "73aea1df20f7fb157901e5d34f2bf2ff" , apitoken: '11c7b9e0e764c1e7e3bf3c09137f329cb59200eebdb78741c87256fdce550f92' )

Project.create( name: "Jenkins", active: true , description: "Local Jenkins Test" )
Project.create( name: "Work"  ,  active: true , description: "General Work" 

Collaboration.create( project: Project.where( name: "Jenkins" ).first , user_id: User.where( name: "admin" ) )
Collaboration.create( project: Project.where( name: "Jenkins" ).first , user_id: User.where( name: "test1" ) )
Collaboration.create( project: Project.where( name: "Work" ).first    , user_id: User.where( name: "admin" ) )
Collaboration.create( project: Project.where( name: "Work" ).first    , user_id: User.where( name: "test1" ) )


Trellotask.create( project: Project.where( name: "Jenkins" ).first , connection: Connection.where( username: "stevenfawcett" ).first )
Trellotask.create( project: Project.where( name: "Jenkins" ).first , connection: Connection.where( username: "stevenfawcett" ).first )
Trellotask.create( project: Project.where( name: "Jenkins" ).first , connection: Connection.where( username: "stevenfawcett" ).first )
Jenkinstask.create( project: Project.where( name: "Work" ).first    , connection: Connection.where( username: "admin" ).first )
Jenkinstask.create( project: Project.where( name: "Work" ).first    , connection: Connection.where( username: "admin" ).first )
Jenkinstask.create( project: Project.where( name: "Work" ).first    , connection: Connection.where( username: "steven.fawcett@hpe.com" ).first )
