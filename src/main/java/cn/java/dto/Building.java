package cn.java.dto;

public class Building {
    private Integer id;

    private String name;

    private String code;

    private String type;

    private String description;

    private String imgUrl;

    private String areaCoords;
    
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

	public String getAreaCoords() {
		return areaCoords;
	}

	public void setAreaCoords(String areaCoords) {
		this.areaCoords = areaCoords;
	}

	@Override
	public String toString() {
		return "Building [id=" + id + ", name=" + name + ", code=" + code + ", type=" + type + ", description="
				+ description + ", imgUrl=" + imgUrl + ", areaCoords=" + areaCoords + "]";
	}
	
}