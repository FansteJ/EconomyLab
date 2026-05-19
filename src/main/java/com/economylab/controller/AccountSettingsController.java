package com.economylab.controller;

import com.economylab.utils.Authentication;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class AccountSettingsController {

    @FXML private TextField txtNewUsername;
    @FXML private PasswordField txtNewPassword;
    @FXML private PasswordField txtConfirmPassword;
    @FXML private Label lblMessage;

    private static final String FILE_PATH = "users.txt";

    @FXML
    protected void handleUpdate(ActionEvent event) {
        String newUsername = txtNewUsername.getText().trim();
        String newPassword = txtNewPassword.getText().trim();
        String currentUser = Authentication.loggedInUsername;

        if (currentUser == null) {
            lblMessage.setText("No active session found.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        if (newUsername.isEmpty() && newPassword.isEmpty()) {
            lblMessage.setText("Please fill in at least one field to update.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        List<String> fileContent = new ArrayList<>();
        boolean userUpdated = false;
        String targetUsername = currentUser;

        try (BufferedReader br = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 2 && parts[0].trim().equals(currentUser)) {

                    String finalUsername = newUsername.isEmpty() ? parts[0].trim() : newUsername;
                    String finalPassword = newPassword.isEmpty() ? parts[1].trim() : newPassword;

                    fileContent.add(finalUsername + "," + finalPassword);
                    targetUsername = finalUsername;
                    userUpdated = true;
                } else {
                    fileContent.add(line);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            lblMessage.setText("Error reading user records.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        if (userUpdated) {
            if (writeFile(fileContent)) {
                Authentication.loggedInUsername = targetUsername;

                lblMessage.setText("Account updated successfully!");
                lblMessage.setStyle("-fx-text-fill: green;");
                txtNewUsername.clear();
                txtNewPassword.clear();
            }
        } else {
            lblMessage.setText("Current user not found in records.");
            lblMessage.setStyle("-fx-text-fill: red;");
        }
    }

    @FXML
    protected void handleDelete(ActionEvent event) {
        String confirmPassword = txtConfirmPassword.getText().trim();
        String currentUser = Authentication.loggedInUsername;

        if (currentUser == null) {
            lblMessage.setText("No active session found.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        if (confirmPassword.isEmpty()) {
            lblMessage.setText("Please enter your password to confirm.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        List<String> fileContent = new ArrayList<>();
        boolean passwordMatch = false;
        boolean userFound = false;

        try (BufferedReader br = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 2 && parts[0].trim().equals(currentUser)) {
                    userFound = true;
                    if (parts[1].trim().equals(confirmPassword)) {
                        passwordMatch = true;
                        continue;
                    }
                }
                fileContent.add(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
            lblMessage.setText("Error processing request.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        if (!userFound) {
            lblMessage.setText("User account not found.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        if (!passwordMatch) {
            lblMessage.setText("Incorrect password! Deletion denied.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        if (writeFile(fileContent)) {
            Authentication.loggedInUsername = null;
            lblMessage.setText("Account deleted. Redirecting...");
            lblMessage.setStyle("-fx-text-fill: green;");

            navigateToScene(event, "/com/economylab/view/login-view.fxml");
        }
    }

    @FXML
    protected void handleGoBack(ActionEvent event) {
        navigateToScene(event, "/com/economylab/view/dashboard-view.fxml");
    }

    private boolean writeFile(List<String> content) {
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(FILE_PATH))) {
            for (String line : content) {
                bw.write(line);
                bw.newLine();
            }
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            lblMessage.setText("Error writing data to file.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return false;
        }
    }

    private void navigateToScene(ActionEvent event, String fxmlPath) {
        try {
            Parent root = FXMLLoader.load(getClass().getResource(fxmlPath));
            Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
            stage.getScene().setRoot(root);
            stage.sizeToScene();
            stage.centerOnScreen();
        } catch (IOException e) {
            e.printStackTrace();
            lblMessage.setText("Navigation failed!");
            lblMessage.setStyle("-fx-text-fill: red;");
        }
    }
}