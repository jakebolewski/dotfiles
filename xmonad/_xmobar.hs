Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#969896",
    position = TopW L 100, 
    lowerOnStart = True,
    commands = [
        Run MultiCpu ["-t","Cpu: <total0> <total1>","-L","30","-H","60","-h","#CC6666","-l","#B5BD68","-n","#F0C674","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#CC6666","-l","#B5BD68","-n","#F0C674"] 10,
        Run Network "wlan0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#CC6666","-l","#B5BD68","-n","#F0C674"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%  %memory%  %wlan0%  <fc=#C5C8C6>%date%</fc>"
}
