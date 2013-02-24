
action :create do
    job_directory = "/var/rundeck/projects/#{new_resource.project}/jobs"
    job_filename  = "#{job_directory}/#{new_resource.name}.#{new_resource.format}"

    directory job_directory

    cookbook_file job_filename do
        user "rundeck"
        group "rundeck"
        notifies :run, "execute[Load rundeck job]"
    end

    execute "Load rundeck job" do
        command "rd-jobs load --file #{job_filename} -F #{new_resource.format}"
        user "rundeck"
        action :nothing
    end
end

action :delete do
    file "#{new_resource.file}" do
        action :delete
    end
end

