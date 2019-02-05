# East Caucasian villages: coordinates and languages

This repository contains a dataset with all East Caucasian villages, their coordinates and the language spoken there. It can be used to plot maps on East Caucasian languages or the languages of Daghestan in [Lingtypology](https://ropensci.github.io/lingtypology/) for R. During the last update, the data was restructured, but the old version of the dataset is still available in the folder **old data**.

Feel free to use the data, but if you find any mistakes, please create an issue or contact jh.verhees@gmail.com.

The data format is TAB-separated CSV files.


### Acknowledgements

The first batch of data (all villages of Daghestan and the language spoken there), was mined by students of the 
[School of Linguistics](https://ling.hse.ru/en/) at NRU HSE Moscow, under the guidance of [George Moroz](https://github.com/agricolamz). The second batch (all villages of Chechnya and Ingushetia),
was mined by [George Moroz](https://github.com/agricolamz). Some inaccuracies in these data were corrected in the process of working with them. The third batch was created manually and contains the Avar-speaking villages in the Zaqatala and Belokan regions of Azerbaijan, and the Hunzib and Avar villages in the Kakheti region of Georgia.


### Projects

See also the [Database of Gender Systems in Nakh-Daghestanian languages](https://kartozia.github.io/Gender-Systems-Database/) created by [Inga Kartozia](https://github.com/kartozia) using these data, and [some maps on evidentiality](https://sverhees.github.io/maps/maps_v42.html) created by [me](https://github.com/sverhees).

---

### Data

The dataset is divided into four tables containing the following parameters


#### Languages

List of languages distinguished in the dataset. I follow traditional accounts where a total of 29 independent languages are recognized. The parameter **Language** can be used to connect data from different tables.

* **Language** name of the language used in the dataset
* **Group** genetic group to which the language belongs. The division in groups is a mixture of higher and mid-level branches based on personal preferences. Other options and more detailed branching can be accessed using basic Lingtypology syntax.
* **Family** language family to which the language belongs; used to distinguish the few non East Caucasian languages spoken in the area.
* **Glottocode** glottocode of the language, which can be used to access background information and alternative names for the language via the [Glottolog](https://glottolog.org/) database.


#### Villages

A list of villages in the Republic of Daghestan, the Chechen and Ingush Republics, and adjacent regions where East Caucasian languages are spoken.

* **Name** - name of the village in Latin script
* **Lat** - latitudinal coordinates
* **Lon** - longitudinal coordinates
* **Language** - language spoken in the village
* **Lect** - dialect or local variety spoken in a village (still mostly empty)
* **Republic** - republic where the language is spoken
* **Region** - administrative district to which the village belongs (still mostly empty)


#### Glottolog Points

Sometimes you might want to contrast village-specific data with more general datapoints approximating the general area where a language is spoken. For this purpose, the glottolog points can be used.

* **Name** - name of a lect in the Glottolog database
* **Lat** - latitudinal coordinates
* **Lon** - longitudinal coordinates	
* **Language** - language name in this dataset


#### Colors

This table contains some pre-made colorschemes. The column **Data color** contains bright colors for points you have data for. The colors in **General color** are lighter shades of the colors in **Data color**. These allow you to contrast the locations for which you have data with locations where the same language is spoken, but for which you have no data. See some sample maps [here](https://sverhees.github.io/master_villages/sample_maps.html). **Group color** assigns the same color to each language that belongs to the same genetic group.



