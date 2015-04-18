def exec_time(proc)
  begin_time = Time.now
  proc.call
  Time.now - begin_time
end