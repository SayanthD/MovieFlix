/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.model;

/**
 *
 * @author HP
 */
public class Items {

    private String itemId;
    private String coverImg;
    private String title;
    private String description;
    private String rating;
    private Integer releaseYear;
    private String duration;
    private String genre;
    private String ytlink;
    private String cast;
    private String director;

    protected Items() {
    }
    
    public Items(String itemId,
            String title,
            String rating) {
        super();
        this.itemId = itemId;
        this.title = title;
        this.rating = rating;
    }

    public Items(String itemId,
            String coverImg,
            String title,
            Integer releaseYear,
            String rating,
            String genre) {
        super();
        this.itemId = itemId;
        this.coverImg = coverImg;
        this.title = title;
        this.releaseYear = releaseYear;
        this.rating = rating;
        this.genre = genre;
    }
    
    public Items(String itemId,
            String coverImg,
            String title,
            String description,
            String rating,
            Integer releaseYear,
            String duration,
            String genre,
            String ytlink,
            String cast,
            String director) {
        super();
        this.itemId = itemId;
        this.coverImg = coverImg;
        this.title = title;
        this.description = description;
        this.rating = rating;
        this.releaseYear = releaseYear;
        this.duration = duration;
        this.genre = genre;
        this.ytlink = ytlink;
        this.cast = cast;
        this.director = director;
    }

    public String getitemId() {
        return itemId;
    }

    public void setitemId(String itemId) {
        this.itemId = itemId;
    }

    public String getcoverImg() {
        return coverImg;
    }

    public void setcoverImg(String coverImg) {
        this.coverImg = coverImg;
    }

    public String gettitle() {
        return title;
    }

    public void settitle(String title) {
        this.title = title;
    }

    public String getdescription() {
        return description;
    }

    public void setdescription(String description) {
        this.description = description;
    }

    public String getrating() {
        return rating;
    }

    public void setrating(String rating) {
        this.rating = rating;
    }

    public Integer getreleaseYear() {
        return releaseYear;
    }

    public void setreleaseYear(Integer releaseYear) {
        this.releaseYear = releaseYear;
    }

    public String getduration() {
        return duration;
    }

    public void setduration(String duration) {
        this.duration = duration;
    }

    public String getgenre() {
        return genre;
    }

    public void setgenre(String genre) {
        this.genre = genre;
    }

    public String getytlink() {
        return ytlink;
    }

    public void setytlink(String ytlink) {
        this.ytlink = ytlink;
    }
    
    public String getcast() {
        return cast;
    }

    public void setcast(String cast) {
        this.cast = cast;
    }
    
    public String getdirector() {
        return director;
    }

    public void setdirector(String director) {
        this.director = director;
    }
}
