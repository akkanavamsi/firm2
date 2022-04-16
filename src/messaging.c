#include "messaging.h"

MSG_MEASUREMENT_GA measurement;
MSG_PARAMUPD_GA parameterUpdate;
MSG_FRMWUPD_GA firmwareUpdate;
MSG_CMSGDEV_GA commisioning;
MSG_DECMSGDEV_GA decommission;

//Test
void initPayload(void)
{
    measurement.Alt = 1005;
    measurement.AvgWDCos = 7;
    measurement.AvgWDSin = 4;
    measurement.BattV = 720;
    measurement.Cmp = 127;
    measurement.Curr = 120;
    measurement.Fq = 12;
    measurement.GasC = 3745;
    measurement.Hacc = 134;
    measurement.Lat = 4717.11399;
    measurement.Lgt = 00833.91590;
    measurement.MHum = 50;
    measurement.MPress = 101;
    measurement.MTemp = 250;
    measurement.Msr = 123;
    measurement.Ns = 8;
    measurement.Prec = 1345;
    measurement.SAvgWS = 13485;
    measurement.SpV = 2367;
    measurement.StdDevG = 129;
    measurement.StdDevSR = 237;
    measurement.StdDevWD = 45;
    measurement.StdDevWS = 89;
    measurement.Tilt = 127;
    measurement.Tsrc = 1;
    measurement.UnitStatus = 1234;
    measurement.VAvgWD = 2765;
    measurement.VAvgWS = 3456;
    measurement.Vacc = 12;
    measurement.Volt = 7200;
    measurement.header.type = 1;
    measurement.header.version = 1;
    measurement.header.timestamp = 63070000;
}


uint16_t measurement2Bytes(uint8_t * data)
{
    initPayload();
    DOUBLE_2_BYTES Double2Bytes;
    data[0] = measurement.header.type;
    data[1] = measurement.header.version;
    data[2] = (measurement.header.timestamp >> 24) & 0xFF;
    data[3] = (measurement.header.timestamp >> 16) & 0xFF;
    data[4] = (measurement.header.timestamp >> 8) & 0xFF;
    data[5] = (measurement.header.timestamp) & 0xFF;
    data[6] = (measurement.GasC >> 8) & 0xFF;
    data[7] = (measurement.GasC) & 0xFF;
    data[8] = (measurement.StdDevG >> 8) & 0xFF;
    data[9] = (measurement.StdDevG) & 0xFF;
    data[10] = (measurement.VAvgWS >> 8) & 0xFF;
    data[11] = (measurement.VAvgWS) & 0xFF;
    data[12] = (measurement.VAvgWD >> 8) & 0xFF;
    data[13] = (measurement.VAvgWD) & 0xFF;
    data[14] = (measurement.StdDevWD>> 8) & 0xFF;
    data[15] = (measurement.StdDevWD) & 0xFF;
    data[16] = (measurement.Msr>> 8) & 0xFF;
    data[17] = (measurement.Msr) & 0xFF;
    data[18] = (measurement.StdDevSR>> 8) & 0xFF;
    data[19] = (measurement.StdDevSR) & 0xFF;
    data[20] = (measurement.Prec>> 8) & 0xFF;
    data[21] = (measurement.Prec) & 0xFF;
    data[22] = (measurement.Cmp>> 8) & 0xFF;
    data[23] = (measurement.Cmp) & 0xFF;
    data[24] = (measurement.SAvgWS>> 8) & 0xFF;
    data[25] = (measurement.SAvgWS) & 0xFF;
    data[26] = (measurement.StdDevWS>> 8) & 0xFF;
    data[27] = (measurement.StdDevWS) & 0xFF;
    data[28] = measurement.AvgWDSin;
    data[29] = measurement.AvgWDCos;
    Double2Bytes.value = measurement.Lat;
    data[30] = Double2Bytes.bytes[7];
    data[31] = Double2Bytes.bytes[6];
    data[32] = Double2Bytes.bytes[5];
    data[33] = Double2Bytes.bytes[4];
    data[34] = Double2Bytes.bytes[3];
    data[35] = Double2Bytes.bytes[2];
    data[36] = Double2Bytes.bytes[1];
    data[37] = Double2Bytes.bytes[0];
    Double2Bytes.value = measurement.Lgt;
    data[38] = Double2Bytes.bytes[7];
    data[39] = Double2Bytes.bytes[6];
    data[40] = Double2Bytes.bytes[5];
    data[41] = Double2Bytes.bytes[4];
    data[42] = Double2Bytes.bytes[3];
    data[43] = Double2Bytes.bytes[2];
    data[44] = Double2Bytes.bytes[1];
    data[45] = Double2Bytes.bytes[0];
    data[46] = (measurement.Alt>> 8) & 0xFF;
    data[47] = (measurement.Alt) & 0xFF;
    data[48] = measurement.Fq;
    data[49] = measurement.Ns;
    data[50] = measurement.Hacc;
    data[51] = measurement.Vacc;
    data[52] = measurement.Tsrc;
    data[53] = (measurement.Tilt>> 8) & 0xFF;
    data[54] = (measurement.Tilt) & 0xFF;
    data[55] = (measurement.BattV>> 8) & 0xFF;
    data[56] = (measurement.BattV) & 0xFF;
    data[57] = (measurement.SpV>> 8) & 0xFF;
    data[58] = (measurement.SpV) & 0xFF;
    data[59] = (measurement.UnitStatus >> 24) & 0xFF;
    data[60] = (measurement.UnitStatus >> 16) & 0xFF;
    data[61] = (measurement.UnitStatus >> 8) & 0xFF;
    data[62] = (measurement.UnitStatus) & 0xFF;
    data[63] = (measurement.Curr>> 8) & 0xFF;
    data[64] = (measurement.Curr) & 0xFF;
    data[65] = (measurement.Volt>> 8) & 0xFF;
    data[66] = (measurement.Volt) & 0xFF;
    data[67] = (measurement.MTemp>> 8) & 0xFF;
    data[68] = (measurement.MTemp) & 0xFF;
    data[69] = (measurement.MPress>> 8) & 0xFF;
    data[70] = (measurement.MPress) & 0xFF;
    data[71] = measurement.MHum;
    return MEASUREMENT_GA_SIZE + LORA_HEADER_SIZE;
}

