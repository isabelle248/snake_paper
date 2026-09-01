
close all

% Fixed baseline values
amplitude_base = 0.05;
frequency_base = 1.0;
wavelength_base = 1;
phase_offset_base = pi/2;


% Define parameter ranges
amplitude_vals = linspace(0.05, 0.5, 20);       % amplitude range
frequency_vals = linspace(1, 20, 20);            % frequency range
wavelength_vals = linspace(0.1, 10, 20);           % wavelength range
phase_offset_vals = linspace(0, 2*pi, 1);      % phase offset range

number_vals = 10;


% dist_amplitude = zeros(size(amplitude_vals));
% dist_frequency = zeros(size(frequency_vals));
% dist_wavelength = zeros(size(wavelength_vals));
% dist_phase_offset = zeros(size(phase_offset_vals));
% 
% % Normalize each parameter to [0,1] for plotting
% amp_norm = (amplitude_vals - min(amplitude_vals)) / (max(amplitude_vals) - min(amplitude_vals));
% freq_norm = (frequency_vals - min(frequency_vals)) / (max(frequency_vals) - min(frequency_vals));
% wave_norm = (wavelength_vals - min(wavelength_vals)) / (max(wavelength_vals) - min(wavelength_vals));
% phase_norm = (phase_offset_vals - min(phase_offset_vals)) / (max(phase_offset_vals) - min(phase_offset_vals));
% 
% % --- Sweep amplitude ---
% for i = 1:length(amplitude_vals)
%     dist_amplitude(i) = custom_main_snake(amplitude_vals(i), frequency_base, wavelength_base, phase_offset_base);
% end
% 
% % --- Sweep frequency ---
% for i = 1:length(frequency_vals)
%     dist_frequency(i) = custom_main_snake(amplitude_base, frequency_vals(i), wavelength_base, phase_offset_base);
% end
% 
% % --- Sweep amplitude ---
% for i = 1:length(wavelength_vals)
%     dist_wavelength(i) = custom_main_snake(amplitude_base, frequency_base, wavelength_vals(i), phase_offset_base);
% end
% 
% % --- Sweep phase slope ---
% for i = 1:length(phase_offset_vals)
%     dist_phase_offset(i) = custom_main_snake(amplitude_base, frequency_base, wavelength_base, phase_offset_vals(i));
% end


% AMPLITUDE
% LL_amp = zeros(size(number_vals));
% LA_amp = zeros(size(number_vals));
% AL_amp = zeros(size(number_vals));
% AA_amp = zeros(size(number_vals));
% 
% parameter = amplitude_vals;
% 
% for i = 1:length(amplitude_vals)
% 
%     p = parameter(i);
% 
%     % amplitude
%     LL_amp(i) = custom_main_snake(p, frequency_base, wavelength_base, phase_offset_base, 1, 1);
%     LA_amp(i) = custom_main_snake(p, frequency_base, wavelength_base, phase_offset_base, 1, 2);
%     AL_amp(i) = custom_main_snake(p, frequency_base, wavelength_base, phase_offset_base, 2, 1);
%     AA_amp(i) = custom_main_snake(p, frequency_base, wavelength_base, phase_offset_base, 2, 2);
% end

% % % FREQUENCY
% LL_freq = zeros(size(number_vals));
% LA_freq = zeros(size(number_vals));
% AL_freq = zeros(size(number_vals));
% AA_freq = zeros(size(number_vals));
% 
% parameter = frequency_vals;
% 
% for i = 1:length(frequency_vals)
% 
%     p = parameter(i);
% 
%     % frequency
%     LL_freq(i) = custom_main_snake(amplitude_base, p, wavelength_base, phase_offset_base, 1, 1);
%     LA_freq(i) = custom_main_snake(amplitude_base, p, wavelength_base, phase_offset_base, 1, 2);
%     AL_freq(i) = custom_main_snake(amplitude_base, p, wavelength_base, phase_offset_base, 2, 1);
%     AA_freq(i) = custom_main_snake(amplitude_base, p, wavelength_base, phase_offset_base, 2, 2);
% end
% 
% WAVELENGTH
% LL_w = zeros(size(number_vals));
% LA_w = zeros(size(number_vals));
% AL_w = zeros(size(number_vals));
% AA_w = zeros(size(number_vals));
% 
% parameter = wavelength_vals;
% 
% for i = 1:length(wavelength_vals)
% 
%     p = parameter(i);
% 
%     LL_w(i) = custom_main_snake(amplitude_base, frequency_base, p, phase_offset_base, 1, 1);
%     LA_w(i) = custom_main_snake(amplitude_base, frequency_base, p, phase_offset_base, 1, 2);
%     AL_w(i) = custom_main_snake(amplitude_base, frequency_base, p, phase_offset_base, 2, 1);
%     AA_w(i) = custom_main_snake(amplitude_base, frequency_base, p, phase_offset_base, 2, 2);
% end
% 
% PHASE
LL_ph = zeros(size(number_vals));
LA_ph = zeros(size(number_vals));
AL_ph = zeros(size(number_vals));
AA_ph = zeros(size(number_vals));

