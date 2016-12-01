# Rails Bootstrap Grid

A Rails Plugin for developers that use Bootstrap.

[![Gem Version](https://badge.fury.io/rb/rails-bootstrap-grid.svg)](https://badge.fury.io/rb/rails-bootstrap-grid)

## Dependecies

Use in Ruby >= 1.9 and Ruby on Rails >= v4.X and Boostrap load!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-bootstrap-grid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-bootstrap-grid

## Usage

Containers availables
* row
* container
* container-fluid

Cols Methods availables
* col_xs_1, col_xs_2, col_xs_3, col_xs_4, col_xs_5, col_xs_6, col_xs_7, etc.. 
* col_sm_1, col_sm_2, col_sm_3, col_sm_4, col_sm_5, col_sm_6, col_sm_7, etc.. 
* col_md_1, col_md_2, col_md_3, col_md_4, col_md_5, col_md_6, col_md_7, etc.. 
* col_lg_1, col_lg_2, col_lg_3, col_lg_4, col_lg_5, col_lg_6, col_lg_7, etc..

## Form Example using the Gem SimpleForm
```ruby
<%= simple_form_for(@model, url: route_path) do |f| %>
    <%= row container do %>
        <%= f.error_notification %>
        <%= col_md_3 f.input :name, label: 'Name Canonical'  %>
        <%= col_md_3 f.input :username, html: { placeholder: 'Username' } %>
        <%= col_md_3 f.input :password, label: 'Password' %>
        <%= col_md_2 f.input :remember, as: :checkbox %>
        <%= col_md_12 f.submit, html: { class: 'btn btn-primary' } %>
    <% end %>
<% end %>
```

use an container with block

```ruby
<%= container do %>
 more code
<% end %>
```

use an row with block

```ruby
<%= row do %>
 more code
<% end %>
```

use an cols with bootstrap

```ruby
<%= col_md_12 f.input :username, html: { class: '', id: '', data: {} } %>
```

```ruby
<%= col_md_12 do %>
    <%= col_md_6 do %>
        <% f.input :username %>
    <% end >

    <%= col_md_6 do %>
        <% f.input :password %>
    <% end >
<% end >
```

Clean HTML code for ERB Files

```ruby
<%= col_md_12 html: { data: { error: false } } do %>
    <%= col_md_6 f.input :username %>
    <%= col_md_6 f.input :password %>
    <%= col_md_6 f.input :remember, as: :checkbox %>
<% end %>
```

Use with any options HTML

```ruby
<%= col_md_12 html: { data: { error: false } } do %>
    <%= col_md_6 html: { class: 'username', data: { error: false } } do %>
        <%= f.input :username %>
    <% end >

    <%= col_md_6 html: { class: 'username', data: { error: false } } do %>
        <%= f.input :password %>
    <% end >
<% end %>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Thadeu/rails-bootstrap-grid.

