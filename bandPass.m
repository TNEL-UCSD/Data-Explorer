function y=bandPass(x,low,high,Fs)
dim=2;

d=fdesign.bandpass('N,F3dB1,F3dB2',2,low,high,Fs);
Hd=design(d,'butter');
y=filter(Hd,x,dim);