package com.payfort.fortpaymentsdk.security;

import java.util.regex.Pattern;

public class FortSecurityConstant {
    public static final Pattern[] xSSPatterns = {Pattern.compile("<script>(.*?)</script>", 2), Pattern.compile("src[\r\n]*=[\r\n]*\\'(.*?)\\'", 42), Pattern.compile("src[\r\n]*=[\r\n]*\\\"(.*?)\\\"", 42), Pattern.compile("src[\r\n ]*=[\r\n]*(.*)", 42), Pattern.compile("</script>", 2), Pattern.compile("<script(.*?)>", 42), Pattern.compile("eval\\((.*?)\\)", 42), Pattern.compile("expression\\((.*?)\\)", 42), Pattern.compile("javascript:", 2), Pattern.compile("vbscript:", 2), Pattern.compile("onload(.*?)=", 42), Pattern.compile("<[^>]*>", 42)};
}
