# Rails Bootstrap Grid

A Rails Plugin for developers that use Bootstrap.

[![Gem Version](https://badge.fury.io/rb/rails-bootstrap-grid.svg)](https://badge.fury.io/rb/rails-bootstrap-grid)

## Dependecies

Use in Ruby >= 1.9 and Ruby on Rails >= v4.X and Boostrap load!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap-grid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap-grid

## Usage

use an container with block

```
<%= container do %>
 more code
<% end %>
```

use an row with block

```
<%= container do %>
 more code
<% end %>
```

use an cols with bootstrap
```
<%= col_md_12 f.input :username, html: { class: '', id: '', data: {} } %>
```

```
<%= col_md_12 do %>
    <%= col_md_6 do %>
        <% f.input :username %>
    <% end >

    <%= col_md_6 do %>
        <% f.input :password %>
    <% end >
<% end >
```

Use with any options HTML

```
<%= col_md_12 html: { data: { error: false } } do %>
    <%= col_md_6 html: { class: 'username', data: { error: false } } do %>
        <%= f.input :username %>
    <% end >

    <%= col_md_6 html: { class: 'username', data: { error: false } } do %>
        <%= f.input :password %>
    <% end >
<% e
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Thadeu/rails-bootstrap-grid.

