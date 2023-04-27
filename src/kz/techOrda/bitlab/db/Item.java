package kz.techOrda.bitlab.db;

public class Item {
    Long id;
    String name;
    double price;
    int gbram;
    int gbssd;
    String processor;
    String description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getGbram() {
        return gbram;
    }

    public void setGbram(int gbram) {
        this.gbram = gbram;
    }

    public int getGbssd() {
        return gbssd;
    }

    public void setGbssd(int gbssd) {
        this.gbssd = gbssd;
    }

    public String getProcessor() {
        return processor;
    }

    public void setProcessor(String processor) {
        this.processor = processor;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}


