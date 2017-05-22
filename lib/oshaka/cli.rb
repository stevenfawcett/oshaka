require 'thor'
require 'open-uri'

module Oshaka
  class CLI < Thor
    include Thor::Actions

    class << self
      def hyphenate(str)
        return str.downcase if str =~ /^[A-Z-]+$/
        str.gsub('_', '-').gsub(/\B[A-Z]/, '-\&').squeeze('-').downcase
      end
    end

    desc "start", "Starts the server in style!"
    method_option :job_path, :desc => "Specify the directory where jobs are stored"
    def start(*args)
      port_option = args.include?('-p') ? '' : ' -p 3030'
      args = args.join(' ')
      command = "bundle exec thin -R config.ru start#{port_option} #{args}"
      command.prepend "export JOB_PATH=#{options[:job_path]}; " if options[:job_path]
      run_command(command)
    end

    desc "stop", "Stops the thin server"
    def stop
      command = "bundle exec thin stop"
      run_command(command)
    end

    # map some commands
    map 's' => :start

    private

    def run_command(command)
      system(command)
    end

    def require_file(file)
      require file
    end
  end
end
