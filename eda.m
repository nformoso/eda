function [ best_solutions ] = eda(init_pop, k, max_std_dev, f)
  #
  # Variables
  #
  gen_count = 0;
  best_std_dev = 10;
  # Number of solutions
  sol_num = size(init_pop,1);
  # Length of solutions
  sol_length = size(init_pop,2);
  # Bests solutions of each iteration 
  best_solutions = [];

  ## Evaluate Initial Population
  sol_evaluated = zeros(1,sol_num);
  for i = 1:sol_num
    sol_evaluated(i) = f( init_pop(i,:) );
  endfor

  # Changing name, just to clarify
  population = init_pop;

  while (best_std_dev > max_std_dev)
    # k Best individuals selection
    [sol_srt, sol_idx] = sort(sol_evaluated, 'descend');

    sol_eval_bestk = sol_evaluated( sol_idx(1:k) );
    sol_bestk = population( sol_idx(1:k), : );

    # Picking the bestest solution on this iteration
    sol_bestest = population(sol_idx(1), :);
    # Saving best solution on iteration
    best_solutions = [ best_solutions; sol_bestest ];

    # Computing mean and standard deviation (by variable)
    mus = zeros(1,sol_length);
    std_devs = zeros(1, sol_length);

    for i = 1:sol_length
      # mean
      mus(i) = mean( sol_bestk(:,i) );
      # standard deviation
      std_devs(i) = std( sol_bestk(:,i) );
    endfor

    # Best mu and std -- "mepa que esto no va"
    [best_mu_sort, best_mu_idx] = sort(mus, 'ascend');
    best_mu      = mus( best_mu_idx(1) );
    best_std_dev = std_devs( best_mu_idx(1) );

    # Generate new population
    population = gen_population_v2(mus, std_devs, sol_num, sol_length);

    # Evaluate new population
    for i = 1:sol_num
      sol_evaluated(i) = f( population(i,:) );
    endfor

    # Increasing generation
    gen_count++;
  endwhile
  
endfunction
