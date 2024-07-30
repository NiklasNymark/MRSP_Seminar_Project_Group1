load average_result
drum = data_subs.Scen1;
mix = data_subs.Scen2;
piano = data_subs.Scen3;
speech = data_subs.Scen4;
trumpet = data_subs.Scen5;
drum_off = drum(:,2) % column 2
mix_off = mix(:,2) % column 2
piano_off = piano(:,2) % column 2
speech_off = speech(:,2) % column 2
trumpet_off = trumpet(:,2) % column 2
%drum = transpose(drum);
office = [ drum_off, mix_off, piano_off, speech_off, trumpet_off ]

aov = anova(office) % compare small office of all scenarios