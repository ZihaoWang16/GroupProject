package cn.java.dto;

public class Facility {
    private Integer id;

    private String name;

    private Integer buildingId;

    private Integer floorId;

    private String mapPosition;

    private String imgUrl;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(Integer buildingId) {
        this.buildingId = buildingId;
    }

    public Integer getFloorId() {
        return floorId;
    }

    public void setFloorId(Integer floorId) {
        this.floorId = floorId;
    }

    public String getMapPosition() {
        return mapPosition;
    }

    public void setMapPosition(String mapPosition) {
        this.mapPosition = mapPosition;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Facility [id=" + id + ", name=" + name + ", buildingId=" + buildingId + ", floorId=" + floorId
                + ", mapPosition=" + mapPosition + ", imgUrl=" + imgUrl + ", description=" + description + "]";
    }

}