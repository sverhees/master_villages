# East Caucasian villages: coordinates and languages

This repository contains a dataset with all East Caucasian villages, their coordinates and the language spoken there. It can be used to plot maps on East Caucasian languages or the languages of Daghestan in [Lingtypology](https://ropensci.github.io/lingtypology/) for R. These data are used in various projects to plot the areal distribution of certain grammatical features. This repository contains the full dataset of raw data. It is still under construction and will be updated. Feel free to use the data, but please create an issue or contact jh.verhees@gmail.com if you find any inaccuracies.


### Data

The dataset contains the following parameters

* **nr** - number of the entry in the dataset
* **eng** - name of the village in Latin script
* **rus** - name of the village in Cyrillic script
* **alternatives** - known alternative names for the villages
* **lat** - latitude
* **lon** - longitude
* **dialect** - the local variety spoken in the village
* **language** - the language spoken in the village
* **glottocode** - the code of the language or dialect in the Glottolog database (NB: The column **eng** also contains some entries named "glot_language", these points contain the coordinates of certain languages as stored in Glottolog. You can use them to see, for example, how a Glottolog point relates to the actual geographical distribution of the language in terms of villages.)
* **group** - the genetic branch or group the language belongs to
* **family** - language family
* **region** - region where the village is located
* **republic** - republic where the village is located
* **color** - vector of colors for each language, carefully selected by George Moroz. Use these if you do not feel like picking your own colors.
* **group_color** - vector of colors for each genetic group
* **socio** - whether there are data available on the village in the Atlas of Multilingualism in Daghestan
* **mention** - references to literature where the village is mentioned in connection with the dialect or language spoken there
* **comment** - any additional information


The first batch of data (all villages of Daghestan and the language spoken there), was mined by students of the 
[School of Linguistics](https://ling.hse.ru/en/) at NRU HSE Moscow, under the guidance of [George Moroz](https://github.com/agricolamz). The second batch (all villages of Chechnya and Ingushetia),
was mined by [George Moroz](https://github.com/agricolamz). Some inaccuracies in these data were corrected in the process of working with them. The third batch was created manually and contains the Avar-speaking villages in the Zaqatala and Belokan regions of Azerbaijan, and the Hunzib and Avar villages in the Kakheti region of Georgia.


### Projects

See also the [Database of Gender Systems in Nakh-Daghestanian languages](https://kartozia.github.io/Gender-Systems-Database/) created by [Inga Kartozia](https://github.com/kartozia) using these data, and [some maps on evidentiality](https://sverhees.github.io/maps/maps_v42.html) created by [me](https://github.com/sverhees).



