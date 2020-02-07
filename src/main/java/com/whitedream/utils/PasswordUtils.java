package com.whitedream.utils;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import java.security.SecureRandom;
import java.security.spec.KeySpec;
import java.util.Base64;

public class PasswordUtils {
    private static final int iterations = 20*1000;
    private static final int saltLen = 32;
    private static final int keyLen = 256;

    /**
     * метод хэширования пароля
     * @param password пароль для хэширования
     * @return хэшированный пароль
     */
    public static String getSaltedHash(String password) throws Exception{
        if (password == null || password.length() == 0)
            throw new IllegalArgumentException("Empty passwords are not supported.");
        byte[] salt = SecureRandom.getInstance("SHA1PRNG").generateSeed(saltLen);
        return Base64.getEncoder().encodeToString(salt) + "$" + hash(password, salt);
    }

    /**
     * Метод проверки соотвествия пароля
     * @param inputPass введенный пароль
     * @param storedPass хранимый пароль (в базе) в виде salt$hash
     */
    public static boolean check(String inputPass, String storedPass) throws Exception{
        String[] saltAndHash = storedPass.split("$");
        if (saltAndHash.length != 2) {
            throw new IllegalStateException(
                    "The stored password must have the form 'salt$hash'");
        }
        String inputPassHash = hash(inputPass, Base64.getDecoder().decode(saltAndHash[0]));
        return inputPassHash.equals(saltAndHash[1]);
    }

    private static String hash(String password, byte[] salt) throws Exception{
        SecretKeyFactory f = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
        KeySpec spec = new PBEKeySpec(password.toCharArray(), salt, iterations, keyLen);
        byte[] key = f.generateSecret(spec).getEncoded();
        return Base64.getEncoder().encodeToString(key);
    }

}
