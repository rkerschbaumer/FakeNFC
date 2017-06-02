/*
 * mqtt_rk.h
 *
 *  Created on: 01. Juni 2017
 *      Author: Raphael
 */

#ifndef LOCAL_INC_MQTT_RK_H_
#define LOCAL_INC_MQTT_RK_H_

#define MAX_BUFFER_SIZE		1024    // Maximum size for network read/write callbacks
#define USE_TLS 			0 		//0 = no TLS used
#define USE_WINDOWS_API 1

/*WolfMQTT Includes*/
#include "wolfmqtt/mqtt_client.h"
#include "examples/mqttexample.h"
#include "examples/mqttnet.h"
//#include "mqttclient.h"


#include <xdc/runtime/System.h>


void set_mqtt_args(MQTTCtx* ctx);

int mqtt_msg_callback(MqttClient *client, MqttMessage *msg, byte msg_new, byte msg_done);

int init_mqtt_conn(MQTTCtx* ctx);


#endif /* LOCAL_INC_MQTT_RK_H_ */
