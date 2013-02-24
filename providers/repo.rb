
action :create do
    execute "Create rundeck repository file" do
        command "rpm -Uvh http://repo.rundeck.org/latest.rpm"
        creates "/etc/yum.repos.d/rundeck.repo"
    end
end

action :delete do
    file "/etc/yum.repos.d/rundeck.repo" do
        action :delete
    end
end

