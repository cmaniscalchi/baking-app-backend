# Baking Conversion App
## A passion project and WIP

This React App serves a practical purpose in the kitchen for the home baker: converting **imperial volume** measures for common ingredients (i.e. cups or teaspoons) into weighable amounts, in either **grams** or **ounces**.

I've fully adopted the process of weighing my ingredients as I bake ( at least most of them), and I would highly recommend it to anyone who values efficiency and less dishes to wash at the end of the day. Simply enter your ingredients into this app, convert them all to your desired unit, and hit **tare** on your kitchen scale to zero it out before you weigh each one.

The conversion amounts used are from the [King Arthur Flour](https://www.kingarthurflour.com/learn/ingredient-weight-chart.html) website, a terrific resource for bakers and a source of inspiration for this app. The design is fully responsive, to aid in keeping the kitchen in good order when the app is in use.

The back end for this project was built on:
- [Ruby on Rails](https://rubyonrails.org/)
- [ActiveModel::Serializer](https://github.com/rails-api/active_model_serializers)
- [Rest-Client](https://rubygems.org/gems/rest-client/versions/2.0.2)
- [Figaro](https://rubygems.org/gems/figaro)
- [BCrypt](https://github.com/codahale/bcrypt-ruby)
- [JWT](https://rubygems.org/gems/jwt/versions/1.5.4)

The front end repo can be found [here](https://github.com/cmaniscalchi/ex-libris-frontend).
