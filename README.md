# Bootstrap::Grid

A Rails Plugin for developers that use Bootstrap.

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

use um container with or without block
```
<%= container %>
```

```
<%= container do %>
 more code
<% end %>
```

use cols with bootstrap
```
<%= col_md_12 %>
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
        <% f.input :username %>
    <% end >

    <%= col_md_6 html: { class: 'username', data: { error: false } } do %>
        <% f.input :password %>
    <% end >
<% e


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/bootstrap-grid.

