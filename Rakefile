require 'bundler/gem_tasks'
require 'fileutils'

desc 'Update the Ezdz Javascript and CSS files'
task :update do
  def download(version)
    base_url = 'https://raw.githubusercontent.com/jaysalvat/ezdz'
    puts "Downlading ezdz-slider #{version} ..."
    js = system("curl -fo vendor/assets/javascripts/jquery.ezdz.js " \
                "#{base_url}/v#{version}/dist/jquery.ezdz.js")
    css = system("curl -fo vendor/assets/stylesheets/jquery.ezdz.css " \
                 "#{base_url}/v#{version}/dist/jquery.ezdz.css")

    puts 'ERROR: Unable to fetch the Javascript file !' unless js
    puts 'ERROR: Unable to fetch the CSS file !' unless css
    exit 1 unless js || css
  end

  FileUtils.mkdir_p('vendor/assets/javascripts')
  FileUtils.mkdir_p('vendor/assets/stylesheets')
  download(Ezdz::Rails::VERSION)
  puts "\e[32mDone!\e[0m"
end
