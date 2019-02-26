%% piecewise linear transfer function 
function y = F(x)
  if x < 200 
      y = -1 + (1/400)*x;
  elseif x < 256
      y = -(256/112) + (1/112)*x;
  else 
      y = (0.5-(3.2/400)) + (1/400)*x;
  end
end