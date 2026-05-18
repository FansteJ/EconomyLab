package com.economylab.model;

public class LabResearcher {
    private String labName;
    private String researcherName;

    public LabResearcher(String labName, String researcherName) {
        this.labName = labName;
        this.researcherName = researcherName;
    }

    public String getLabName() {
        return labName;
    }

    public String getResearcherName() {
        return researcherName;
    }
}