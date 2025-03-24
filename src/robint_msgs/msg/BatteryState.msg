#battery error code
uint8 UBAT_ERR_NULL = 0
uint8 UBAT_ERR_CHARGER_OVRE_CURRENT = 1
uint8 UBAT_ERR_DISCHARGE_OVRE_CURRENT = 2
uint8 UBAT_ERR_SHORT_CIRCUIT = 3
uint8 UBAT_ERR_CELL_OPEN_CIRCUIT = 4
uint8 UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT = 5
uint8 UBAT_ERR_CELL_OVER_VOLTAGEM = 6
uint8 UBAT_ERR_CELL_UNDER_VOLTAGE = 7
uint8 UBAT_ERR_ALL_OVER_VOLTAGE = 8
uint8 UBAT_ERR_ALL_UNDER_VOLTAGE = 9
uint8 UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT = 10
uint8 UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT = 11
uint8 UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT = 12
uint8 UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_lOWER_LIMIT = 13
uint8 UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT = 14
uint8 UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT = 15

float32 soc_percent       #/* 电量, [0-100],小于20%提示充电,小于10%报警, 小于5%提示即将自动关机 */
float32 voltage_v         #/* 电压, 伏特 */
float32 current_a         #/* 电流, 安培: 负数表示电池向外供电, 正数表示电池被充电 */
float32 temperature_c     #/* 温度, 摄氏度 */
uint32 cycle_times    #/* 充电循环次数 */
uint8 error_code        #/* 错误编码 */
bool is_charging        #/* 是否充电中 */
bool charging_state     #/*新的充电参数：用来判断是否入桩成功*/