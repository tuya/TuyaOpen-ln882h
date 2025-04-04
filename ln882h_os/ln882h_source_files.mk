
#LN882H_SRCS_TMP += ln882h/components/ble/ble_api/gap_gatt/src/ln_app_gap.c
#LN882H_SRCS_TMP += ln882h/components/ble/ble_api/gap_gatt/src/ln_app_gatt.c
#LN882H_SRCS_TMP += ln882h/init/ble_usr_app/app_callback/ln_gap_callback.c
#LN882H_SRCS_TMP += ln882h/init/ble_usr_app/app_callback/ln_gatt_callback.c
#LN882H_SRCS_TMP += ln882h/init/ble_usr_app/usr_ble_app.c

LN882H_SRCS_TMP += ln882h/components/ble/ble_arch/ble_arch_main.c
LN882H_SRCS_TMP += ln882h/components/ble/ble_arch/ble_port.c
LN882H_SRCS_TMP += ln882h/components/fota/ota_agent/ota_image.c
LN882H_SRCS_TMP += ln882h/components/fota/ota_agent/ota_port.c
LN882H_SRCS_TMP += ln882h/components/fs/kv/kv/ln_kv.c
LN882H_SRCS_TMP += ln882h/components/fs/kv/kv_port/ln_kv_port.c
LN882H_SRCS_TMP += ln882h/components/fs/nvds/ln_nvds.c
LN882H_SRCS_TMP += ln882h/components/fs/partition_mgr/flash_partition_mgr.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS_Adapter/freertos_common.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS_Adapter/freertos_cpuusage.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS_Adapter/freertos_debug.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS_Adapter/freertos_mutex.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS_Adapter/freertos_queue.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS_Adapter/freertos_semaphore.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS_Adapter/freertos_thread.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS_Adapter/freertos_timer.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS/hooks.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS/Source/event_groups.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS/Source/list.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS/Source/portable/MemMang/heap_5.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS/Source/queue.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS/Source/tasks.c
LN882H_SRCS_TMP += ln882h/components/kernel/FreeRTOS/Source/timers.c
LN882H_SRCS_TMP += ln882h/components/libc/newlib_stub.c
LN882H_SRCS_TMP += ln882h/components/net/dhcpd/dhcpd.c
LN882H_SRCS_TMP += ln882h/components/net/dhcpd/dhcp_packet.c
LN882H_SRCS_TMP += ln882h/components/net/dhcpd/ip_allocator.c
LN882H_SRCS_TMP += ln882h/components/net/iperf/iperf.c
LN882H_SRCS_TMP += ln882h/components/serial/serial.c
LN882H_SRCS_TMP += ln882h/components/utils/crc16.c
LN882H_SRCS_TMP += ln882h/components/utils/crc32.c
LN882H_SRCS_TMP += ln882h/components/utils/debug/CmBacktrace/cm_backtrace.c
LN882H_SRCS_TMP += ln882h/components/utils/debug/ln_assert.c
LN882H_SRCS_TMP += ln882h/components/utils/debug/log.c
LN882H_SRCS_TMP += ln882h/components/utils/fifo/fifobuf.c
LN882H_SRCS_TMP += ln882h/components/utils/ln_aes.c
LN882H_SRCS_TMP += ln882h/components/utils/ln_misc.c
LN882H_SRCS_TMP += ln882h/components/utils/ln_psk_calc.c
LN882H_SRCS_TMP += ln882h/components/utils/ln_sha1.c
LN882H_SRCS_TMP += ln882h/components/utils/power_mgmt/ln_pm.c
LN882H_SRCS_TMP += ln882h/components/utils/reboot_trace/reboot_trace.c
LN882H_SRCS_TMP += ln882h/components/utils/runtime/runtime.c
LN882H_SRCS_TMP += ln882h/components/utils/system_parameter.c
LN882H_SRCS_TMP += ln882h/components/utils/wrap_stdio.c
LN882H_SRCS_TMP += ln882h/components/wifi/wifi_lib_import/wifi_port.c
LN882H_SRCS_TMP += ln882h/components/wifi/wifi_manager/wifi_manager.c
LN882H_SRCS_TMP += ln882h/init/ate/ln_ty_ate.c
LN882H_SRCS_TMP += ln882h/init/main.c
LN882H_SRCS_TMP += ln882h/init/serial_hw.c
LN882H_SRCS_TMP += ln882h/init/usr_app.c
LN882H_SRCS_TMP += ln882h/init/usr_ultra_sleep.c
LN882H_SRCS_TMP += ln882h/init/drv_adc_measure.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_adc.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_adv_timer.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_cache.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_clock.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_common.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_efuse.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_ext.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_flash.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_gpio.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_interrupt.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_misc.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_qspi.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_rtc.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_timer.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_trng.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_uart.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_wdt.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_spi.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_aes.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_dma.c
LN882H_SRCS_TMP += ln882h/mcu/driver_ln882h/hal/hal_i2c.c
LN882H_SRCS_TMP += ln882h/mcu/ln882h/system_ln882h.c
LN882H_SRCS_TMP += ln882h/startup/startup_ln882h_gcc.c

