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

public class RegisterController {

    @FXML private TextField txtUsername;
    @FXML private PasswordField txtPassword;
    @FXML private Label lblMessage;

    @FXML
    protected void handleRegister() {
        String username = txtUsername.getText();
        String password = txtPassword.getText();

        if (username.isEmpty() || password.isEmpty()) {
            lblMessage.setText("Please fill out all fields.");
            lblMessage.setStyle("-fx-text-fill: red;");
            return;
        }

        if (Authentication.registerUser(username, password)) {
            lblMessage.setText("Registered! You can now log in.");
            lblMessage.setStyle("-fx-text-fill: green;");
            txtUsername.clear();
            txtPassword.clear();
        } else {
            lblMessage.setText("Registration failed. User may exist.");
            lblMessage.setStyle("-fx-text-fill: red;");
        }
    }

    @FXML
    protected void switchToLogin(ActionEvent event) throws IOException {
        Parent loginRoot = FXMLLoader.load(getClass().getResource("/com/economylab/view/login-view.fxml"));
        Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        stage.getScene().setRoot(loginRoot);
    }
}