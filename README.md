# Pawsibilites

Pawsibilities connects animal lovers with adoptable pets in their area. Find pets with our interactive quiz or our customizable search and contact the owner directly. Whether you are looking for a pet or need to find your own pet a new home, Pawsibilities makes it easy.

## Final Product

!["Search page"](https://github.com/adibalamir/Pawsibilities/blob/master/docs/search.png)

!["Individual Pet profiles"](https://github.com/adibalamir/Pawsibilities/blob/master/docs/pet-profile.png)

!["Pet Matcher feature"](https://github.com/adibalamir/Pawsibilities/blob/master/docs/pet-matcher.png)

!["Quiz that match the pet seeker with ideal pet."](https://github.com/adibalamir/Pawsibilities/blob/master/docs/pet-matcher-quiz.png)


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:reset` to create, load and seed db
4. Run `bin/rails c` to on in the console and run two jobs:
   a) First, in the Shelter model ('app/models/shelter.rb'), comment out the specified lines of code. Run `DownloadSheltersJob.perform_now`. Uncomment those same lines in the Shelter model.
   b) Run `DownloadPetsJob.perform_now`
5. Create .env file based on .env.example
6. Sign up for a Petfinder, MailGun and Google API account
7. Put the API keys into appropriate .env vars
8. Run `bin/rails s` to start the server on localhost:3000


## Dependencies

* Rails 5.2
* Sqlite3
* Bcrypt
* Roo
* Httparty
* Pry
* Bootstrap
* Mailgun
* Carrierwave
* Petfinder

## Known Issues
* The video of the cat on the homepage ("/") doesn't play when you navigate to it directly. It does however play when you access it through its nav bar link ("Pawsibilities").
* In the user's Favourites, the pets aren't clickable. We're not sure when this stopped working. Ideally, they should link back to that pet's profile page.
