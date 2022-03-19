package domain.model;

import java.time.LocalDate;

public class MotoModel {
    private int id;
    private String merk;
    private String model;
    private int bouwjaar;
    private int pk;
    private int prijs;

    public MotoModel(String merk, String model, int bouwjaar, int pk, int prijs){
        if (merk == null || merk.trim().isBlank()){
            throw new IllegalArgumentException("Merk mag niet leeg zijn");
        }
        if (model == null || model.trim().isBlank()){
            throw new IllegalArgumentException("Model mag niet leeg zijn");
        }
        if (bouwjaar < 1885 || bouwjaar > LocalDate.now().getYear()){
            throw new IllegalArgumentException("Dit bouwjaar is niet mogelijk");
        }
        if (pk <= 0 || pk > 1000){
            throw new IllegalArgumentException("Deze hoeveelheid pk is niet mogelijk");
        }
        this.merk = merk;
        this.model = model;
        this.bouwjaar = bouwjaar;
        this.pk = pk;
        setPrijs(prijs);
    }

    public int getId() {
        return this.id;
    }

    public String getMerk() {
        return this.merk;
    }

    public String getModel() {
        return this.model;
    }

    public int getBouwjaar() {
        return this.bouwjaar;
    }

    public int getPk() {
        return this.pk;
    }

    public int getPrijs() {
        return this.prijs;
    }

    public void setPrijs(int prijs) {
        if (prijs <= 0){
            throw new IllegalArgumentException("Prijs moet groter dan 0 zijn");
        }
        this.prijs = prijs;
    }

    public void setId(int id) {
        this.id = id;
    }
}