# add ringbuffer support
LN882H_SRCS_TMP += ln882h/components/ringbuffer/rb.c
LN882H_INCLUDES_TMP += ln882h/components/ringbuffer/

LN882H_INCLUDES_TMP += ln882h/cfg
LN882H_INCLUDES_TMP += ln882h/components
LN882H_INCLUDES_TMP += ln882h/components/ble
#LN882H_INCLUDES_TMP += ln882h/components/ble/ble_api/gap_gatt/api
#LN882H_INCLUDES_TMP += ln882h/components/ble/ble_api/profiles/bas
#LN882H_INCLUDES_TMP += ln882h/components/ble/ble_api/profiles/dis
#LN882H_INCLUDES_TMP += ln882h/components/ble/ble_api/profiles/hid
LN882H_INCLUDES_TMP += ln882h/components/ble/ble_arch
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ahi/api
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/api
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/inc
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/gap/gapc
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/gap/gapm
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/gatt
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/gatt/attc
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/gatt/attm
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/gatt/atts
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/gatt/gattc
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/gatt/gattm
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/l2c/l2cc
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/hl/src/l2c/l2cm
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/ll/api
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/ll/src
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/ll/src/llc
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/ll/src/lld
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/ble/ll/src/llm
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/em/api
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/hci/api
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/hci/src
LN882H_INCLUDES_TMP += ln882h/components/ble/mac/sch/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/aes/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/aes/src
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/common/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/dbg/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/dbg/src
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/display/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/display/src
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/ecc_p256/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/h4tl/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/ke/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/ke/src
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/lib_ver/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/nvds/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/patch/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/rf/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/rwip/api
LN882H_INCLUDES_TMP += ln882h/components/ble/modules/rwip/src
LN882H_INCLUDES_TMP += ln882h/components/fota/ota_agent
LN882H_INCLUDES_TMP += ln882h/components/fs/kv/kv
LN882H_INCLUDES_TMP += ln882h/components/fs/kv/kv_port
LN882H_INCLUDES_TMP += ln882h/components/fs/nvds
LN882H_INCLUDES_TMP += ln882h/components/fs/partition_mgr
LN882H_INCLUDES_TMP += ln882h/components/kernel
LN882H_INCLUDES_TMP += ln882h/components/kernel/FreeRTOS_Adapter
LN882H_INCLUDES_TMP += ln882h/components/kernel/FreeRTOS/Source/include
LN882H_INCLUDES_TMP += ln882h/components/kernel/FreeRTOS/Source/portable/GCC/ARM_CM4F
LN882H_INCLUDES_TMP += ln882h/components/kernel/osal
LN882H_INCLUDES_TMP += ln882h/components/libc
LN882H_INCLUDES_TMP += ln882h/components/ln_at
LN882H_INCLUDES_TMP += ln882h/components/ln_at/adapter
LN882H_INCLUDES_TMP += ln882h/components/ln_at/cmd
LN882H_INCLUDES_TMP += ln882h/components/ln_at_cmd
LN882H_INCLUDES_TMP += ln882h/components/ln_at/parser
LN882H_INCLUDES_TMP += ln882h/components/ln_at/transfer
LN882H_INCLUDES_TMP += ln882h/components/net/dhcpd
LN882H_INCLUDES_TMP += ln882h/components/net/httpsclient/inc
LN882H_INCLUDES_TMP += ln882h/components/net/iperf
LN882H_INCLUDES_TMP += ln882h/components/net/port/ln_osal/include
LN882H_INCLUDES_TMP += ln882h/components/net/ping
LN882H_INCLUDES_TMP += ln882h/components/serial
LN882H_INCLUDES_TMP += ln882h/components/utils
LN882H_INCLUDES_TMP += ln882h/components/utils/debug
LN882H_INCLUDES_TMP += ln882h/components/utils/debug/CmBacktrace
LN882H_INCLUDES_TMP += ln882h/components/utils/fifo
LN882H_INCLUDES_TMP += ln882h/components/utils/power_mgmt
LN882H_INCLUDES_TMP += ln882h/components/utils/reboot_trace
LN882H_INCLUDES_TMP += ln882h/components/utils/runtime
LN882H_INCLUDES_TMP += ln882h/components/wifi/wifi_lib_export
LN882H_INCLUDES_TMP += ln882h/components/wifi/wifi_lib_import
LN882H_INCLUDES_TMP += ln882h/components/wifi/wifi_manager
LN882H_INCLUDES_TMP += ln882h/mcu/CMSIS_5.3.0
LN882H_INCLUDES_TMP += ln882h/mcu/driver_ln882h
LN882H_INCLUDES_TMP += ln882h/mcu/driver_ln882h/hal
LN882H_INCLUDES_TMP += ln882h/mcu/driver_ln882h/reg
LN882H_INCLUDES_TMP += ln882h/mcu/ln882h
LN882H_INCLUDES_TMP += ln882h/init
LN882H_INCLUDES_TMP += ln882h/init/ate
LN882H_INCLUDES_TMP += ln882h/init/ble_usr_app
LN882H_INCLUDES_TMP += ln882h/init/ble_usr_app/app_callback


