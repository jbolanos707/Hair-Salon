require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/client')
require('./lib/stylist')
require('pg')

DB = PG.connect({:dbname => 'hair_salon'})

get('/') do
  erb(:index)
end

get('/stylists') do
  @stylists = Stylist.all()
  erb(:stylists)
end

post('/stylists') do
  name = params.fetch("stylist_name")
  stylist = Stylist.new(name: name, id: nil)
  stylist.save()
  @stylists = Stylist.all()
  erb(:stylists)
end

get('/clients') do
  @clients = Client.all()
  erb(:clients)
end

post('/clients') do
  name = params.fetch("client_name")
  @client = Client.new(name: name, stylist_id: stylist_id)
  @client.save()
  @clients = Client.all()
  erb(:clients)
end

get('/stylists/:id') do
  @stylist = Stylist.find(params.fetch('id').to_i)
  erb(:stylist)
end

post("/stylists/:id") do
  name = params.fetch("name")
  stylist_id = params.fetch("stylist_id").to_i()
  @stylist = Stylist.find(stylist_id)
  @client = Client.new(name: name, stylist_id: stylist_id)
  @client.save()
  erb(:stylist)
end
