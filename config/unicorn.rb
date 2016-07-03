# Unicornのプロセスがlistenするアドレスとポートを指定
listen '3000'

# pid fileの位置を指定
pid 'tmp/pids/behabitor.pid'

# Unicornは複数のワーカーで起動するのでワーカー数を定義
# サーバーのメモリなどによって変更すること。
worker_processes 2

# 接続タイムアウト時間[s]
timeout 30

# 基本的には`true`を指定する。Unicornの再起動時にダウンタイムなしで再起動が行われる。
preload_app true

# Unicornのエラーログと通常ログの位置を指定。
stderr_path File.expand_path('../../log/behabitor_stderr.log', __FILE__)
stdout_path File.expand_path('../../log/behabitor_stdout.log', __FILE__)

# before_forkとafter_forkの設定
# USR2シグナルを受けると古いプロセスを止める。
# 後述するが、記述しておくとNginxと連携する時に良いことがある。
before_fork do |server, worker|
  defined?(ActiveRecord::Base) and
      ActiveRecord::Base.connection.disconnect!

  old_pid = "#{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end

