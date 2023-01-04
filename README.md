<!-- TODO: setup codeclimate -->
<!-- <a href="https://codeclimate.com/github/boacausa/webplatform/maintainability"><img src="https://api.codeclimate.com/v1/badges/0c390c414647d152de40/maintainability" /></a>
<a href="https://codeclimate.com/github/boacausa/webplatform/test_coverage"><img src="https://api.codeclimate.com/v1/badges/0c390c414647d152de40/test_coverage" /></a> -->

# Por uma boa causa / For a good cause

<!-- TODO: description of what this project is and it's status -->

http://boacausa.org/

**Using fun new tech stuff**

* Ruby 3
* Rails 7 - Hotwire
* Tailwind
### Setup

**Requirements**

* Ruby 3.2.0

**Installation**

This is optional if you want to use rbenv to manage ruby versions

```shell
# Update rbenv
cd ~/.rbenv/plugins/ruby-build/ && git pull
# or
brew update && brew upgrade ruby-build
# Install latest ruby
rbenv install 3.2.0
```

Project setup

```shell
gem install bundler
bundler install
rails db:setup
cp .env.sample .env
```

**Starting application**

```shell
./bin/dev
```

Open http://localhost:3000/

**Run tests**

```shell
rails test
```

### How to contribute

<!-- TODO: how to contribute description -->
<!-- Quer contribuir como desenvolvedor no projeto? Da uma olhada nas nossas [issues](https://github.com/boacausa/webplatform/issues?q=is%3Aopen+is%3Aissue+-label%3Adiscussion+-label%3A%22%5Bzube%5D%3A+In+Review%22+-label%3Aidea) -->


### Roadmap

**MVP requirements:**

* (In progress) Organization's page
* (TODO) Make donations possible by allowing deposit information and 3rd party wallet scripts
  * The goal is that in the future we make donations transparent to the users so it increses credibility of donations and hopefully donations itself. We also want the users to know what their money is being used for (ex: rescue, food, medical stuff, maintenance, staff...)
* (TODO) Admin area for organization staff and/or volunteers
* (In progress) Pets for adoption, managed by organization staff
* (TODO) Pet search/filters
* (TODO) Allow adoption applications
  * For now just a simple form so the organization crew can get in contact with interested parties. In future, we want to think on kind of terms and conditions to make sure only responsible people will apply and the organization had all the info that is needed for responsible adoption
