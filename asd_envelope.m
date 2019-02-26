%% attack sustain decay envelope function
function env = asd_envelope(x, max_amp)
env = zeros(1, length(x));
for i=1:length(x)
      if i < 0.085*length(x)
          env(i) = max_amp*i/(0.085*length(x));
      elseif i > length(x)-(length(x)*0.64)
          env(i) = max_amp/0.64 + (-max_amp/(0.64*length(x)))*i;
      else 
          env(i) = max_amp;
      end
end
end