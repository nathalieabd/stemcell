# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RackspaceRegion.create(name: 'us', host: 'https://identity.api.rackspacecloud.com/')
RackspaceRegion.create(name: 'uk', host: 'https://lon.identity.api.rackspacecloud.com/')

User.create(name: 'Jon H. Benjamin', email: 'jon@fake.com', password: 'abc')
User.create(name: 'Alfred Hitchcock', email: 'alfred@fake.com', password: 'abc')
User.create(name: 'James T. Kirk', email: 'kirk@fake.com', password: 'abc')
