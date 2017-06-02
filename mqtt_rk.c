/*
 * mqtt_rk.C
 *
 *  Created on: 01. Juni 2017
 *      Author: Raphael
 */

#include "mqtt_rk.h"

void set_mqtt_args(MQTTCtx* ctx){
	XMEMSET(ctx, 0, sizeof(MQTTCtx));
//	ctx.app_name = "asdf";
	ctx->host = DEFAULT_MQTT_HOST;
//	ctx->port;
	ctx->qos = DEFAULT_MQTT_QOS;
	ctx->clean_session = 1;
	ctx->keep_alive_sec = DEFAULT_KEEP_ALIVE_SEC;
	ctx->client_id = "FakeNFC";
//	ctx->enable_lwt;
//	ctx->username;
//	ctx->password;
	ctx->topic_name = DEFAULT_TOPIC_NAME;
	ctx->cmd_timeout_ms = DEFAULT_CMD_TIMEOUT_MS;
//	ctx->test_mode;
//	ctx->pub_file;
//	ctx->retain;
	ctx->use_tls = USE_TLS;
}

int mqtt_msg_callback(MqttClient *client, MqttMessage *msg, byte msg_new, byte msg_done);

int init_mqtt_conn(MQTTCtx* ctx){
	int retval;

	/* Initialize Network */
	retval = MqttClientNet_Init(&ctx->net);
	System_printf("retval MqttClientNet_Init: %s\n", MqttClient_ReturnCodeToString(retval));
	System_flush();

	/* setup tx/rx buffers */
	ctx->tx_buf = (byte*)WOLFMQTT_MALLOC(MAX_BUFFER_SIZE);
	ctx->rx_buf = (byte*)WOLFMQTT_MALLOC(MAX_BUFFER_SIZE);

	/* Initialize MqttClient structure */
	retval = MqttClient_Init(&ctx->client, &ctx->net, mqtt_msg_callback,
						ctx->tx_buf, MAX_BUFFER_SIZE,
						ctx->rx_buf, MAX_BUFFER_SIZE,
						ctx->cmd_timeout_ms);
	System_printf("retval MqttClient_Init: %s\n", MqttClient_ReturnCodeToString(retval));
	System_flush();

	ctx->client.ctx = ctx; // WAS ZUR HÖLLE? steht so im example code drin..

	/* Connect to broker - Socket establishment */
	retval = MqttClient_NetConnect(&ctx->client, ctx->host, ctx->port,
            DEFAULT_CON_TIMEOUT_MS, ctx->use_tls, NULL);

	System_printf("retval MqttClient_Init: %s\n", MqttClient_ReturnCodeToString(retval));
	System_flush();

	return 0;
}
