/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Poprasic
 */
public class Korisnik {
    private int idKorisnik;
     private String ime="";
    private String prezime="";
    private String username="";
    private String password="";
    private int poeni;
    private int cena;
    private int telefon;
    private int idHotel;
    private int idsoba;
    private String imeHotel="";
    private String tipSobe="";

    public String getImeHotel() {
        return imeHotel;
    }

    public void setImeHotel(String imeHotel) {
        this.imeHotel = imeHotel;
    }

    public String getTipSobe() {
        return tipSobe;
    }

    public void setTipSobe(String tipSobe) {
        this.tipSobe = tipSobe;
    }

    public int getIdKorisnik() {
        return idKorisnik;
    }

    public void setIdKorisnik(int idKorisnik) {
        this.idKorisnik = idKorisnik;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPoeni() {
        return poeni;
    }

    public void setPoeni(int poeni) {
        this.poeni = poeni;
    }

    public int getCena() {
        return cena;
    }

    public void setCena(int cena) {
        this.cena = cena;
    }

    public int getTelefon() {
        return telefon;
    }

    public void setTelefon(int telefon) {
        this.telefon = telefon;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public int getIdsoba() {
        return idsoba;
    }

    public void setIdsoba(int idsoba) {
        this.idsoba = idsoba;
    }
   
}
