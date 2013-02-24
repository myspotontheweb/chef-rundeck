
action :create do
    execute "Create rundeck project" do
        command "rd-project --action create --project #{new_resource.name}"
        user "rundeck"
        creates "/var/rundeck/projects/#{new_resource.name}"
    end
end

action :delete do
    directory "/var/rundeck/projects/#{new_resource.name}" do
        action :delete
        recursive true
    end
end

