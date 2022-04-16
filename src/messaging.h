#ifndef MESSAGING_H
#define	MESSAGING_H

#include <stdint.h>
#include "message_types.h"

typedef union
{
    long double value;
    uint8_t bytes[8];
}DOUBLE_2_BYTES;

extern MSG_MEASUREMENT_GA measurement;
extern MSG_PARAMUPD_GA parameterUpdate;
extern MSG_FRMWUPD_GA firmwareUpdate;
extern MSG_CMSGDEV_GA commisioning;
extern MSG_DECMSGDEV_GA decommission;

uint16_t measurement2Bytes(uint8_t * data);
uint16_t parameterUpdate2Bytes(uint8_t * data);
uint16_t firmwareUpdate2Bytes(uint8_t * data);
uint16_t commisioning2Bytes(uint8_t * data);
uint16_t decommission2Bytes(uint8_t * data);

#endif	/* MESSAGING_H */

