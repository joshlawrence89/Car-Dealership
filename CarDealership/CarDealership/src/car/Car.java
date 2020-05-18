package car;

import java.io.File;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Scanner;

public class Car {
	
	private double price;
	private String make;
	private String model;
	private double yearMade;
	private String description;
	private String picture;
	private String mpg;
	private long mileage;
	private String trans;
	private boolean isUsed;
	private int stockId;
	
	private static final String path = "/Users/Josh_Lawrence/Desktop/CarDealership";
	
	
	public Car(String make, String model, double yearMade, String mpg, long mileage, String engine, String trans, boolean isUsed, double price) {
		super();
		this.price = price;
		this.make = make;
		this.model = model;
		this.yearMade = yearMade;
		//this.description = description;
		//this.picture = picture;
		this.mpg = mpg;
		this.mileage = mileage;
		this.trans = trans;
		this.isUsed = isUsed;
		this.stockId = stockId;
	}
	
	public static Car readFromFile() {
		Car car = null;
		String fileName = path + " " + ".txt";
		
		try {
			Scanner scanner = new Scanner(new File(fileName));
			
			while(scanner.hasNextLine()) {
				Car = new car();
				
				String line = scanner.nextLine();
				
				String[] 
				car.make = this.make;
				
			}
		}
	}

	public Car(double price, String make, String model, double yearMade, String description, String picture, String mpg, long mileage, String trans, boolean isUsed, int stockId) {
		super();
		this.price = price;
		this.make = make;
		this.model = model;
		this.yearMade = yearMade;
		this.description = description;
		this.picture = picture;
		this.mpg = mpg;
		this.mileage = mileage;
		this.trans = trans;
		this.isUsed = isUsed;
		this.stockId = stockId;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public double getYearMade() {
		return yearMade;
	}

	public void setYearMade(double yearMade) {
		this.yearMade = yearMade;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getMpg() {
		return mpg;
	}

	public void setMpg(String mpg) {
		this.mpg = mpg;
	}

	public long getMileage() {
		return mileage;
	}

	public void setMileage(long mileage) {
		this.mileage = mileage;
	}

	public String getTrans() {
		return trans;
	}

	public void setTrans(String trans) {
		this.trans = trans;
	}

	public boolean isIsUsed() {
		return isUsed;
	}

	public void setIsUsed(boolean isUsed) {
		this.isUsed = isUsed;
	}
	
	public int getStockId() {
		return stockId;
	}
	
	public void setStockId(int stockId) {
		this.stockId = stockId;
	}

	@Override
	public String toString() {
		return this.make + " " + this.model + " " + this.yearMade + " " + this.picture;
	}
	
	public boolean isFourMonthsOld() {
		
		LocalDateTime fourMonthsAgo = LocalDateTime.now().minusDays(120);

		LocalDateTime PurchaseDateToLDT = LocalDateTime.ofInstant(null, ZoneId.systemDefault());

		return PurchaseDateToLDT.isBefore(fourMonthsAgo);
	}
	

}

