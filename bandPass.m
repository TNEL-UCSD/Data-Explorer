function y=bandPass(x,low,high,Fs)
% bandPass signal using a 2nd order butterworth filter
% x = signal
% low = the cutoff frequency at the lower end
% high = the cutoff frequency at the higher end
% Fs = the sampling rate

dim=2;

d=fdesign.bandpass('N,F3dB1,F3dB2',2,low,high,Fs);
Hd=design(d,'butter');
y=filter(Hd,x,dim);