uint16_t parameterUpdate2Bytes(uint8_t * data)
{
    DOUBLE_2_BYTES Double2Bytes;
    data[0] = parameterUpdate.header.type;
    data[1] = parameterUpdate.header.version;
    data[2] = (parameterUpdate.header.timestamp >> 24) & 0xF;
    data[3] = (parameterUpdate.header.timestamp >> 16) & 0xF;
    data[4] = (parameterUpdate.header.timestamp >> 8) & 0xF;
    data[5] = (parameterUpdate.header.timestamp) & 0xF;
    data[6] = (parameterUpdate.ParamN >> 8) & 0xF;
    data[7] = (parameterUpdate.ParamN) & 0xF;
    Double2Bytes.value = parameterUpdate.Param;
    data[8] = Double2Bytes.bytes[7];
    data[9] = Double2Bytes.bytes[6];
    data[10] = Double2Bytes.bytes[5];
    data[11] = Double2Bytes.bytes[4];
    data[12] = Double2Bytes.bytes[3];
    data[13] = Double2Bytes.bytes[2];
    data[14] = Double2Bytes.bytes[1];
    data[15] = Double2Bytes.bytes[0];
    data[16] = parameterUpdate.Status;
    return MSG_PARAMUPD_GA_SIZE + LORA_HEADER_SIZE;
}

uint16_t firmwareUpdate2Bytes(uint8_t * data)
{
    data[0] = firmwareUpdate.header.type;
    data[1] = firmwareUpdate.header.version;
    data[2] = (firmwareUpdate.header.timestamp >> 24) & 0xF;
    data[3] = (firmwareUpdate.header.timestamp >> 16) & 0xF;
    data[4] = (firmwareUpdate.header.timestamp >> 8) & 0xF;
    data[5] = (firmwareUpdate.header.timestamp) & 0xF;
    data[12] = firmwareUpdate.Status;
    return MSG_FRMWUPD_GA_SIZE + LORA_HEADER_SIZE;
}

uint16_t commisioning2Bytes(uint8_t * data)
{
    DOUBLE_2_BYTES Double2Bytes;
    data[0] = commisioning.header.type;
    data[1] = commisioning.header.version;
    data[2] = (commisioning.header.timestamp >> 24) & 0xF;
    data[3] = (commisioning.header.timestamp >> 16) & 0xF;
    data[4] = (commisioning.header.timestamp >> 8) & 0xF;
    data[5] = (commisioning.header.timestamp) & 0xF;
    data[6] = (commisioning.FrmwGV>> 8) & 0xF;
    data[7] = (commisioning.FrmwGV) & 0xF;
    data[8] = (commisioning.BootGV>> 8) & 0xF;
    data[9] = (commisioning.BootGV) & 0xF;
    data[10] = (commisioning.FrmwWV>> 8) & 0xF;
    data[11] = (commisioning.FrmwWV) & 0xF;
    data[12] = (commisioning.FrmwrMV>> 8) & 0xF;
    data[13] = (commisioning.FrmwrMV) & 0xF;
    data[14] = commisioning.Gen;
    data[15] = commisioning.Utype;
    data[16] = commisioning.R;
    data[17] = (commisioning.Tno>> 8) & 0xF;
    data[18] = (commisioning.Tno) & 0xF;
    Double2Bytes.value = commisioning.Lat;
    data[19] = Double2Bytes.bytes[7];
    data[20] = Double2Bytes.bytes[6];
    data[21] = Double2Bytes.bytes[5];
    data[22] = Double2Bytes.bytes[4];
    data[23] = Double2Bytes.bytes[3];
    data[24] = Double2Bytes.bytes[2];
    data[25] = Double2Bytes.bytes[1];
    data[26] = Double2Bytes.bytes[0];
    Double2Bytes.value = commisioning.Lgt;
    data[27] = Double2Bytes.bytes[7];
    data[28] = Double2Bytes.bytes[6];
    data[29] = Double2Bytes.bytes[5];
    data[30] = Double2Bytes.bytes[4];
    data[31] = Double2Bytes.bytes[3];
    data[32] = Double2Bytes.bytes[2];
    data[33] = Double2Bytes.bytes[1];
    data[34] = Double2Bytes.bytes[0];
    return MSG_CMSGDEV_GA_SIZE + LORA_HEADER_SIZE;
}

uint16_t decommission2Bytes(uint8_t * data)
{
    data[0] = decommission.header.type;
    data[1] = decommission.header.version;
    data[2] = (decommission.header.timestamp >> 24) & 0xF;
    data[3] = (decommission.header.timestamp >> 16) & 0xF;
    data[4] = (decommission.header.timestamp >> 8) & 0xF;
    data[5] = (decommission.header.timestamp) & 0xF;
    data[6] = (decommission.header.timestamp) & 0xF;
    data[7] = decommission.Status;
    return MSG_DECMSGDEV_GA_SIZE + LORA_HEADER_SIZE;
}