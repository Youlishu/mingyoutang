package com.alipay.util;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.httpclient.methods.multipart.FilePartSource;
import org.apache.commons.httpclient.methods.multipart.PartSource;

import com.alipay.config.AlipayConfig;

/* *
 *类名：AlipayFunction
 *功能：支付宝接口公用函数�?
 *详细：该类是请求、�?知返回两个文件所调用的公用函数核心处理文件，不需要修�?
 *版本�?.3
 *日期�?012-08-14
 *说明�?
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的�?��，按照技术文档编�?并非�?��要使用该代码�?
 *该代码仅供学习和研究支付宝接口使用，只是提供�?��参�?�?
 */

public class AlipayCore {

    /** 
     * 除去数组中的空�?和签名参�?
     * @param sArray 签名参数�?
     * @return 去掉空�?与签名参数后的新签名参数�?
     */
    public static Map<String, String> paraFilter(Map<String, String> sArray) {

        Map<String, String> result = new HashMap<String, String>();

        if (sArray == null || sArray.size() <= 0) {
            return result;
        }

        for (String key : sArray.keySet()) {
            String value = sArray.get(key);
            if (value == null || value.equals("") || key.equalsIgnoreCase("sign")
                || key.equalsIgnoreCase("sign_type")) {
                continue;
            }
            result.put(key, value);
        }

        return result;
    }

    /** 
     * 把数组所有元素排序，并按照�?参数=参数值�?的模式用�?”字符拼接成字符�?
     * @param params �?��排序并参与字符拼接的参数�?
     * @return 拼接后字符串
     */
    public static String createLinkString(Map<String, String> params) {

        List<String> keys = new ArrayList<String>(params.keySet());
        Collections.sort(keys);

        String prestr = "";

        for (int i = 0; i < keys.size(); i++) {
            String key = keys.get(i);
            String value = params.get(key);

            if (i == keys.size() - 1) {//拼接时，不包括最后一�?字符
                prestr = prestr + key + "=" + value;
            } else {
                prestr = prestr + key + "=" + value + "&";
            }
        }

        return prestr;
    }

    /** 
     * 写日志，方便测试（看网站�?��，也可以改成把记录存入数据库�?
     * @param sWord 要写入日志里的文本内�?
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(AlipayConfig.log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
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

    /** 
     * 生成文件摘要
     * @param strFilePath 文件路径
     * @param file_digest_type 摘要算法
     * @return 文件摘要结果
     */
    public static String getAbstract(String strFilePath, String file_digest_type) throws IOException {
        PartSource file = new FilePartSource(new File(strFilePath));
    	if(file_digest_type.equals("MD5")){
    		return DigestUtils.md5Hex(file.createInputStream());
    	}
    	else if(file_digest_type.equals("SHA")) {
    		return DigestUtils.sha256Hex(file.createInputStream());
    	}
    	else {
    		return "";
    	}
    }
}
