package com.jzh.car.component;

import com.jzh.car.service.OmsPortalOrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 取消订单消息的接收者
 */
@Slf4j
@Component
@RabbitListener(queues = "car.order.cancel")
public class CancelOrderReceiver {

    @Resource
    private OmsPortalOrderService portalOrderService;

    @RabbitHandler
    public void handle(Long orderId){
        portalOrderService.cancelOrder(orderId);
        log.info("process orderId:{}",orderId);
    }
}
