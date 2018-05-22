i = 10;
characters = 10;

while ( i > 0 )
  
  clf;
  for c = 1:characters
    string = randi(100);
    subplot(1, characters, c);
    axis off;
    grid off;
    text(0, 0.5, strcat(['\fontsize{20}' num2str(string) ]) );
  endfor
  pause(0.2);
  refreshdata();
  i--;
endwhile
