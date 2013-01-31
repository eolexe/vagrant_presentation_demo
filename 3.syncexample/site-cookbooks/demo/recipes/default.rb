include_recipe "apache2"

web_app "project" do
  template "project.conf.erb"
  docroot "/vagrant"
  notifies :reload, resources(:service => "apache2"), :delayed
end