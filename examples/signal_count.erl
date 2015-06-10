[ % in this example "E!" sould be printed after "C!" 
  % because loop size is 20 and each "thread" adds 10; 10 * 20 = 200
    {pool, [{size, 20},
            {worker_type, dummy_worker}], [
        {wait, {1, sec}},
        {print, "C!"},
        {set_signal, "A", 10}]},
    {pool, [{size, 1},
            {worker_type, dummy_worker}], [
        {wait_signal, "A", 200},
        {print, "E!"}]}
].
