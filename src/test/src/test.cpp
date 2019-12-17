#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <linux/can/bcm.h>

/**kd write this code in 2019.12.2**/
/**I do not need to change the can config**/
/**all related can config setted before**/

#define command "/sbin/ip link set can0 type can bitrate 500000"
#define up "ifconfig can0 up"
#define down "ifconfig can0 down"

//using namespace std;

int main ()
{

    system(down);
    system(command);
    system(up);


    int s,nbytes;//init two variable
    //sockaddr_can is defined in can.h which reflect the sockaddr structure for CAN sockets
    struct sockaddr_can addr;
    //Interface request structure used for socket ioctl's
    struct ifreq ifr;
    //basic CAN frame structure
    /*
    /*struct can_frame {
    canid_t can_id;  /* 32 bit CAN_ID + EFF/RTR/ERR flags */
/*  __u8    can_dlc; /* frame payload length in byte (0 .. CAN_MAX_DLEN) */
/*  __u8    __pad;   /* padding */
/*  __u8    __res0;  /* reserved / padding */
/*  __u8    __res1;  /* reserved / padding */
/*  __u8    data[CAN_MAX_DLEN] __attribute__((aligned(8)));
    */
    struct can_frame frame[2]={{0}};

    //init related finished
    //create a socket model,this is the first step to use linux can device
    s=socket(PF_CAN,SOCK_RAW,CAN_RAW);
    //by strcpy set ifr_name
    strcpy(ifr.ifr_name,"can0");

    /* name -> if_index mapping, spcify the can device	second step to use*/
    ioctl(s,SIOGIFINDEX,&ifr);

    //#define AF_CAN		PF_CAN
    //#define PF_CAN		29	/* Controller Area Network.  */
    addr.can_family=AF_CAN;
    //# define ifr_ifindex	ifr_ifru.ifru_ivalue    /* interface index      */
    addr.can_ifindex=ifr.ifr_ifindex;

    //bind the socket with can0
    bind(s,(struct sockaddr *)&addr,sizeof(addr));

    //only send can bus message, don't receive message
    setsockopt(s, SOL_CAN_RAW, CAN_RAW_FILTER, NULL, 0);
    //define can data bit
    frame[0].can_id = 0x666;
    frame[0].can_dlc = 8;
    frame[0].data[0] = 0x40;
    frame[0].data[1] = 0x20;
    frame[0].data[2] = 0x10;
    frame[0].data[3] = 0x00;
    frame[0].data[4] = 0x03;
    frame[0].data[5] = 0x04;
    frame[0].data[6] = 0x05;

    while(1)
    {
        //frame[0].data[7]++;


        //send can bus message from frame[0]
        nbytes = write(s, &frame[0], sizeof(frame[0]));
        if(nbytes != sizeof(frame[0]))
        {
            printf("Send Error frame[0]\n!");
            break;
        }
        else
        {
            printf("Send frame success\n");
        }
        sleep(8);
//        //receive can bus message and then save it in frame[1]
//        nbytes = read(s, &frame[1], sizeof(frame[1]));
//        printf("the nbytes:%d\n", nbytes);
//        //printf("length:%d", sizeof(frame[1]));
//        printf("length:%d",int(sizeof(frame[1])));
//        printf("ID=0x%X DLC=%d\n", frame[1].can_id, frame[1].can_dlc);
//        printf("data0=0x%02x\n",frame[1].data[0]);
//        printf("data1=0x%02x\n",frame[1].data[1]);
//        printf("data2=0x%02x\n",frame[1].data[2]);
//        printf("data3=0x%02x\n",frame[1].data[3]);
//        printf("data4=0x%02x\n",frame[1].data[4]);
//        printf("data5=0x%02x\n",frame[1].data[5]);
//        printf("data6=0x%02x\n",frame[1].data[6]);
//        printf("data7=0x%02x\n",frame[1].data[7]);
//        sleep(1);
    }
    close(s);
    printf("if this code execute the line...\n");
    return 0;
}
