/**
 * @file tkl_hci.c
 * @brief this file was auto-generated by tuyaos v&v tools, developer can add implements between BEGIN and END
 *
 * @warning: changes between user 'BEGIN' and 'END' will be keeped when run tuyaos v&v tools
 *           changes in other place will be overwrited and lost
 *
 * @copyright Copyright 2020-2021 Tuya Inc. All Rights Reserved.
 *
 */

// --- BEGIN: user defines and implements ---

#include "tuya_error_code.h"
#include <stdint.h>
#include "log.h"
#include "hci.h"
#include "tkl_hci.h"
// --- END: user defines and implements ---

#define TKL_HCI_SEND_DUMP   0

#define htons(x)  ((uint16_t)((((x) & (uint16_t)0x00ffU) << 8) | (((x) & (uint16_t)0xff00U) >> 8)))
#define ntohs(x)  htons(x)

/****************************************************************************
 * Private Type Declarations
 ****************************************************************************/
#pragma pack(push)

#pragma pack(1)
struct ble_hci_cmd_t{
    uint16_t opcode;
    uint8_t length;
    uint8_t data[0];
};

struct ble_hci_acl_data_t{
    uint16_t hdl_flags;
    uint16_t length;
    uint8_t data[0];
};

struct ble_hci_evt_t{
    uint8_t opcode;
    uint8_t length;
    uint8_t data[0];
};
#pragma pack(pop)

/**
 * @brief   Function for initializing the bluetooth host-controller interface
 * @param   void
 * @return  SUCCESS             Initialized successfully.
 *          ERROR
 * */
OPERATE_RET tkl_hci_init(void)
{
    //LOG(LOG_LVL_INFO, "%s\r\n",__func__);
    return OPRT_OK;
}

/**
 * @brief   Function for de-initializing the bluetooth host-controller interface
 * @param   void
 * @return  SUCCESS             De-initialized successfully.
 *          ERROR
 * */
OPERATE_RET tkl_hci_deinit(void)
{
    //LOG(LOG_LVL_INFO, "%s\r\n",__func__);
    return OPRT_OK;
}

/**
 * @brief   [Linux/Android] Function for reseting the bluetooth host-controller interface
 *          Try to recover socket or reopen uart/usb interface.
 * @param   void
 * @return  SUCCESS             Reset successfully.
 *          ERROR
 * @note    [Special Interface] If running in RTOS, we may not support this feature. 
 *          And you can report OPRT_NOT_SUPPORT if you dont need it.
 * */
OPERATE_RET tkl_hci_reset(void)
{
    //LOG(LOG_LVL_INFO, "%s\r\n",__func__);

    return OPRT_OK;
}

/**
 * @brief   Send HCI-Command Packet to controller from host.
 *          The HCI Command packet is used to send commands to the Controller from
 *          the Host. The format of the HCI Command packet is shown @Rule
 *          Controllers shall be able to accept HCI Command packets with up to 255 bytes
 *          of data excluding the HCI Command packet header. The HCI Command packet
 *          header is the first 3 octets of the packet.
 *
 * @param   p_buf               Follow Core Spec. Refer to @Rule
 *          length              Indicate the length of the buffer. it can be "opcode + 1(len) + Parameter len";
 * @return  SUCCESS             Initialized successfully.
 *          ERROR
 *
 * @Spec    BLUETOOTH CORE SPECIFICATION Version 5.2 | Vol 4, Part E, 5-4.1
 * @Rule        2 bytes              1 byte              1 byte           N bytes
 *          OpCode(OCF+OGF) + Parameter Total Length + Parameter 0 ... + Parameter N
 * @Note    The OpCode Group Field (OGF), OpCode Command Field (OCF). 
 * */
OPERATE_RET tkl_hci_cmd_packet_send(const uint8_t *p_buf, uint16_t buf_len)
{
    //LOG(LOG_LVL_INFO, "%s\r\n",__func__);

    if (p_buf == NULL || buf_len < 2)
    {
        return OPRT_INVALID_PARM;
    }
    struct ble_hci_cmd_t* cmd = (struct ble_hci_cmd_t*)p_buf;
    //hexdump(LOG_LVL_INFO, "=>", (void *)p_buf, buf_len);
#if (TKL_HCI_SEND_DUMP == 1)
    LOG(LOG_LVL_INFO, "%s: %d\r\n",__func__, buf_len);
    for (int i = 0; i < buf_len; i++) {
        LOG(LOG_LVL_INFO, "%02x ", p_buf[i]);
        if ((i % 63 == 0) && (i != 0))
            LOG(LOG_LVL_INFO, "\r\n");
    }
    LOG(LOG_LVL_INFO, "\r\n");
#endif // TKL_HCI_SEND_DUMP == 1

    return hci_cmd_received_override(cmd->opcode, cmd->length, cmd->data);
}

