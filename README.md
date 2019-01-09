# Reprogramming a POV LED Fan

All relevant work done by turinturambar88 at https://github.com/turinturambar88. Special thanks to him for figuring this out!

His original blogspot post can be found here:

http://zjembedded.blogspot.com/2015/07/led-pov-fan-update.html

## How to Use

Clone the repository, and add/change the strings in `pov_driver.py` and run using:

```sh
$ python3 pov_driver.py
```

This will generate the directory and the arduino .ino file.

Upload the .ino file found in `pov_fan_arduino_sketch` to the Arduino UNO and make the appropriate connections shown below:

With the pins on the fan facing the __right__ side, from top to bottom:


Fan  <---> Arduino

> DATA  <---> A4

> VCC   <---> 3.3V

> CLK   <---> A5

> GND   <---> GND



_Note_: The last pin on the fan is not used.


Run the sketch and disconnect the fan.
