default[:tempest][:use_virtualenv] = false

#
# Dealing with platform dependent package names
#

case node["platform"]
    when "ubuntu"
        default[:tempest][:platform] = {
            :packages => ["libxslt1-dev"]
        }
    when "centos"
         default[:tempest][:platform] = {
            :packages => ["libxslt-devel"]
        }
end
