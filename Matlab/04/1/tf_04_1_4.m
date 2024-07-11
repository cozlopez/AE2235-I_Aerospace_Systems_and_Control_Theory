s = tf('s');
K1 = 1;
H1 = 5/(s^2+3*s+5);
G = K1*(1+(0.2/s));

fprintf('In all entries first numerator the denominator \n \n')
fprintf('Type 1: Closed loop from input to output')

H = feedback((G*H1),1);
fprintf('Numerator')
H.Numerator()
fprintf('Denominator')
H.Denominator()


fprintf('Type 2: Closed loop from input to control input')

H = feedback((G),(H1));
fprintf('Numerator')
H.Numerator()
fprintf('Denominator')
H.Denominator()


fprintf('Type 3: Closed loop from disturbance to output')

H = feedback((H1),(G));
fprintf('Numerator')
H.Numerator()
fprintf('Denominator')
H.Denominator()


fprintf('Type 4: Closed loop from disturbance to control input')

H = feedback((1),(G*H1));
fprintf('Numerator')
H.Numerator()
fprintf('Denominator')
H.Denominator()