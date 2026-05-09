package com.economylab.utils;

import java.io.*;

public class Authentication {

    private static final String USERS_FILE = "users.txt";

    public static boolean registerUser(String username, String password) {
        if (userExists(username)) {
            System.out.println("Registration failed: User already exists.");
            return false;
        }

        try (FileWriter fw = new FileWriter(USERS_FILE, true);
             BufferedWriter bw = new BufferedWriter(fw);
             PrintWriter out = new PrintWriter(bw)) {

            out.println(username + "," + password);
            System.out.println("User registered successfully.");
            return true;

        } catch (IOException e) {
            System.out.println("Error writing to file.");
            e.printStackTrace();
            return false;
        }
    }

    public static boolean loginUser(String username, String password) {
        File file = new File(USERS_FILE);

        if (!file.exists()) {
            return false;
        }

        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] credentials = line.split(",");

                if (credentials.length == 2) {
                    String storedUsername = credentials[0];
                    String storedPassword = credentials[1];

                    if (storedUsername.equals(username) && storedPassword.equals(password)) {
                        return true;
                    }
                }
            }
        } catch (IOException e) {
            System.out.println("Error reading from file.");
            e.printStackTrace();
        }

        return false;
    }

    private static boolean userExists(String username) {
        File file = new File(USERS_FILE);
        if (!file.exists()) {
            return false;
        }

        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] credentials = line.split(",");
                if (credentials.length >= 1 && credentials[0].equals(username)) {
                    return true;
                }
            }
        } catch (IOException e) {
            System.out.println("Error reading from file.");
            e.printStackTrace();
        }

        return false;
    }
}