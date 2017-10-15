module ZombieHunter
  class ZombieMaker
    class << self
      def make
        puts "app: pid=#{Process.pid}"
        run_command('/bin/date')
      end

      private

      def run_command(command)
        fork do
          puts "child: pid=#{Process.pid}, ppid=#{Process.ppid}"
          exec(command)
        end
      end
    end
  end
end
