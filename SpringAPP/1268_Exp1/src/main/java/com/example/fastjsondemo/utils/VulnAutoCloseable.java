package com.example.fastjsondemo.utils;

public class VulnAutoCloseable implements AutoCloseable{
    public VulnAutoCloseable(String cmd) {
        try {
            Runtime.getRuntime().exec(cmd);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void close() throws Exception {

    }
}
