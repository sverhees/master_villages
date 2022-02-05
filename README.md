
# East Caucasian villages: coordinates and languages

This repository contains a dataset with a list of villages in the eastern Caucasus, their coordinates and the (main) language spoken there. It can be used to plot maps on East Caucasian languages or the languages of Daghestan using the [Lingtypology](https://ropensci.github.io/lingtypology/) package for R.

Feel free to use the data. If you find any mistakes, please create an [issue](https://github.com/sverhees/master_villages/issues) here on Github.

Data format is TSV or XLSX.

## Cite

Moroz, George, & Verhees, Samira. (2020). *East Caucasian villages dataset (Version v2.0)* [Data set]. Zenodo. https://doi.org/10.5281/zenodo.5588473

<a href="https://doi.org/10.5281/zenodo.5588473"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.5588473.svg" alt="DOI"></a>

## Acknowledgments

The first batch of data (all villages of Daghestan and the language spoken there), was mined by [George Moroz](https://github.com/agricolamz). Daria Ignatenko (a student of the [School of Linguistics](https://ling.hse.ru/en/) at HSE University Moscow) also worked on the first version of the script.

The second batch (all villages of Chechnya and Ingushetia), was mined by [George Moroz](https://github.com/agricolamz). Some inaccuracies in the data were corrected in the process of working with them. 

The third batch was created manually and contains the Avar-speaking villages in the Zaqatala and Belokan regions of Azerbaijan, and the Bezhta and Avar villages in the Kakheti region of Georgia. Thanks to Matt Zaslansky for his help locating some villages in Zaqatala. Chechen speaking villages in Georgia were added following an issue created by [Jesse Wichers Schreur](https://github.com/JesseWS).

The fourth (seperate) batch was created by collapsing Yuri Koryakov's database with census and language information (see also: [Multidagestan > Census](https://multidagestan.com/census). All census data were merged by [George Moroz](https://github.com/agricolamz), Cyrillic and Latin village name correspondences were made by Lev Kazakevich. All of these data  were finally merged with the previous version of the villages dataset by [George Moroz](https://github.com/agricolamz). See the files in the folder [data > extra](https://github.com/sverhees/master_villages/tree/master/data/extra).

The fifth batch of data consists of an annotation of dialect affiliations for the villages, based on available literature. This task was carried out by Inga Kartozia and Kirill Koncha (both students of the [School of Linguistics](https://ling.hse.ru/en/) at HSE University Moscow). The data were subsequently edited by me ([Samira Verhees](https://sverhees.github.io/site/)), during which I got a lot of help from [Yuri Koryakov](https://iling-ran.ru/web/ru/scholars/koryakov).

The sixth batch of data consists of Tat-speaking villages in the area (limited to those which still had a Tat-speaking community in the 20th century), entered manually based on the work of Murad Suleymanov.

## Contact

If you have any questions or comments about the dataset, write a letter to jh.verhees at gmail.

## Projects

- [Typological atlas of the languages of Daghestan](http://lingconlab.ru/dagatlas/) created by a team from the [Linguistic Convergence Laboratory](https://ilcl.hse.ru/) (beta version)
- [Database of Gender Systems in Nakh-Daghestanian languages](https://kartozia.github.io/Gender-Systems-Database/) created by [Inga Kartozia](https://github.com/kartozia)

---

## Data

The latest version of the dataset (**villages** in the folder **data**) consists of a single table with the following parameters: 

* **id** - unique id for each entry
* **village** - name of the village in Latin script
* **rus_village** - name of the village in Cyrillic script
* **village_altnames** - alternative names for the village, for now mostly empty
* **lat** - latitudinal coordinates
* **lon** - longitudinal coordinates
* **coord_source** - source from which the coordinates were retrieved (not always clear)
* **settlement_type** - e.g. village or hamlet, for now mostly empty
* **lang** - language spoken in the village
* **aff** - branch to which the language belongs; mentions only uncontroversial group membership and takes an agnostic stance towards grouping among branches
* **family** - language family
* **republic** - republic where the language is spoken
* **region** - administrative district to which the village belongs (still mostly empty)
* **elevation** - altitude of the village (approximately)
* **kutans** - whether the village is a relatively new settlement in the north of Dagestan or not       

The dialect levels are organized from macro-groups like *Southern Avar* (**dialect_toplevel**) to village varieties (**village_dialect**); some groups may show internal branching (all **nt** - non-toplevel columns). The name for each dialect / level is given in English/Latin and Russian/Cyrillic (column names ending in **cyr**). 

Note that **village_dialect** mostly duplicates the column with village names (**village**), though in some cases we use the common spelling from the literature here, rather than a simple transcription of the Russian name (e.g. the **village** Khpyuk has **village_dialect** Huppuq'); their Russian equivalents can be found in **rus_village**.

* **dialect_toplevel**     
* **dialect_toplevel_cyr**
* **dialect_nt1**          
* **dialect_nt1_cyr**      
* **dialect_nt2**    
* **dialect_nt2_cyr**     
* **dialect_nt3**          
* **dialect_nt3_cyr**  
* **village_dialect**    

* **source** - source for information on dialect affiliation; the reference is a `Bibtexkey`; full bibliographical information can be found in the file **bib** (*will be uploaded shortly*)               
* **page** - relevant page from the source 

* **gltl_village_dialect** - if the village dialect is mentioned in the [Glottolog](https://glottolog.org) database, its *name* is displayed here
* **gltc_village_dialect** - - if the village dialect is mentioned in the [Glottolog](https://glottolog.org) database, its *glottocode* is displayed here
* **gltl_dialect** - if one of our dialects corresponds to a "languoid" from [Glottolog](https://glottolog.org), its *name* is displayed here. In each case I took the lowest available level from Glottolog, e.g. for Tsez, [Glottolog](https://glottolog.org) distinguishes Nuclear Tsez - Kidero, I entered Kidero as corresponding layer for all villages belonging to this dialect
* **gltc_dialect** - corresponding glottocode for the dialects in **gltl_dialect**         
* **gltc_lang** - glottocode for the languages in our dataset           
* **lang_col**  - standard color pallette for languages (see the example maps)         
* **aff_col** - standard color pallette for branches (see the example maps)  

* **dialect_comment** - any additional comments on a dialect annotation
* **villagelang_comment** - additional comments on the village (e.g. "mixed village", "formerly Tat-speaking")
* **manual** - whether the datapoint was manually added or corrected wrt the original legacy dataset

## Legacy data

*This section describes the structure of the files **villages** and **meta** (folder: data > old). They constitute an older version of the dataset.*

The dataset is divided into two tables containing the following parameters:

### Villages

A list of villages in the Republic of Dagestan, the Chechen and Ingush Republics, and adjacent regions where East Caucasian languages are spoken.

* **id** - unique id for each entry
* **village** - name of the village in Latin script
* **lat** - latitudinal coordinates
* **lon** - longitudinal coordinates
* **lang** - language spoken in the village
* **idiom** - dialect or local variety spoken in a village (still mostly empty)
* **republic** - republic where the language is spoken
* **region** - administrative district to which the village belongs (still mostly empty)
* **elevation** - altitude of the village (approximately)
* **kutans** - whether the village is a relatively new settlement in the north of Dagestan or not

#### Metadata

The metadata file was based on a list of the traditionally recognized languages of the East Caucasian family and some additional idioms were added later. The addition of idioms and the annotation of villages for idiom is still at an early stage, and is not carried out in a very systematic way. (For example, I added Sanzhi simply because there is a grammar for Sanzhi, so we might want to display information from it on the map.)

For general maps, you can simply filter out the 29 East Caucasian languages that are usually distinguished (+ the four non-East Caucasian languages spoken in the area) using the **core** parameter.

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

---

## Updates

04.04.2019 - village: Sary-su language: ~~Chechen~~ Nogai;
            village: Vinogradnoe (Chechnya) language: ~~Chechen~~ Kumyk;
            village: Braguny language: ~~Chechen~~ Kumyk

05.05.2019 - [George Moroz](https://github.com/agricolamz) added parameter altitude (in meters above sea-level).

28.05.2019 - added datapoint for Kurush (Dokuzparinsky district).

03.10.2019 - added the fourth batch of data (see above); 
village Chantliskure: changed name to Chantlisqure and language ~~Hinukh~~ Behzta;
added villages: Duisi, Dzibakhevi, Dzhokolo, Shua Khalatsani, Birkiani, Omalo (Pankisi) - language: Chechen. (Altitude will be added for these villages later.)

21.02.2020 - restructured the data; added the village Sanzhi, idiom: Sanzhi, language: Dargwa

13.05.2020 - added Tat language (location: Derbent); added Georgian language; added locations Tlyarata (Avar); Tsunta (Tsez); Qum (Tsakhur); Qax (Azerbaijani); Ilisu (Azerbaijani, historically Tsakhur); Alibeglo (Georgian); Meshabash (Georgian); added .xlsx files of the datasets because some people who use Windows have problems opening the .csv files; added parameter "kutans": this helps to filter out the northern part of Dagestan, which was inhabited relatively recently and consists of a mish-mash of ethnicities and languages. In addition, very little to nothing is known about the varieties spoken there; added an "id" column to prevent problems with villages that have the same name; created an official release for reference, following an [issue](https://github.com/sverhees/master_villages/issues/6) by [George Moroz](https://github.com/agricolamz).

24.06.2020 - updated acknowledgements.

15.01.2021 - added dialect annotation; added Cyrillic village names; removed Glavnyy-Kut (empty); updated coordinates for Siukh (1478); renewed page with example maps.

15.02.2021 - corrected dialect annotation; added Budukh speaking villages in Azerbaijan; added Rutul village Borch.

21.10.2021 - added references for dialect annotation (data > **dialect_refs**); resolved issues [1](https://github.com/sverhees/master_villages/issues/10), [2](https://github.com/sverhees/master_villages/issues/11), [3](https://github.com/sverhees/master_villages/issues/14); corrections thanks to Max Melenchenko: added Latin name for Аямахи	-- Ayamakhi; corrected Azerbaijani Avar data; added Azerbaijani Tat data; dataset now also available in the form of subsets, manual additions and corrections are now marked; Azeri names for villages in Azerbaijan in column **village** (instead of transcriptions of the Cyrillic name).

31.01.2022 - corrections in Andic subset from Yuri Koryakov: Verkhnie Gakvari > Verkhnee Gakvari; Nizhnie Gakvari > Nizhnee Gakvari; removed 1485 (Old Siukh) because it was a duplicate of 448 (Old Sivukh); added Anxo (Botlikh), Egdada (Chamalal), Tlenkhori (Bagvalal), Bekhvalutchi (Tindi); added a special folder with datasets for [TALD](http://lingconlab.ru/dagatlas/); added column **village_dialect** to searchable [dialect table](https://sverhees.github.io/master_villages/maps_new.html#dialects).

05.02.2022 - **village_dialect** Inkhokvari > Inkhoqwari; Mikikh > Mikik; fixed Russian entries in **dialect_toplevel** / English entries in **dialect_toplevel_cyr**. Added code for generating datasets. Created new main file without date. 