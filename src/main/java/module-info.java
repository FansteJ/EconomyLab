module com.stefan.economylab {
    requires javafx.controls;
    requires javafx.fxml;


    opens com.stefan.economylab to javafx.fxml;
    exports com.stefan.economylab;
}