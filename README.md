Fly Swatter
============

Compete against your friends on the whiteboard.
Create a game, add your team members, grab a whiteboard marker, and GO!

To Play
--------
1. git clone
1. Add some "puzzle files" to the puzzle dir.
1. Start the `rails server`.


For Developers
==============

Test via
---------
`$ rspec`

Dependencies
-------------
* ruby 2.1.2
* rails 4
* sqlite3
* rspec, capybara

Setup
------

1. bundle install
1. rake db:migrate

To allow better_errors and rails_footnotes to auto-open files:

1. Install https://github.com/dhoulb/subl.
1. Create a symbolic link for /Application/Sublime text.app/:
    - `ln -s '/opt/homebrew-cask/Caskroom/sublime-text/2.0.2/Sublime Text 2.app' '/Applications/Sublime Text.app'`
