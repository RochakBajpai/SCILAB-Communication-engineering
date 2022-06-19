BasebandFrequency = 10e3;
CarrierFrequency = 100e3;
SamplingFrequency = 1e6;
BufferLength = 200;
n = 0:(BufferLength - 1);
BasebandSignal = sin(2*%pi*n / (SamplingFrequency/BasebandFrequency));
CarrierSignal = sin(2*%pi*n / (SamplingFrequency/CarrierFrequency));
subplot(5,1,1)
plot(n, BasebandSignal)
subplot(5,1,2)
plot(n, CarrierSignal)
ModulatedSignal_AM = CarrierSignal .* (1+BasebandSignal);
subplot(5,1,3)
plot(n, BasebandSignal)
subplot(5,1,4)
plot(n, ModulatedSignal_AM)
HalfBufferLength = BufferLength/2;
HorizAxisIncrement = (SamplingFrequency/2)/HalfBufferLength;
DFTHorizAxis = 0:HorizAxisIncrement:((SamplingFrequency/2)-HorizAxisIncrement);
AM_DFT = fft(ModulatedSignal_AM);
AM_DFT_magnitude = abs(AM_DFT);
subplot(5,1,5)
plot(DFTHorizAxis, AM_DFT_magnitude(1:HalfBufferLength))
xlabel("Frequency (Hz)")
