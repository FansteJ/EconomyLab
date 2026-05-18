package com.economylab;

import com.economylab.utils.Config;

public class Launcher {

    private static Launcher launcher;

    public static Launcher getLauncher() {
        if (launcher == null) {
            synchronized (Launcher.class) {
                if (launcher == null)
                    launcher = new Launcher();
            }
        }
        return launcher;
    }

    private Launcher() {}

    void launch(String... args) {
        this.setUp(args);
        this.work(args);
        this.clean(args);
    }

    private void setUp(String... args) {
        Config.loadProperties(args[0]);
        String host = Config.getPropertyValue("host", "");
        String port = Config.getPropertyValue("port", "");
        String db = Config.getPropertyValue("db", "");
        String user = Config.getPropertyValue("user", "");
        String password = Config.getPropertyValue("password", "");
        Config.connect(host, port, db, user, password);
    }

    private void work(String... args) {
        javafx.application.Application.launch(Main.class, args);
    }

    private void clean(String... args) {
        Config.disconnect();
    }
}