# Data Modeling/Engineering with SQL

###### NOTE: When viewing the queries.sql file, please feel free to either run the code individually from the SELECT commands, to the semi-colon, or run the code to show the view corresponding to the questions.

### This exercise is a data merge and subsequent investigation of old CSV files that hold employee data from prior to new system integration (a relatively common occurance). The Entity Relationship Diagram (ERD) in the images folder is a visual representation of the relationships between the data, and ultimately the way in which they connect within the newly formed SQL database. table-schemata.sql contains the code to set up the SQL database and queries.sql provides answers to questions within the scope of the project. Bonus Analysis.ipynb arranges and pulls the data into Python and answers the question listed below:

#### "As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:"

#### Upon reviewing the data, while the frequency of salaries skews right as we would expect, the Average Salary by title graph shows a much different story. It shows a fairly regular distribution across all titles, which is strange as one would expect Seniors and Leaders to have a much higher average salary. Also, pulling the ID number on "my" badge(499942), the database tells me that my name is: "April Foolsday"


