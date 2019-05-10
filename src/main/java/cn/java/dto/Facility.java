package cn.java.dto;

public class Facility {
    private Integer id;

    private String name;

    private String buildingId;

    private String floorId;

    private String map_position;

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

    public String getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(String buildingId) {
        this.buildingId = buildingId;
    }

    public String getFloorId() {
        return floorId;
    }

    public void setFloorId(String floorId) {
        this.floorId = floorId;
    }

    public String getmap_position() {
        return map_position;
    }

    public void setmap_position(String map_position) {
        this.map_position = map_position;
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
                + ", map_position=" + map_position + ", imgUrl=" + imgUrl + ", description=" + description + "]";
    }

}