package com.alipay.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

import com.alipay.config.AlipayConfig;
import com.alipay.sign.MD5;

/* *
 *类名：AlipayNotify
 *功能：支付宝通知处理�?
 *详细：处理支付宝各接口�?知返�?
 *版本�?.3
 *日期�?012-08-17
 *说明�?
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的�?��，按照技术文档编�?并非�?��要使用该代码�?
 *该代码仅供学习和研究支付宝接口使用，只是提供�?��参�?

 *************************注意*************************
 *调试通知返回时，可查看或改写log日志的写入TXT里的数据，来�?��通知返回是否正常
 */
public class AlipayNotify {

    /**
     * 支付宝消息验证地�?
     */
    private static final String HTTPS_VERIFY_URL = "https://mapi.alipay.com/gateway.do?service=notify_verify&";

    /**
     * 验证消息是否是支付宝发出的合法消�?
     * @param params 通知返回来的参数数组
     * @return 验证结果
     */
    public static boolean verify(Map<String, String> params) {

        //判断responsetTxt是否为true，isSign是否为true
        //responsetTxt的结果不是true，与服务器设置问题�?合作身份者ID、notify_id�?��钟失效有�?
        //isSign不是true，与安全校验码�?请求时的参数格式（如：带自定义参数等）�?编码格式有关
    	String responseTxt = "false";
		if(params.get("notify_id") != null) {
			String notify_id = params.get("notify_id");
			responseTxt = verifyResponse(notify_id);
		}
	    String sign = "";
	    if(params.get("sign") != null) {sign = params.get("sign");}
	    boolean isSign = getSignVeryfy(params, sign);

        //写日志记录（若要调试，请取消下面两行注释�?
        //String sWord = "responseTxt=" + responseTxt + "\n isSign=" + isSign + "\n 返回回来的参数：" + AlipayCore.createLinkString(params);
	    //AlipayCore.logResult(sWord);

        if (isSign && responseTxt.equals("true")) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 根据反馈回来的信息，生成签名结果
     * @param Params 通知返回来的参数数组
     * @param sign 比对的签名结�?
     * @return 生成的签名结�?
     */
	private static boolean getSignVeryfy(Map<String, String> Params, String sign) {
    	//过滤空�?、sign与sign_type参数
    	Map<String, String> sParaNew = AlipayCore.paraFilter(Params);
        //获取待签名字符串
        String preSignStr = AlipayCore.createLinkString(sParaNew);
        //获得签名验证结果
        boolean isSign = false;
        if(AlipayConfig.sign_type.equals("MD5") ) {
        	isSign = MD5.verify(preSignStr, sign, AlipayConfig.key, AlipayConfig.input_charset);
        }
        return isSign;
    }

    /**
    * 获取远程服务器ATN结果,验证返回URL
    * @param notify_id 通知校验ID
    * @return 服务器ATN结果
    * 验证结果集：
    * invalid命令参数不对 出现这个错误，请�?��返回处理中partner和key是否为空 
    * true 返回正确信息
    * false 请检查防火墙或�?是服务器阻止端口问题以及验证时间是否超过�?���?
    */
    private static String verifyResponse(String notify_id) {
        //获取远程服务器ATN结果，验证是否是支付宝服务器发来的请�?

        String partner = AlipayConfig.partner;
        String veryfy_url = HTTPS_VERIFY_URL + "partner=" + partner + "&notify_id=" + notify_id;

        return checkUrl(veryfy_url);
    }

    /**
    * 获取远程服务器ATN结果
    * @param urlvalue 指定URL路径地址
    * @return 服务器ATN结果
    * 验证结果集：
    * invalid命令参数不对 出现这个错误，请�?��返回处理中partner和key是否为空 
    * true 返回正确信息
    * false 请检查防火墙或�?是服务器阻止端口问题以及验证时间是否超过�?���?
    */
    private static String checkUrl(String urlvalue) {
        String inputLine = "";

        try {
            URL url = new URL(urlvalue);
            HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(urlConnection
                .getInputStream()));
            inputLine = in.readLine().toString();
        } catch (Exception e) {
            e.printStackTrace();
            inputLine = "";
        }

        return inputLine;
    }
}
