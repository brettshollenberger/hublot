Hublot
==================================

Hublot makes Facebook-style datetime-contextual datetimes a cinch for your ActiveRecord objects. 

Examples
==================================
Comment created a just now:
  just now

Comment created seconds or minutes ago
  10 seconds ago
  2 minutes ago
  
Comment created today
  Today at 5:30PM
  
Comment created yesterday
  Yesterday at 5:30PM
  
Comment created this week
  Monday at 5:30PM
  
Comment created last week
  Last Monday at 5:30PM
  
After that:
  Monday, July 1 at 5:30PM
  
Use
=================================

  gem 'hublot'

Include Hublot in your ActiveRecord models:

  class Comment < ActiveRecord::Base
    include Hublot
  end
  
Call the pretty method in your views:

  <%= @comment.pretty %>
