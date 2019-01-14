function __ssh_agent_init
  if [ -f $SSH_ENV ]
    source $SSH_ENV > /dev/null
    ps -ef | grep $SSH_AGENT_PID | grep -v grep | grep ssh-agent > /dev/null

    if [ $status -eq 0 ]
      __ssh_test_identities
    else
      __ssh_start_agent
    end
  else
    __ssh_start_agent
  end
end
