load average_result

drum = data_subs.Scen1;
mix = data_subs.Scen2;
piano = data_subs.Scen3;
speech = data_subs.Scen4;
trumpet = data_subs.Scen5;

disp('Differences between the instruments:')
for i = 2:4 % loop through all 3 environments (office, opera, reverb)
    drum_env = drum(:,i);
    mix_env = mix(:,i);
    piano_env = piano(:,i);
    speech_env = speech(:,i);
    trumpet_env = trumpet(:,i);
    %drum = transpose(drum);
    environment = [ drum_env, mix_env, piano_env, speech_env, trumpet_env ];
    aov = anova(environment) % ANOVA testing for this environment
end

data = [drum, mix, piano, speech, trumpet];

disp('Differences between the environments:')
for i = 0:4 % loop through all 5 sounds (drum, mix, piano, speech, trumpet)
    column_start = i*4+2;
    column_end = (i+1)*4;
    current_data = data(:,column_start:column_end,1);
    aov = anova(current_data)
end