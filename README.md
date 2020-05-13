# East Caucasian villages: coordinates and languages

This repository contains a dataset with a list of villages in the eastern Caucasus, their coordinates and the language spoken there. It can be used to plot maps on East Caucasian languages or the languages of Dagestan using the [Lingtypology](https://ropensci.github.io/lingtypology/) package for R.

Feel free to use the data. If you find any mistakes, please create an issue.

Data format is TAB-separated CSV file or XLSX file.

Note that a few villages in the dataset have the same name -- keep this in mind when you are merging data.


### Acknowledgements

The first batch of data (all villages of Dagestan and the language spoken there), was mined by students of the 
[School of Linguistics](https://ling.hse.ru/en/) at NRU HSE Moscow, under the guidance of [George Moroz](https://github.com/agricolamz). The second batch (all villages of Chechnya and Ingushetia),
was mined by [George Moroz](https://github.com/agricolamz). Some inaccuracies in these data were corrected in the process of working with them. The third batch was created manually and contains the Avar-speaking villages in the Zaqatala and Belokan regions of Azerbaijan, and the Hunzib and Avar villages in the Kakheti region of Georgia. Thanks to Matt Zaslansky for his help locating some villages in Zaqatala. Chechen speaking villages in Georgia were added following an issue created by [Jesse Wichers Schreur](https://github.com/JesseWS).

The fourth batch was created by collapsing Yury Koryakov's database with census and language information. All census data were merged by [George Moroz](https://github.com/agricolamz), Cyrillic and Latin village name correspondences were made by Lev Kazakevich. All of these data  were finally merged with the previous version of the villages dataset by [George Moroz](https://github.com/agricolamz). 

### Projects

See also the [Database of Gender Systems in Nakh-Daghestanian languages](https://kartozia.github.io/Gender-Systems-Database/) created by [Inga Kartozia](https://github.com/kartozia) using these data, and [some maps on evidentiality](https://sverhees.github.io/dissertation_evidentiality/index.html) created by [me](https://github.com/sverhees).

---

### Data

The dataset is divided into two tables containing the following parameters



#### Villages

A list of villages in the Republic of Dagestan, the Chechen and Ingush Republics, and adjacent regions where East Caucasian languages are spoken.

* **village** - name of the village in Latin script
* **lat** - latitudinal coordinates
* **lon** - longitudinal coordinates
* **lang** - language spoken in the village
* **idiom** - dialect or local variety spoken in a village (still mostly empty)
* **republic** - republic where the language is spoken
* **region** - administrative district to which the village belongs (still mostly empty)
* **elevation** - altitude of the village (approximately)

#### Metadata

The metadata file was based on a list of the  traditionally recognized languages of the East Caucasian family and some additional idioms were added later. The addition of idioms and the annotation of villages for idiom is still at an early stage, and is not carried out in a very systematic way. (For example, I added Sanzhi simply because there is a grammar for Sanzhi, so we might want to display information from it on the map.)

For general maps, you can simply filter out the 29 East Caucasian languages that are usually distinguished (+ the four non-EC languages spoken in the area) using the **core** parameter.

* **lang** - name of the language used in the dataset
* **idiom** - dialect or local variety spoken in a village
* **core** - *yes:* 29 traditionally recognized East Caucasian languages + local Turkic languages and Armenian; *no:* additional idioms
* **aff** - genealogical group to which the language belongs. The division in groups is a mixture of higher and mid-level branches based on personal preferences. Other options and more detailed branching can be accessed using basic Lingtypology syntax
* **family** - language family to which the language belongs; used to distinguish the few non East Caucasian languages spoken in the area
* **glottocode** - glottocode of the idiom, which can be used to access background information and alternative names for the language via the [Glottolog](https://glottolog.org/) database
* **gltc_lat** - latitudinal coordinates for a generalized datapoint for the idiom in question; idioms limited to one village have the village coordinates
* **gltc_lon** - longitudinal coordinates for a generalized datapoint for the idiom in question; idioms limited to one village have the village coordinates
* **general_location** - the nature of the location for the coordinates in this file. In most cases a generalized datapoint from [Glottolog](https://glottolog.org/) is used
* **lang_color** - color scheme with a unique color for each language
* **lang_color_pale** - a light shades of the previous color scheme, see the [sample maps](https://sverhees.github.io/master_villages/sample_maps.html)
* **aff_color** - color scheme with a unique color for each genealogical group
* **lang_color_dagtlas** - an alternative color scheme with a unique color for each genealogical group
* **villages_marked** - specifies whether an (additional) idiom is marked in the dataframe with villages 
* **comment** - any kind of comment on the datapoint


#### Updates

04.04.2019 - village: Sary-su language: ~~Chechen~~ Nogai;
            village: Vinogradnoe (Chechnya) language: ~~Chechen~~ Kumyk;
            village: Braguny language: ~~Chechen~~ Kumyk

05.05.2019 - [George Moroz](https://github.com/agricolamz) added parameter altitude (in meters above sea-level).

28.05.2019 - added datapoint for Kurush (Dokuzparinsky district).

03.10.2019 - added the fourth batch of data (see above); 
village Chantliskure: changed name to Chantlisqure and language ~~Hinukh~~ Behzta;
added villages: Duisi, Dzibakhevi, Dzhokolo, Shua Khalatsani, Birkiani, Omalo (Pankisi) - language: Chechen. (Altitude will be added for these villages later.)

21.02.2020 - restructured the data; added the village Sanzhi, idiom: Sanzhi, language: Dargwa

13.05.2020 - added Tat language (location: Derbent); added Georgian language; added locations Tlyarata (Avar); Tsunta (Tsez); Qum (Tsakhur); Qax (Azerbaijani); Ilisu (Azerbaijani, historically Tsakhur); Alibeglo (Georgian); Meshabash (Georgian); added .xlsx files of the datasets because some people who use Windows have problems opening the .csv files; added parameter "kutans": this helps to filter out the northern part of Dagestan, which was inhabited relatively recently and consists of a mish-mash of ethnicities and languages. In addition, very little to nothing is known about the varieties spoken there; created an official release for reference, following an [issue](https://github.com/sverhees/master_villages/issues/6) by [George Moroz](https://github.com/agricolamz).
