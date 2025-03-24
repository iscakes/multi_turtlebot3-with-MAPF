# /*
#  * # LED控制
#  * ## b 亮度 [0-255], 不允许设置 10 ('\n')!!!
#  * ## s 速度 [11,16959], 越小越快，初始化默认1000
#  * ## c 颜色 [0x000000,0xFFFFFF], 初始化白色0xFFFFFF
#  * ## m 模式 [0-55]
#  * * 0: 静态单色
#  * * 12: 彩虹全彩转圈Rainbow Cycle
#  * * 3: 转圈color wipe
#  * * 44: 彗星尾巴Comet
#  * */

uint8 red
uint8 green
uint8 blue
uint32 rgb
uint8 brightness
uint8 mode
uint16 speed
