package purchase;

import java.util.Date;

import car.Car;

public class Purchase {
	
	private String firstName;
	private String lastName;
	private Car carBought;
	private String dateSold;
	
	
	public Purchase(String firstName, String lastName, Date dateSold, Car carBought) {
		
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public Car getCarBought() {
		return carBought;
	}


	public void setCarBought(Car carBought) {
		this.carBought = carBought;
	}


	public String getDateSold() {
		return dateSold;
	}


	public void setDateSold(String dateSold) {
		this.dateSold = dateSold;
	}


	@Override
	public String toString() {
		return this.firstName + " " + this.lastName + " " + this.carBought.getMake() + " " + this.carBought.getModel() + " " + this.dateSold;
	}
	
	

}