package com.moneymanager.util;

import java.security.*;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import sun.misc.*;

public class EncryptDecryptUtil {
	private static final String ALGORITHM = "AES";
	private static final byte[] KEYS = 
			new byte[] { 'T', 'h', 'e', 'B', 'e', 's', 't',
				'S', 'e', 'c', 'r', 'e', 't', 'K', 'e', 'y' };
	
	@SuppressWarnings("restriction")
	public static String encryptPassword(String plainPwrd) throws Exception {
		Key key = generateKey();
		
		Cipher cipher = Cipher.getInstance(ALGORITHM);
		cipher.init(Cipher.ENCRYPT_MODE, key);
		
		byte[] encByteArr = cipher.doFinal(plainPwrd.getBytes());
		
		return new BASE64Encoder().encode(encByteArr);
	}
	
	@SuppressWarnings("restriction")
	public static String decryptPassword(String encryptedPwd) throws Exception {
		Key key = generateKey();
		
		Cipher cipher = Cipher.getInstance(ALGORITHM);
		cipher.init(Cipher.DECRYPT_MODE, key);
		
		byte[] decByteArr1 = new BASE64Decoder().decodeBuffer(encryptedPwd);
		byte[] decByteArr2 = cipher.doFinal(decByteArr1);
		
		return new String(decByteArr2);
	}
	
	private static Key generateKey() throws Exception {
		return new SecretKeySpec(KEYS, ALGORITHM);
	}
}