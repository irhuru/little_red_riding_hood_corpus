# Little Red Riding Hood Corpus

## The corpus

This corpus is **comprised of transcriptions of the [Little Red Riding Hood](https://en.wikipedia.org/wiki/Little_Red_Riding_Hood) fairy tale**. Narratives were produced **in Spanish by speakers from different countries** (either from the United States or from countries in Latin America).

## The data

All transcriptions were part of a long **.txt file**, and each transcription started **with the following information**:

* Participant 001
* Speaker: bilingual
* Origin: US

The first line indicates the **participant's code** (each participant was assigned a unique identifier). The second line described the **type of speaker** (e.g., bilingual). The third line indicated the **participant's country of origin**.

## The analysis

The long .txt file was divided into **individual .txt files**, so that there was a file per transcription. This was done using a **Python** script.

Then, individual transcriptions were opened in **R (running in RStudio)** and a data frame was created with the following variables:

* *code*
* *speaker*
* *origin*
* *sentences*

The three first variables corresponded to the information provided with each transcription. The **transcription was then divided into sentences** and there was a row per sentence in the data frame.

The final data frame was **exported as an Excel file**.
