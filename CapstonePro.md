CapstonePro
========================================================
author: Aanchal Setia
date: 30 November 2020
autosize: true

Overview of the Prediction Model
========================================================
The prediction model uses the principles of **tidy data** applied to text mining in R. The following Key steps are involved in the prediction model.

* As an input, it takes raw text files for model training
* Clean the raw data; separate into 2, 3, 4, 5, and 6 word n grams and save as tibbles
* Sort the n grams tibbles by frequency and save the data as *.rds* files
* N grams function uses a **back-off** type prediction model
      - User supplies an input phrase

Overview of the Prediction Model
========================================================
Model uses last 5, 4, 3, 2, or 1 words to predict the best 6th, 5th, 4th, 3rd, or 2nd   match in the data

As an output, it predicts next word

Next Word Predictor App
========================================================

The Next Word Predictor app provides a simple user interface to the next word prediction model. The app takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.


App Link
========================================================

https://aanchalsetia.shinyapps.io/capstonepro/