ifeq (${USE_LN_LWIP},1)

$(info ------------- use ln lwip ----------------)
LN882H_SRCS_TMP += ln882h/components/net/port/ln_osal/ln_netif/ln_ethernetif.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/api/api_lib.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/api/api_msg.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/api/err.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/api/netbuf.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/api/netdb.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/api/netifapi.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/api/sockets.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/api/tcpip.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/def.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/dns.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/inet_chksum.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/init.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ip.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ipv4/autoip.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ipv4/dhcp.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ipv4/etharp.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ipv4/icmp.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ipv4/igmp.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ipv4/ip4_addr.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ipv4/ip4.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/ipv4/ip4_frag.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/memp.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/netif.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/pbuf.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/raw.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/stats.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/sys.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/tcp.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/tcp_in.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/tcp_out.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/timeouts.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/core/udp.c
LN882H_SRCS_TMP += ln882h/components/net/lwip-2.1.3/src/netif/ethernet.c
LN882H_SRCS_TMP += ln882h/components/net/port/ln_osal/arch/sys_arch.c

LN882H_INCLUDES_TMP += ln882h/components/net/port/ln_osal/include
LN882H_INCLUDES_TMP += ln882h/components/net/port/ln_osal/include/cfg
LN882H_INCLUDES_TMP += ln882h/components/net/port/ln_osal/include/cfg/lwip
LN882H_INCLUDES_TMP += ln882h/components/net/port/ln_osal/include/arch
LN882H_INCLUDES_TMP += ln882h/components/net/port/ln_osal/include/ln_netif
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/compat
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/compat/posix
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/compat/posix/arpa
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/compat/posix/net
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/compat/posix/sys
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/compat/stdc
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/lwip
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/lwip/priv
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/lwip/prot
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/include/netif
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/port/include
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/port/include/cfg
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/port/include/arch
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/port/include/netif
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/port/ln_osal/include/
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/port/ln_osal/include/arch
LN882H_INCLUDES_TMP += ln882h/components/net/lwip-2.1.3/src/port/ln_osal/include/netif

else # !USE_LN_LWIP

LN882H_SRCS_TMP += ln882h/components/net/port/ln_osal/ln_netif/tuya_ethernetif.c

endif # !USE_LN_LWIP

LN882H_INCLUDES_TMP += ln882h/components/kernel/FreeRTOS/Source/portable/MemMang/
prefix = ${TOPDIR}/
LN882H_SRCS = $(addprefix ${prefix}, ${LN882H_SRCS_TMP})
LN882H_INCLUDES = $(addprefix ${prefix}, ${LN882H_INCLUDES_TMP})

#LN882H_LIB += -lln882h_wifi -lln882h_ble_full_stack
LN882H_LIB += -lln882h_wifi_release -lln882h_ble_controller_stack
LN882H_LIB += -lc_nano -lm -lnosys -lgcc
LN882H_LIB_PATH = ${prefix}ln882h/lib


