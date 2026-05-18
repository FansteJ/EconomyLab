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
import java.io.IOException;

public class LoginController {

    @FXML private TextField txtUsername;
    @FXML private PasswordField txtPassword;
    @FXML private Label lblMessage;

    @FXML
    protected void handleLogin(ActionEvent event) {
        String username = txtUsername.getText();
        String password = txtPassword.getText();

        if (username.isEmpty() || password.isEmpty()) {
            lblMessage.setText("Please enter both fields.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        if (Authentication.loginUser(username, password)) {
            lblMessage.setText("Login successful!");
            lblMessage.setStyle("-fx-text-fill: green;");

            try {
                Parent dashboardRoot = FXMLLoader.load(getClass().getResource("/com/economylab/view/dashboard-view.fxml"));
                Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
                stage.getScene().setRoot(dashboardRoot);

                stage.sizeToScene();
                stage.centerOnScreen();
            } catch (IOException e) {
                e.printStackTrace();
                lblMessage.setText("Error loading dashboard!");
                lblMessage.setStyle("-fx-text-fill: red;");
            }

        } else {
            lblMessage.setText("Invalid credentials.");
            lblMessage.setStyle("-fx-text-fill: red;");
        }
    }

    @FXML
    protected void switchToRegister(ActionEvent event) throws IOException {
        Parent registerRoot = FXMLLoader.load(getClass().getResource("/com/economylab/view/register-view.fxml"));
        Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        stage.getScene().setRoot(registerRoot);
    }
}