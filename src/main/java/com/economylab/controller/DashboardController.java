package com.economylab.controller;

import com.economylab.model.LabResearcher;
import com.economylab.utils.Config;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DashboardController {

    @FXML
    private TableView<LabResearcher> overviewTable;

    @FXML
    private TableColumn<LabResearcher, String> labColumn;

    @FXML
    private TableColumn<LabResearcher, String> researcherColumn;

    private ObservableList<LabResearcher> dataList = FXCollections.observableArrayList();

    @FXML
    public void initialize() {
        labColumn.setCellValueFactory(new PropertyValueFactory<>("labName"));
        researcherColumn.setCellValueFactory(new PropertyValueFactory<>("researcherName"));

        loadData();
    }

    private void loadData() {
        String sql = "SELECT DISTINCT l.Naziv AS lab_name, CONCAT(i.Ime, ' ', i.Prezime) AS researcher_name " +
                "FROM Laboratorija l " +
                "JOIN Izvodjenje iz ON l.ID_Laboratorija = iz.ID_Laboratorija " +
                "JOIN Izvodjenje_Izvodjac ii ON iz.ID_Izvodjenje = ii.ID_Izvodjenje " +
                "JOIN Istrazivac i ON ii.ID_Istrazivac = i.ID_Istrazivac";

        try {
            Connection conn = Config.getConnection();

            try (PreparedStatement pstmt = conn.prepareStatement(sql);
                 ResultSet rs = pstmt.executeQuery()) {

                while (rs.next()) {
                    String lab = rs.getString("lab_name");
                    String researcher = rs.getString("researcher_name");

                    dataList.add(new LabResearcher(lab, researcher));
                }

                overviewTable.setItems(dataList);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Database error while loading dashboard statistics!");
        }
    }

    @FXML
    protected void handleAccountSettings(javafx.event.ActionEvent event) {
        try {
            javafx.scene.Parent settingsRoot = javafx.fxml.FXMLLoader.load(getClass().getResource("/com/economylab/view/account-settings-view.fxml"));
            javafx.stage.Stage stage = (javafx.stage.Stage) ((javafx.scene.Node) event.getSource()).getScene().getWindow();
            stage.getScene().setRoot(settingsRoot);
            stage.sizeToScene();
            stage.centerOnScreen();
        } catch (java.io.IOException e) {
            e.printStackTrace();
            System.out.println("Error: Cannot load account-settings-view.fxml");
        }
    }
}