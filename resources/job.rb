actions :create, :delete

default_action :create

attribute :name, :kind_of => String, :name_attribute => true
attribute :project, :kind_of => String, :required => true
attribute :format, :kind_of => String, :required => true