/**
 * @brief   Send HCI-Command Packet to controller from host.
 *           HCI ACL Data packets are used to exchange data between the Host and Controller.
 *           Hosts and Controllers shall be able to accept HCI ACL Data packets with up to
 *           27 bytes of data excluding the HCI ACL Data packet header on
 *           Connection_Handles associated with an LE-U logical link.The HCI ACL Data
 *           packet header is the first 4 octets of the packet.
 *
 * @param   p_buf               Follow Core Spec. Refer to @Rule
 *          length              Indicate the length of the buffer. it can be "Handle + PB Flag 
 *                              + PC Flag + Data Total Length";
 * @return  SUCCESS             Initialized successfully.
 *          ERROR
 *
 * @Spec    BLUETOOTH CORE SPECIFICATION Version 5.2 | Vol 4, Part E, 5-4.2
 * @Rule                                  2 bytes                             2 bytes         N bytes
 *          (Connection Handle + PB Flag(12-14bit) + PC Flag(14-16bit)) + Data Total Length + Data
 * @Note    PB Flag: Packet_Boundary_Flag; PB Flag: Broadcast_Flag;
 * */
OPERATE_RET tkl_hci_acl_packet_send(const uint8_t *p_buf, uint16_t buf_len)
{
    //LOG(LOG_LVL_INFO, "%s %d\r\n",__func__, buf_len);

    if (p_buf == NULL || buf_len < 2)
    {
        return OPRT_INVALID_PARM;
    }
    struct ble_hci_acl_data_t* acl_data = (struct ble_hci_acl_data_t*)p_buf;
    //hexdump(LOG_LVL_INFO, "=>", (void *)p_buf, buf_len);
#if (TKL_HCI_SEND_DUMP == 1)
    LOG(LOG_LVL_INFO, "%s: %d\r\n",__func__, buf_len);
    for (int i = 0; i < buf_len; i++) {
        LOG(LOG_LVL_INFO, "%02x ", p_buf[i]);
        if ((i % 63 == 0) && (i != 0))
            LOG(LOG_LVL_INFO, "\r\n");
    }
    LOG(LOG_LVL_INFO, "\r\n");
#endif // TKL_HCI_SEND_DUMP == 1

    return hci_acl_tx_data_received_override(acl_data->hdl_flags, acl_data->length, acl_data->data);
}

/**
 * @brief   Register the hci callback, while receiving "hci-event" or "acl-packet" data from controller,
 *          we will post these data into host stack.
 *          hci_evt_cb: The Host shall be able to accept HCI Event packets with up to 255 octets of data
 *          excluding the HCI Event packet header
 *          acl_pkt_cb: Refer to @tkl_hci_acl_packet_send
 *
 * @param   hci_evt_cb          Indicate the HCI Event callback.
 *          acl_pkt_cb          Indicate the ACL packet callback.
 * @return  SUCCESS             Initialized successfully.
 *          ERROR
 *
 * @Spec    BLUETOOTH CORE SPECIFICATION Version 5.2 | Vol 4, Part E, 5-4.4
 *          For More Event And Commnad Details:
 *          BLUETOOTH CORE SPECIFICATION Version 5.2 | Vol 4, Part E, 7-x
 *
 * @Rule    hci_evt_cb:
               1 byte        1 byte                1 byte                       N bytes
 *          Event Code + Parameter Total Length+ Event Parameter 0 + ... + Event Parameter N
 * */
OPERATE_RET tkl_hci_callback_register(const TKL_HCI_FUNC_CB hci_evt_cb, const TKL_HCI_FUNC_CB acl_pkt_cb)
{
    //LOG(LOG_LVL_INFO, "%s\r\n",__func__);

    return hci_to_host_callback_register(hci_evt_cb, acl_pkt_cb);
}

