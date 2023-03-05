package com.daydaek.controller;


import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daydaek.service.FirstService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
@RequestMapping("head")
public class FirstController {
	
//	@Autowired
//	private FirstService service;
	
	@GetMapping("labo")
	public void labo() throws Exception {

	}
	
	
	@GetMapping("labo2")
	public void labo2(
			String trans,
			Model model
			) throws Exception {
		
		String a = trans;
		System.out.println(a);
		model.addAttribute("a", a);
		
	}
	
	@ResponseBody
	@PostMapping("laboPapago")
	public String laboPapago(
			@RequestBody String str,
			HttpServletRequest request,
			Model model
			) throws Exception {
		String newStr = str.substring(1, str.length()-1);
		//System.out.println(newStr);
		
		String clientId = "N4HZ0lXRgPMtWO6IypWd";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "MCboBZvN0H";//애플리케이션 클라이언트 시크릿값";

        String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
        String text;
        try {
            text = URLEncoder.encode(newStr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("인코딩 실패", e);
        }

        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);

        String responseBody = post(apiURL, requestHeaders, text);
        JSONParser parser = new JSONParser();
        Object obj = parser.parse(responseBody);
        JSONObject jsonMain = (JSONObject)obj;
        JSONObject jsonMain2 = (JSONObject)jsonMain.get("message");
        JSONObject jsonMain3 = (JSONObject)jsonMain2.get("result");
        //System.out.println(jsonMain3.get("translatedText"));
        //System.out.println(responseBody);
        String trans = (String) jsonMain3.get("translatedText");
        //System.out.println(trans);
        
        //trans를 labo2로 끌고와야된다. 리다이렉트가 안됨
        
        //return "redirect:/head/labo2?trans="+trans;
        
        JSONObject response = new JSONObject();
        response.put("name", trans);
        return response.toString();
	}
	 private static String post(String apiUrl, Map<String, String> requestHeaders, String text){
	        HttpURLConnection con = connect(apiUrl);
	        String postParams = "source=ko&target=en&text=" + text; //원본언어: 한국어 (ko) -> 목적언어: 영어 (en)
	        try {
	            con.setRequestMethod("POST");
	            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
	                con.setRequestProperty(header.getKey(), header.getValue());
	            }

	            con.setDoOutput(true);
	            try (DataOutputStream wr = new DataOutputStream(con.getOutputStream())) {
	                wr.write(postParams.getBytes());
	                wr.flush();
	            }

	            int responseCode = con.getResponseCode();
	            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 응답
	                return readBody(con.getInputStream());
	            } else {  // 에러 응답
	                return readBody(con.getErrorStream());
	            }
	        } catch (IOException e) {
	            throw new RuntimeException("API 요청과 응답 실패", e);
	        } finally {
	            con.disconnect();
	        }
	    }

	    private static HttpURLConnection connect(String apiUrl){
	        try {
	            URL url = new URL(apiUrl);
	            return (HttpURLConnection)url.openConnection();
	        } catch (MalformedURLException e) {
	            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
	        } catch (IOException e) {
	            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
	        }
	    }

	    private static String readBody(InputStream body){
	        InputStreamReader streamReader = new InputStreamReader(body);

	        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
	            StringBuilder responseBody = new StringBuilder();

	            String line;
	            while ((line = lineReader.readLine()) != null) {
	                responseBody.append(line);
	            }

	            return responseBody.toString();
	        } catch (IOException e) {
	            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
	        }
	    }
	@GetMapping("first")
	public void firstMethod(Model model) {
		
	}
	
}
