Feature: Karate Test Suite 18
  This test suite for db interactions call

  Background: dbInit
    * def db = Java.type('com.wellsfargo.utils.MyDBUtils')

  @db
  @select
  Scenario: select stmt TestCase 1
  This is for db select stmt test case1

  db select validation 1

    * def rows = db.selectStatement("select * from tools")
    * print rows
    #* match rows contains "Karate"

  @db
  @insert
  Scenario: insert stmt TestCase 2
  This is for db insert stmt test case2

  db select validation 1

    * def result = db.insertStatement("Insert into tools values(2117,'java211','python')")
    * print result
    * match result == "Success"
    * def rows = db.selectStatement("select * from tools where toolid=2117 ")
    * print rows
    * match rows contains "java211"

  @db
  @update
  Scenario: update stmt TestCase 3
  This is for db update stmt test case3


    * def rowseffected = db.updateStatement("update tools set toolname='Mounika' where toolid=2117")
    * print rowseffected
    * assert rowseffected >= 1
    * def rows = db.selectStatement("select * from tools where toolid=2117 ")
    * print rows
    * match rows contains "Mounika"

  @db
  @deleted
  Scenario: delete stmt TestCase 3
  This is for db delecte stmt test case3


    * def rowseffected = db.deleteStatement("delete from tools where toolid=2117")
    * print rowseffected
    * assert rowseffected >= 1
    * def rows = db.selectStatement("select * from tools where toolid=2117 ")
    * print rows
    * match rows !contains "Mounika"