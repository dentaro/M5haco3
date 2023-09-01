// kira2.mml
#define TRACK	2
#define	TEMPO	240
#define	REST	1
#define	DO4	2
#define	SO4	3
#define	RA4	4
#define	FA4	5
#define	MI4	6
#define	RE4	7
#define	DO3	8
#define	SI3	9
#define	RA3	10
#define	FA3	11
#define	SO3	12
#define	L4	0
#define	L2	32
uint8_t len[]={8,16,0};
#define SQUARE_WAVE
uint16_t C[]={0,0,15289,10204,9091,11454,12135,13621,30578,16198,18182,22908,20408,0};
// uint16_t C[]={0,0,30578
// , 
// 25795
// , 
// 21129
// , 
// 16696
// , 
// 12605
// , 
// 8956
// , 
// 5840
// , 
// 3333
// , 
// 1497
// , 
// 376
// ,0,0};
// uint16_t C[]={22908, 21784, 20663, 19547, 18439, 17342, 16258, 15191, 14141, 13114, 12109, 11131, 10181, 9262, 8375, 7524, 6710, 5934, 5200, 4508, 3861, 3259, 2705, 2199,1744, 1339, 986, 687, 440, 248, 110, 28};
const char part1[] PROGMEM={
	DO4|L4,DO4|L4,SO4|L4,SO4|L4,RA4|L4,RA4|L4,SO4|L2,
	FA4|L4,FA4|L4,MI4|L4,MI4|L4,RE4|L4,RE4|L4,DO4|L2,
	0};
const char part2[] PROGMEM={
	DO3|L4,DO4|L4,MI4|L4,DO4|L4,FA4|L4,DO4|L4,MI4|L4,DO4|L4,
	RE4|L4,SI3|L4,DO4|L4,RA3|L4,FA3|L4,SO3|L4,DO3|L2,
	0};
const char part3[] PROGMEM={
	0};
