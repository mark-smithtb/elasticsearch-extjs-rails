class AdminController < ApplicationController
  def admin_panel
    render inline: "<%= netzke :application %>", layout: true
  end
end