parameter = phase_offset_vals;

for i = 1:length(phase_offset_vals)

    p = parameter(i);

    LL_ph(i) = custom_main_snake(amplitude_base, frequency_base, wavelength_base, p, 1, 1);
    LA_ph(i) = custom_main_snake(amplitude_base, frequency_base, wavelength_base, p, 1, 2);
    AL_ph(i) = custom_main_snake(amplitude_base, frequency_base, wavelength_base, p, 2, 1);
    AA_ph(i) = custom_main_snake(amplitude_base, frequency_base, wavelength_base, p, 2, 2);
end


% 
% % --- Plot ---
% figure;
% plot(amp_norm, dist_amplitude, 'r', 'LineWidth', 2);
% hold on;
% plot(freq_norm, dist_frequency, 'g', 'LineWidth', 2);
% plot(wave_norm, dist_wavelength, 'b', 'LineWidth', 2);
% plot(phase_norm, dist_phase_offset, 'y', 'LineWidth', 2);
% 
% 
% xlabel('Parameter Value');
% ylabel('Distance Traveled');
% legend('Amplitude Sweep', 'Frequency Sweep', 'Wavelength Sweep', 'Phase Sweep');
% grid on;
%

% % % AMPLITUDE
% figure;
% plot(amplitude_vals, LL_amp, '.', 'LineWidth',2, 'MarkerSize', 15); hold on;
% plot(amplitude_vals, LA_amp, '.', 'LineWidth',2, 'MarkerSize', 15);
% plot(amplitude_vals, AL_amp, '.', 'LineWidth',2, 'MarkerSize', 15);
% plot(amplitude_vals, AA_amp, '.', 'LineWidth',2, 'MarkerSize', 15);
% 
% legend('Land Loco + Land Env', ...
%        'Land Loco + Aquatic Env', ...
%        'Aquatic Loco + Land Env', ...
%        'Aquatic Loco + Aquatic Env');
% 
% xlabel('Amplitude');
% ylabel('Distance Traveled');
% grid on;
% 
% % % FREQUENCY
% figure;
% plot(frequency_vals, LL_freq, '.', 'LineWidth',2, 'MarkerSize', 15); hold on;
% plot(frequency_vals, LA_freq, '.', 'LineWidth',2, 'MarkerSize', 15);
% plot(frequency_vals, AL_freq, '.', 'LineWidth',2, 'MarkerSize', 15);
% plot(frequency_vals, AA_freq, '.', 'LineWidth',2, 'MarkerSize', 15);
% 
% legend('Land Loco + Land Env', ...
%        'Land Loco + Aquatic Env', ...
%        'Aquatic Loco + Land Env', ...
%        'Aquatic Loco + Aquatic Env');
% 
% xlabel('Frequency');
% ylabel('Distance Traveled');
% grid on
% 
% % WAVELENGTH
% figure;
% plot(wavelength_vals, LL_w, '.', 'LineWidth',2, 'MarkerSize', 15); hold on;
% plot(wavelength_vals, LA_w, '.', 'LineWidth',2, 'MarkerSize', 15);
% plot(wavelength_vals, AL_w, '.', 'LineWidth',2, 'MarkerSize', 15);
% plot(wavelength_vals, AA_w, '.', 'LineWidth',2, 'MarkerSize', 15);
% 
% legend('Land Loco + Land Env', ...
%        'Land Loco + Aquatic Env', ...
%        'Aquatic Loco + Land Env', ...
%        'Aquatic Loco + Aquatic Env');
% 
% xlabel('Wavelength');
% ylabel('Distance Traveled');
% grid on
% 
% % % PHASE
figure;
plot(phase_offset_vals, LL_ph, '.', 'LineWidth',2, 'MarkerSize', 15); hold on;
plot(phase_offset_vals, LA_ph, '.', 'LineWidth',2, 'MarkerSize', 15);
plot(phase_offset_vals, AL_ph, '.', 'LineWidth',2, 'MarkerSize', 15);
plot(phase_offset_vals, AA_ph, '.', 'LineWidth',2, 'MarkerSize', 15);

legend('Land Loco + Land Env', ...
       'Land Loco + Aquatic Env', ...
       'Aquatic Loco + Land Env', ...
       'Aquatic Loco + Aquatic Env');

xlabel('Phase Offset');
ylabel('Distance Traveled');
grid on