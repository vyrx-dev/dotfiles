function flutter-watch
    # Ensure the temp file for the PID is available
    set pid_file "/tmp/tf1.pid"
    touch $pid_file

    # Run flutter and watch for changes
    tmux send-keys "flutter run $argv --pid-file=$pid_file" Enter \; \
         split-window -v \; \
         send-keys 'npx -y nodemon -e dart -x "cat /tmp/tf1.pid | xargs kill -s USR1"' Enter \; \
         resize-pane -y 5 -t 1 \; \
         select-pane -t 0 \;
end
