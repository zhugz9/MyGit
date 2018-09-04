package com.mp.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016091400508441";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDJlUksTId3B0K8MyWMOFTYKmMsCBIa+ymgVPOJTZZE/lCZLEHZSOoxHAlY3Uj0S35KFwOM/O6WOKuYUN0E/FPVAa2on7EFzJ3jNdZ7xOwdSuLRfRNGN0NS6caCSywNWedf714KSUsRihmDIVONHyOMzRjVCfxdQM1Jj6MPJLp9wg9+rMdpvbdtMKlfxjl6CUNGDJDEHm121xgGfIN47uD3qTqdR3Ogd9NvO+SsUQZ6hPireLaYl84R48o1w4BX78kLxjEsR9nJkLbPU9MiJwseb0o5hLecPLdGPdJpRhZJjgLWnUgecGkNCwTEYM1LQtvuYm09FB6L+LXygmghCNKhAgMBAAECggEBAJ6RL94I1QZsT7J7CS4joZnovdoE/zj6GORl7qwyu+HJqtzSU3n4QUAgLboZVynTuKPPNpvQ2lyQd2p5MWKamdcUWuYpt7Y4Hnp7/xuc656fKYxgNqklD3BJND2JpD1cWwS75d1xiftiBm9/55k6xVwceUwbbshsEQ+sTTe8THZeqM2FaHK1z7bUxGilDumB5+9rO/fBj0rgBAi6LrzwuQQbcnMrTIs6Z34fGK0GwxDK7OHrn3MDWtTAfD6Ri8NFz8lZZqkI8f0SKqMJgJG8xCsHlQaHmc1fFEA8OZJVavYDYOO8SMSEWz9TcyRKNOb5InXZpeeE1m+tr8tMOBdZm4ECgYEA/uo1WTadFcNIwE4qP2RseOxjOKd9ivTvRWoxYpdm0zmNNyeFGXOewJgLvA4WvoK+bUSxQojR8A1XOhko0Tqkxr8d2dYAl/vGZpAebvAoIXO0NZvn/6mqivrhS7PfVBta3XhpHHyUIgeEbgaKlnMjB46PN3KHji7Hkg8oynsozksCgYEAynD1pyCz7T2q6eBNCrKHkbFxMXuCLj6cld1LpcWRAJvXuuzzdMKBGtK0u7TLmgGO8D50LdTN5x1cpbpUtqN7ij+9jiXkmaZcT6o2U7FLPQ39WD19aYCCwD2dEsrwOhlPy2QY72b/37aidwBF9cQIQ7Guhgig6gt+NoPdz15HX0MCgYAKuEauDcHlXGT+0Uqth8eX/jjd9Q0ufsZhIOoav0svrsflfd/3BgmzB7HWorEKKe1gIvdhWOebNLRqWQyCX/j18quKsZksywW44m6lM6w8W+VEK95BvhzR42L+D/5gRxY3Ig0piYOhOrey+MtzMDxU4QXcyxAwRn9WARUyDqPUqQKBgEu/XIt+dxSMAImmPe2Ew6lGJb6IIju/fcOtnAKZHBqINX5h7u5/YONyd+HMUmp7rspB9CK5/5k8qU/xmoUEQtOF6h1oHFNJpjzAybcjHa3osCT2TRjO1x2rcDx55s02b18BQztA5PkGU2AHoCXHhfgeYdkRHXS1fDJVwQc4lagVAoGANCtkmNyoVgFwE+aFTyU2RDhZkCZNVcMsZPhzzCVXPrSbVtHTWt+mfhPPDcoJoKevE8z02RCDE5lTtKxJKrtnKH5uwxOD4dSI9sflovJWk1qRnz/dJfaNHbjAvtKZXMEmV52ho0YRw8/dY1v/f1gNZrUfLSED3x2Ytvo3pxsaE+0=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyZVJLEyHdwdCvDMljDhU2CpjLAgSGvspoFTziU2WRP5QmSxB2UjqMRwJWN1I9Et+ShcDjPzuljirmFDdBPxT1QGtqJ+xBcyd4zXWe8TsHUri0X0TRjdDUunGgkssDVnnX+9eCklLEYoZgyFTjR8jjM0Y1Qn8XUDNSY+jDyS6fcIPfqzHab23bTCpX8Y5eglDRgyQxB5tdtcYBnyDeO7g96k6nUdzoHfTbzvkrFEGeoT4q3i2mJfOEePKNcOAV+/JC8YxLEfZyZC2z1PTIicLHm9KOYS3nDy3Rj3SaUYWSY4C1p1IHnBpDQsExGDNS0Lb7mJtPRQei/i18oJoIQjSoQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/MicroPurchase/PayFailure";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/MicroPurchase/PaymentSuccess";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

