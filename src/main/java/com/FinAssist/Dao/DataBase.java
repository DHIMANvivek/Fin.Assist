package com.FinAssist.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.FinAssist.Model.Products;
import com.FinAssist.Model.UserId;
import com.FinAssist.Model.Wages;
import com.FinAssist.Model.wageid;
import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;


public class DataBase {

	MongoClient mongoClient;

//	public DataBase() {
//
//		try {
//			String connectionURL = "mongodb+srv://androidvivek:vivek@cluster0.ay1mh.mongodb.net/androidvivek?retryWrites=true&w=majority";
//			mongoClient = MongoClients.create(connectionURL);
//		} catch (Exception e) {
//			System.out.println("Something Went Wrong: " + e);
//		}
//
//	}
	
	public DataBase() {

		try {
			String connectionURL = "mongodb+srv://androidvivek:vivek@cluster0.ay1mh.mongodb.net/androidvivek?retryWrites=true&w=majority";
			mongoClient = MongoClients.create(connectionURL);
		} catch (Exception e) {
			System.out.println("Something Went Wrong: " + e);
		}

	}
	
	
	

	public boolean logFever(Products products) {

		Document document = new Document(products.toMap());

		// Insert into DataBase
		mongoClient.getDatabase("Produkte").getCollection("products").insertOne(document);
		System.out.println(products.itemId + " " + products.price + " Fever Saved in MongoDB");

		return true;
	}

	public void fetch(UserId userId) {

		try {

			Document document = new Document(userId.toMap());

			mongoClient.getDatabase("Produkte").getCollection("userId").insertOne(document);
			System.out.println("Document Inserted :)");

		} catch (Exception e) {
			System.out.println("Something Went Wrong: " + e);
		}

	}
	public boolean logFever1(Wages products1) {

		Document document = new Document(products1.toMap());

		// Insert into DataBase
		mongoClient.getDatabase("WagesAssistant").getCollection("wageDetail").insertOne(document);
		System.out.println(products1.name + " " + products1.income + "  Saved in MongoDB");

		return true;
	}
	public void fetch1(wageid admin1) {

		try {

			Document document = new Document(admin1.toMap());

			mongoClient.getDatabase("WagesAssistant").getCollection("wageid").insertOne(document);
			System.out.println("Document Inserted :)");

		} catch (Exception e) {
			System.out.println("Something Went Wrong: " + e);
		}

	}



	public ArrayList<Products> fetchProducts(String userId) {

		ArrayList<Products> productRecords = new ArrayList<Products>();

		try {

			BasicDBObject query = new BasicDBObject();
			query.put("itemId", userId);

			MongoCursor<Document> cursor = mongoClient.getDatabase("Produkte").getCollection("products").find(query)
					.iterator();
			while (cursor.hasNext()) {

				Document document = cursor.next();
				Products product = new Products();

				product._id = document.getObjectId("_id").toString();
				product.itemId = document.getString("itemId");
				product.dateTimeStamp = document.getDate("dateTimeStamp").toString();
				product.quantity = document.getString("quantity");
				product.items = document.getString("items");
				product.price = document.getString("price");
				productRecords.add(product);

			}
		} catch (Exception e) {
			System.out.println("Something Went Wrong: " + e);
		}

		return productRecords;

	}
	
	public ArrayList<Wages> fetchProducts1(String userId) {

		ArrayList<Wages> productRecords = new ArrayList<Wages>();

		try {

			BasicDBObject query = new BasicDBObject();
			query.put("name", userId);

			MongoCursor<Document> cursor = mongoClient.getDatabase("WagesAssistant").getCollection("wageDetail").find(query)
					.iterator();
			while (cursor.hasNext()) {

				Document document = cursor.next();
				Wages product = new Wages();

				product._id = document.getObjectId("_id").toString();
				//product.itemId = document.getString("itemId");
				product.dateTimeStamp = document.getDate("dateTimeStamp").toString();
				product.daysWorked = document.getString("daysWorked");
				product.name = document.getString("name");
				product.income = document.getString("income");
				productRecords.add(product);

			}
		} catch (Exception e) {
			System.out.println("Something Went Wrong: " + e);
		}

		return productRecords;

	}
	

	public void deleteForever(String userId) {

		System.out.println("[DB] Deleting Product:" + userId);

		BasicDBObject query = new BasicDBObject();

		query.put("_id", new ObjectId(userId));

		// Fetching the Data
		mongoClient.getDatabase("Produkte").getCollection("products").deleteOne(query);

	}

	
	public void deleteForever1(String userId) {

		System.out.println("[DB] Deleting Product:" + userId);

		BasicDBObject query = new BasicDBObject();

		query.put("_id", new ObjectId(userId));

		// Fetching the Data
		mongoClient.getDatabase("WagesAssistant").getCollection("wageid").deleteOne(query);

	}

	public void updateProducts(String itemname, String itemId) {
		

		System.out.println("[DB] Updating item  " + itemId);

		BasicDBObject query = new BasicDBObject();
		query.put("_id", new ObjectId(itemId));

		MongoCursor<Document> cursor = mongoClient.getDatabase("Produkte").getCollection("products").find(query)
				.iterator();

		Document document = cursor.next();

		document.put("items", itemname);

		ObjectId oId = new ObjectId(itemId);

		System.out.println("[DB] " + document.toJson());

		// Insert into DataBase
		mongoClient.getDatabase("Produkte").getCollection("products").updateOne(Filters.eq("_id", oId),
				Updates.set("items", itemname));
		System.out.println("Fever Updated");

	}




	

}
