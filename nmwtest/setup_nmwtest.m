%% nmwtest_param - DSPBA Design Parameters Start
clear nmwtest_param; 

%% System Parameters
nmwtest_param.ChanCount   = 2;                    % How many data channels
nmwtest_param.ClockRate   = 62.500;            % The system clock rate in MHz
nmwtest_param.SampleRate  = 62.50000;            % The data rate per channel in MSps (mega-samples per second)
nmwtest_param.ClockMargin = 0.0;                  % Adjust the pipelining effort

%% Data Type Specification
nmwtest_param.input_word_length      = 14;         % Input data: bit width
nmwtest_param.input_fraction_length  = 10;         % Input data: fraction width

nmwtest_param.output_word_length     = 14;         % Output data: bit width
nmwtest_param.output_fraction_length = 10;         % Output data: fraction width


%% ModelIP setup
%% Filter 1
nmwtest_param.filter1.SampleRate            = nmwtest_param.SampleRate;         % Input rate at filter1
nmwtest_param.filter1.FilterLength          = 47;                          % Number of Taps
nmwtest_param.filter1.Interpolation         = 2;                           % Interpolation rate  
nmwtest_param.filter1.coeff_word_length     = 13;                          % filter1 coefficient: bit width
nmwtest_param.filter1.coeff_fraction_length = 9;                          % filter1 coefficient: fraction width 
nmwtest_param.filter1.base_addr             = 512;                         % filter1 coefficient address map (start)

nmwtest_param.filter1.coeffs(1,:) = fi(fir1(nmwtest_param.filter1.FilterLength-1,   0.1,      'DC-1' ),1,nmwtest_param.filter1.coeff_word_length,nmwtest_param.filter1.coeff_fraction_length); 
nmwtest_param.filter1.coeffs(2,:) = fi(fir1(nmwtest_param.filter1.FilterLength-1,  [0.1 0.5], 'DC-0' ),1,nmwtest_param.filter1.coeff_word_length,nmwtest_param.filter1.coeff_fraction_length);



%% Simulation Parameters
nmwtest_param.SampleTime  = 1;                    % One unit in Simulink simulation is one clock cycle 
nmwtest_param.endTime     = 1500;                 % How many simulation clock cycles

%% Stimulus data setup
nmwtest_param.inputdata=zeros(nmwtest_param.ChanCount,nmwtest_param.endTime+1);
for chan=1:nmwtest_param.ChanCount
    nmwtest_param.inputdata(chan,:) = sin((0:nmwtest_param.endTime)*pi/10*chan)/chan;
end;

%% Derived Parameters 
nmwtest_param.Period          = nmwtest_param.ClockRate / nmwtest_param.SampleRate;           % Clock cycles between consecutive data samples for a particular channel
nmwtest_param.ChanWireCount   = ceil(nmwtest_param.ChanCount/nmwtest_param.Period);           % How many wires are needed to support the specified number of channels?
nmwtest_param.ChanCycleCount  = ceil(nmwtest_param.ChanCount/nmwtest_param.ChanWireCount);    % Range of the channel signal
%% DSPBA Design Parameters End
