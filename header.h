#include<iostream>
#include<fstream>
#include <string.h>
#include <sys/socket.h>
#include <cstring>
#include <netdb.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <signal.h>
#define PORT 8080

using namespace std;

#define MAX_length 20

using namespace std;

char admin[MAX_length]="Tour.txt";
char user[MAX_length]="Reservation.txt";

struct tour{
 	char admin_place[MAX_length],admin_code[MAX_length],admin_country[MAX_length],admin_days[MAX_length],admin_prices[MAX_length],admin_payments[MAX_length];
 	char user_phone[MAX_length],user_name[MAX_length],user_people[MAX_length],user_date[MAX_length],user_status[MAX_length],user_dcode[MAX_length],user_prices[MAX_length],user_payments[MAX_length];
};

