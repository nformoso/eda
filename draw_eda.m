function draw_eda( solutions )
  row_num = size( solutions, 1 );
  col_num = size( solutions, 2 );
  
  word_size = col_num;
  
  for sol = 1:row_num
    # Clearing figure
    clf;
    axis off;
    grid off;

    # Drawing a new string
    for pos = 1:col_num
      ch = char( solutions(sol,pos) );
      subplot(1, col_num, pos);
      axis off;
      grid off;
      text(0, 0.5, ch, 'fontsize', 20 );
    endfor
    # 'pause' is essential. 
    # Permits the correct display of the current string
    pause(0.01);
    refreshdata();
  endfor

endfunction
