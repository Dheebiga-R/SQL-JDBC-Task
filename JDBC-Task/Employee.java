package com.jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Employee {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		try(Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/samp", "root", "root");
) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			PreparedStatement statement = connection.prepareStatement("insert into emp values(?,?,?,?)");
			System.out.println("Enter employee code:");
			statement.setInt(1,scanner.nextInt());
			System.out.println("Enter employee name:");
			scanner.nextLine();
			statement.setString(2, scanner.nextLine());
			System.out.println("Enter employee age:");
			statement.setInt(3,scanner.nextInt());
			System.out.println("Enter employee salary:");
			statement.setInt(4,scanner.nextInt());
			System.out.println("Do you want to continue?(yes or no)");
			
			int affectedrows = statement.executeUpdate();
			if(affectedrows>0) {
				System.out.println("successfully inserted");
			}
			else {
				System.out.println("problem in insertion!");
			}
			
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

}
