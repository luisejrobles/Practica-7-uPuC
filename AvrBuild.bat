@ECHO OFF
"D:\Program Files (x86)\AVRStudio4\AvrAssembler2\avrasm2.exe" -S "C:\Micros\P7\labels.tmp" -fI -W+ie -o "C:\Micros\P7\P7.hex" -d "C:\Micros\P7\P7.obj" -e "C:\Micros\P7\P7.eep" -m "C:\Micros\P7\P7.map" "C:\Micros\P7\p7.asm"
