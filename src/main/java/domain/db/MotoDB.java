package domain.db;

import domain.model.MotoModel;

import java.util.ArrayList;

public class MotoDB {
    private int sequence = 0;
    private ArrayList<MotoModel> motos;

    public MotoDB(){
    }

    public ArrayList<MotoModel> getMotos() {
        return motos;
    }

    public ArrayList<String> getMotoModelnamen(){
        ArrayList<String> motonamen = new ArrayList<>();
        for (int i = 0; i < motos.size(); i++){
            motonamen.add(motos.get(i).getModel());
        }
        return motonamen;
    }

    public void addMoto(MotoModel motoModel){
        this.sequence++;
        motoModel.setId(sequence);
        motos.add(motoModel);
    }

    public MotoModel getMoto(String model){
        if (model.isEmpty()){
            throw new IllegalArgumentException("Model mag niet leeg zijn");
        }
        for (int i = 0; i <= motos.size(); i++){
            if (motos.get(i).getModel().equalsIgnoreCase(model)){
                return motos.get(i);
            }
        }
        throw new IllegalArgumentException("We hebben dit model niet ter beschikking");
    }
    public MotoModel getDuurste(){
        int hoogstePrijs = 0;
        MotoModel duursteMoto = motos.get(0);
        for (int i = 0; i < motos.size(); i++){
            if (motos.get(i).getPrijs() > hoogstePrijs){
                hoogstePrijs = motos.get(i).getPrijs();
                duursteMoto = motos.get(i);
            }
        }
        return duursteMoto;
    }
    public void remove(MotoModel motoModel){
        if (motoModel == null){
            throw new IllegalArgumentException("Deze moto bestaat niet");
        }
        for (int i = 0; i < motos.size(); i++){
            if (motos.get(i).equals(motoModel)){
                motos.remove(i);
            }
        }
    }

    public void vervang(String model, MotoModel motoModel){
        if (model.isEmpty()){
            throw new IllegalArgumentException("Dit model bestaat niet");
        }
        if (motoModel == null){
            throw new IllegalArgumentException("De moto mag niet null zijn");
        }
        for (int i = 0; i < motos.size(); i++){
            if (motos.get(i).getModel().equalsIgnoreCase(model)){
                motos.remove(i);
                motos.add(i, motoModel);
            }
        }
    }

}
