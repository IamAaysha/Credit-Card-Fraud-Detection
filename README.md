Credit Card Fraud Detection in R

Project Overview
This project focuses on detecting fraudulent credit card transactions using machine learning techniques in R. The dataset is analyzed, preprocessed, and used to train multiple classification models, including Logistic Regression, K-Nearest Neighbors (KNN), and Decision Trees.

Dataset
The project uses a dataset (creditcardProject.csv) that includes:

Transaction details (e.g., amount)
Class labels (fraudulent or non-fraudulent transactions)

Key Steps
1. Data Preprocessing
Loaded the dataset and explored key statistics (mean, variance, standard deviation).
Scaled the Amount variable for better model performance.
Removed unnecessary columns.
2. Splitting the Data
Used 80-20 train-test split with the caTools package.
Ensured a balanced distribution of fraudulent and non-fraudulent transactions in both sets.
3. Model Training & Evaluation
   
🔹 Logistic Regression
Built a Logistic Regression model to classify transactions.
Evaluated model performance using summary statistics.

🔹 K-Nearest Neighbors (KNN)
Implemented a KNN model with k=21.
Achieved 85.7% accuracy on test data.

🔹 Decision Tree
Built a Decision Tree model using the C50 package.
Predicted fraudulent transactions and calculated accuracy (85.75%).

Results & Insights
Both KNN and Decision Tree models achieved high accuracy (~85%), indicating strong predictive performance.
Logistic Regression provided insights into feature importance but may require hyperparameter tuning for better results.

Technologies Used
R for data analysis and modeling
caTools for data splitting
C50 for decision tree modeling
class package for KNN

How to Run the Project
Clone the repository:
sh
Copy
Edit
git clone <repo-link>
Open the R script and update the dataset path:
r
Copy
Edit
df <- read.csv("path/to/creditcardProject.csv")
Run the script to train models and evaluate predictions.

Next Steps & Improvements
Apply Random Forest or XGBoost to improve fraud detection accuracy.
Perform feature engineering to enhance model performance.
Optimize k value in KNN for better classification results.

Disclaimer
This project is for educational and research purposes only. The dataset may not reflect real-world fraud trends and should not be used in production applications without further validation.
