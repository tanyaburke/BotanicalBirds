//
//  BirdSpeciesJSONData.swift
//  BirdFlower
//
//  Created by Gregory Keeley on 8/31/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import Foundation

class BirdsSpecies: Decodable {
    var commonName: String
    var scientificName: String
    
    init(commonName: String, scientificName: String) {
        self.commonName = commonName
        self.scientificName = scientificName
    }
    
    static func decodeBirdSpeciesData() -> [BirdsSpecies]? {
        do {
            return try JSONDecoder().decode([BirdsSpecies].self, from: birdsSpeciesJSONData)
        } catch {
            print("Bird data failed to decode")
            return nil
        }
        
    }
    static let birdsSpeciesJSONData = """
[
    {
        "bandCode4": "HITI",
        "commonName": "Highland Tinamou",
        "scientificName": "Nothocercus bonapartei",
        "bandCode6": "NOTBON"
    },
    {
        "bandCode4": "GRTI",
        "commonName": "Great Tinamou",
        "scientificName": "Tinamus major",
        "bandCode6": "TINMAJ"
    },
    {
        "bandCode4": "LITI",
        "commonName": "Little Tinamou",
        "scientificName": "Crypturellus soui",
        "bandCode6": "CRYSOU"
    },
    {
        "bandCode4": "THTI",
        "commonName": "Thicket Tinamou",
        "scientificName": "Crypturellus cinnamomeus",
        "bandCode6": "CRYCIN"
    },
    {
        "bandCode4": "SBTI",
        "commonName": "Slaty-breasted Tinamou",
        "scientificName": "Crypturellus boucardi",
        "bandCode6": "CRYBOU"
    },
    {
        "bandCode4": "CHTI",
        "commonName": "Choco Tinamou",
        "scientificName": "Crypturellus kerriae",
        "bandCode6": "CRYKER"
    },
    {
        "bandCode4": "WFWD",
        "commonName": "White-faced Whistling-Duck",
        "scientificName": "Dendrocygna viduata",
        "bandCode6": "DENVID"
    },
    {
        "bandCode4": "BBWD",
        "commonName": "Black-bellied Whistling-Duck",
        "scientificName": "Dendrocygna autumnalis",
        "bandCode6": "DENAUT"
    },
    {
        "bandCode4": "WIWD",
        "commonName": "West Indian Whistling-Duck",
        "scientificName": "Dendrocygna arborea",
        "bandCode6": "DENARB"
    },
    {
        "bandCode4": "FUWD",
        "commonName": "Fulvous Whistling-Duck",
        "scientificName": "Dendrocygna bicolor",
        "bandCode6": "DENBIC"
    },
    {
        "bandCode4": "TABG",
        "commonName": "Taiga Bean-Goose",
        "scientificName": "Anser fabalis",
        "bandCode6": "ANSFAB"
    },
    {
        "bandCode4": "TUBG",
        "commonName": "Tundra Bean-Goose",
        "scientificName": "Anser serrirostris",
        "bandCode6": "ANSSER"
    },
    {
        "bandCode4": "PFGO",
        "commonName": "Pink-footed Goose",
        "scientificName": "Anser brachyrhynchus",
        "bandCode6": "ANSBRA"
    },
    {
        "bandCode4": "GWFG",
        "commonName": "Greater White-fronted Goose",
        "scientificName": "Anser albifrons",
        "bandCode6": "ANSALB"
    },
    {
        "bandCode4": "LWFG",
        "commonName": "Lesser White-fronted Goose",
        "scientificName": "Anser erythropus",
        "bandCode6": "ANSERY"
    },
    {
        "bandCode4": "GRGO",
        "commonName": "Graylag Goose",
        "scientificName": "Anser anser",
        "bandCode6": "ANSANS"
    },
    {
        "bandCode4": "EMGO",
        "commonName": "Emperor Goose",
        "scientificName": "Chen canagica",
        "bandCode6": "CHECAN"
    },
    {
        "bandCode4": "SNGO",
        "commonName": "Snow Goose",
        "scientificName": "Chen caerulescens",
        "bandCode6": "CHECAE"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LSGW",
        "commonName": "Lesser Snow Goose White-morph",
        "scientificName": "Chen c. caerulescens",
        "bandCode6": "CHECCA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LSGI",
        "commonName": "Lesser Snow Goose Intermediate-morph",
        "scientificName": "Chen c. caerulescens",
        "bandCode6": "CHECCA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LSGB",
        "commonName": "Lesser Snow Goose Blue-morph",
        "scientificName": "Chen c. caerulescens",
        "bandCode6": "CHECCA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "GSGW",
        "commonName": "Greater Snow Goose White-morph",
        "scientificName": "Chen c. atlantica",
        "bandCode6": "CHECAT"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "GSGI",
        "commonName": "Greater Snow Goose Intermediate-morph",
        "scientificName": "Chen c. atlantica",
        "bandCode6": "CHECAT"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "GSGB",
        "commonName": "Greater Snow Goose Blue-morph",
        "scientificName": "Chen c. atlantica",
        "bandCode6": "CHECAT"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SRGH",
        "commonName": "Snow X Ross's Goose Hybrid",
        "scientificName": "Chen caerul. x rossii",
        "bandCode6": "CHECAR"
    },
    {
        "bandCode4": "ROGO",
        "commonName": "Ross's Goose",
        "scientificName": "Chen rossii",
        "bandCode6": "CHEROS"
    },
    {
        "bandCode4": "BRAN",
        "commonName": "Brant",
        "scientificName": "Branta bernicla",
        "bandCode6": "BRABER"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "ATBR",
        "commonName": "Atlantic Brant",
        "scientificName": "Branta b. bernicla",
        "bandCode6": "BRABBE"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "BRIN",
        "commonName": "Brant Intergrade",
        "scientificName": "Branta b. bern. x nigri.",
        "bandCode6": "BRABBN"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "BLBR",
        "commonName": "Black Brant",
        "scientificName": "Branta b. nigricans",
        "bandCode6": "BRABNI"
    },
    {
        "bandCode4": "BARG",
        "bandCode4Conflict": true,
        "commonName": "Barnacle Goose",
        "scientificName": "Branta leucopsis",
        "bandCode6": "BRALEU"
    },
    {
        "bandCode4": "CACG",
        "bandCode4Conflict": true,
        "commonName": "Cackling Goose",
        "scientificName": "Branta hutchinsii",
        "bandCode6": "BRAHUT"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "ACGO",
        "commonName": "Aleutian Cackling Goose",
        "scientificName": "Branta h. leucopareia",
        "bandCode6": "BRAHLE"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "MCGO",
        "commonName": "Minima Cackling Goose",
        "scientificName": "Branta h. minima",
        "bandCode6": "BRAHMI"
    },
    {
        "bandCode4": "CANG",
        "bandCode4Conflict": true,
        "commonName": "Canada Goose",
        "scientificName": "Branta canadensis",
        "bandCode6": "BRACAN"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LCGO",
        "commonName": "Large Canada Goose",
        "scientificName": "Branta c. moffitti",
        "bandCode6": "BRACMO"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SCGO",
        "commonName": "Small Canada Goose",
        "scientificName": "Branta c. parvipes",
        "bandCode6": "BRACPA"
    },
    {
        "bandCode4": "HAGO",
        "commonName": "Hawaiian Goose",
        "scientificName": "Branta sandvicensis",
        "bandCode6": "BRASAN"
    },
    {
        "bandCode4": "MUSW",
        "commonName": "Mute Swan",
        "scientificName": "Cygnus olor",
        "bandCode6": "CYGOLO"
    },
    {
        "bandCode4": "TRUS",
        "bandCode4Conflict": true,
        "commonName": "Trumpeter Swan",
        "scientificName": "Cygnus buccinator",
        "bandCode6": "CYGBUC"
    },
    {
        "bandCode4": "TUSW",
        "commonName": "Tundra Swan",
        "scientificName": "Cygnus columbianus",
        "bandCode6": "CYGCOL"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "WHSW",
        "commonName": "Whistling Swan",
        "scientificName": "Cygnus c. columbianus",
        "bandCode6": "CYGCCO"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "BESW",
        "commonName": "Bewick's Swan",
        "scientificName": "Cygnus c. bewickii",
        "bandCode6": "CYGCBE"
    },
    {
        "bandCode4": "WHOS",
        "bandCode4Conflict": true,
        "commonName": "Whooper Swan",
        "scientificName": "Cygnus cygnus",
        "bandCode6": "CYGCYG"
    },
    {
        "bandCode4": "CODU",
        "commonName": "Comb Duck",
        "scientificName": "Sarkidiornis melanotos",
        "bandCode6": "SARMEL"
    },
    {
        "bandCode4": "ORGO",
        "commonName": "Orinoco Goose",
        "scientificName": "Neochen jubata",
        "bandCode6": "NEOJUB"
    },
    {
        "bandCode4": "MUDU",
        "commonName": "Muscovy Duck",
        "scientificName": "Cairina moschata",
        "bandCode6": "CAIMOS"
    },
    {
        "bandCode4": "WODU",
        "commonName": "Wood Duck",
        "scientificName": "Aix sponsa",
        "bandCode6": "AIXSPO"
    },
    {
        "bandCode4": "GADW",
        "commonName": "Gadwall",
        "scientificName": "Anas strepera",
        "bandCode6": "ANASTR"
    },
    {
        "bandCode4": "FADU",
        "commonName": "Falcated Duck",
        "scientificName": "Anas falcata",
        "bandCode6": "ANAFAL"
    },
    {
        "bandCode4": "EUWI",
        "commonName": "Eurasian Wigeon",
        "scientificName": "Anas penelope",
        "bandCode6": "ANAPEN"
    },
    {
        "bandCode4": "AMWI",
        "commonName": "American Wigeon",
        "scientificName": "Anas americana",
        "bandCode6": "ANAAME"
    },
    {
        "bandCode4": "ABDU",
        "commonName": "American Black Duck",
        "scientificName": "Anas rubripes",
        "bandCode6": "ANARUB"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "ABDH",
        "commonName": "American Black Duck X Mallard Hybrid",
        "scientificName": "Anas rubripes x platy.",
        "bandCode6": "ANARUP"
    },
    {
        "bandCode4": "MALL",
        "commonName": "Mallard",
        "scientificName": "Anas platyrhynchos",
        "bandCode6": "ANAPLA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "MEDU",
        "commonName": "Mexican Duck",
        "scientificName": "Anas p. diazi",
        "bandCode6": "ANAPDI"
    },
    {
        "bandCode4": "MODU",
        "commonName": "Mottled Duck",
        "scientificName": "Anas fulvigula",
        "bandCode6": "ANAFUL"
    },
    {
        "bandCode4": "HAWD",
        "bandCode4Conflict": true,
        "commonName": "Hawaiian Duck",
        "scientificName": "Anas wyvilliana",
        "bandCode6": "ANAWYV"
    },
    {
        "bandCode4": "LAYD",
        "bandCode4Conflict": true,
        "commonName": "Laysan Duck",
        "scientificName": "Anas laysanensis",
        "bandCode6": "ANALAY"
    },
    {
        "bandCode4": "ESBD",
        "commonName": "Eastern Spot-billed Duck",
        "scientificName": "Anas zonorhyncha",
        "bandCode6": "ANAZON"
    },
    {
        "bandCode4": "BWTE",
        "commonName": "Blue-winged Teal",
        "scientificName": "Anas discors",
        "bandCode6": "ANADIS"
    },
    {
        "bandCode4": "CITE",
        "commonName": "Cinnamon Teal",
        "scientificName": "Anas cyanoptera",
        "bandCode6": "ANACYA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNTE",
        "commonName": "Unidentified Teal",
        "scientificName": "Anas (sp)",
        "bandCode6": "ANASPE"
    },
    {
        "bandCode4": "NSHO",
        "bandCode4Conflict": true,
        "commonName": "Northern Shoveler",
        "scientificName": "Anas clypeata",
        "bandCode6": "ANACLY"
    },
    {
        "bandCode4": "WCHP",
        "bandCode4Conflict": true,
        "commonName": "White-cheeked Pintail",
        "scientificName": "Anas bahamensis",
        "bandCode6": "ANABAH"
    },
    {
        "bandCode4": "NOPI",
        "commonName": "Northern Pintail",
        "scientificName": "Anas acuta",
        "bandCode6": "ANAACU"
    },
    {
        "bandCode4": "GARG",
        "commonName": "Garganey",
        "scientificName": "Anas querquedula",
        "bandCode6": "ANAQUE"
    },
    {
        "bandCode4": "BATE",
        "commonName": "Baikal Teal",
        "scientificName": "Anas formosa",
        "bandCode6": "ANAFOR"
    },
    {
        "bandCode4": "GWTE",
        "commonName": "Green-winged Teal",
        "scientificName": "Anas crecca",
        "bandCode6": "ANACRE"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "AGWT",
        "commonName": "American Green-winged Teal",
        "scientificName": "Anas c. carolinensis",
        "bandCode6": "ANACCA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "EGWT",
        "commonName": "Eurasian Green-winged Teal",
        "scientificName": "Anas c. crecca",
        "bandCode6": "ANACCR"
    },
    {
        "bandCode4": "CANV",
        "commonName": "Canvasback",
        "scientificName": "Aythya valisineria",
        "bandCode6": "AYTVAL"
    },
    {
        "bandCode4": "REDH",
        "commonName": "Redhead",
        "scientificName": "Aythya americana",
        "bandCode6": "AYTAME"
    },
    {
        "bandCode4": "COMP",
        "bandCode4Conflict": true,
        "commonName": "Common Pochard",
        "scientificName": "Aythya ferina",
        "bandCode6": "AYTFER"
    },
    {
        "bandCode4": "RNDU",
        "commonName": "Ring-necked Duck",
        "scientificName": "Aythya collaris",
        "bandCode6": "AYTCOL"
    },
    {
        "bandCode4": "TUDU",
        "commonName": "Tufted Duck",
        "scientificName": "Aythya fuligula",
        "bandCode6": "AYTFUL"
    },
    {
        "bandCode4": "GRSC",
        "commonName": "Greater Scaup",
        "scientificName": "Aythya marila",
        "bandCode6": "AYTMAR"
    },
    {
        "bandCode4": "LESC",
        "commonName": "Lesser Scaup",
        "scientificName": "Aythya affinis",
        "bandCode6": "AYTAFF"
    },
    {
        "bandCode4": "STEI",
        "commonName": "Steller's Eider",
        "scientificName": "Polysticta stelleri",
        "bandCode6": "POLSTE"
    },
    {
        "bandCode4": "SPEI",
        "commonName": "Spectacled Eider",
        "scientificName": "Somateria fischeri",
        "bandCode6": "SOMFIS"
    },
    {
        "bandCode4": "KIEI",
        "commonName": "King Eider",
        "scientificName": "Somateria spectabilis",
        "bandCode6": "SOMSPE"
    },
    {
        "bandCode4": "COEI",
        "commonName": "Common Eider",
        "scientificName": "Somateria mollissima",
        "bandCode6": "SOMMOL"
    },
    {
        "bandCode4": "HADU",
        "commonName": "Harlequin Duck",
        "scientificName": "Histrionicus histrionicus",
        "bandCode6": "HISHIS"
    },
    {
        "bandCode4": "LABD",
        "bandCode4Conflict": true,
        "commonName": "Labrador Duck",
        "scientificName": "Camptorhynchus labradorius",
        "bandCode6": "CAMLAB"
    },
    {
        "bandCode4": "SUSC",
        "commonName": "Surf Scoter",
        "scientificName": "Melanitta perspicillata",
        "bandCode6": "MELPER"
    },
    {
        "bandCode4": "WWSC",
        "commonName": "White-winged Scoter",
        "scientificName": "Melanitta fusca",
        "bandCode6": "MENFUS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BLSC",
        "commonName": "Black Scoter",
        "scientificName": "Melanitta americana",
        "bandCode6": "MELAME"
    },
    {
        "bandCode4": "LTDU",
        "commonName": "Long-tailed Duck",
        "scientificName": "Clangula hyemalis",
        "bandCode6": "CLAHYE"
    },
    {
        "bandCode4": "BUFF",
        "commonName": "Bufflehead",
        "scientificName": "Bucephala albeola",
        "bandCode6": "BUCALB"
    },
    {
        "bandCode4": "COGO",
        "commonName": "Common Goldeneye",
        "scientificName": "Bucephala clangula",
        "bandCode6": "BUCCLA"
    },
    {
        "bandCode4": "BAGO",
        "commonName": "Barrow's Goldeneye",
        "scientificName": "Bucephala islandica",
        "bandCode6": "BUCISL"
    },
    {
        "bandCode4": "SMEW",
        "commonName": "Smew",
        "scientificName": "Mergellus albellus",
        "bandCode6": "MERALB"
    },
    {
        "bandCode4": "HOME",
        "commonName": "Hooded Merganser",
        "scientificName": "Lophodytes cucullatus",
        "bandCode6": "LOPCUC"
    },
    {
        "bandCode4": "COME",
        "commonName": "Common Merganser",
        "scientificName": "Mergus merganser",
        "bandCode6": "MERMER"
    },
    {
        "bandCode4": "RBME",
        "commonName": "Red-breasted Merganser",
        "scientificName": "Mergus serrator",
        "bandCode6": "MERSER"
    },
    {
        "bandCode4": "MADU",
        "commonName": "Masked Duck",
        "scientificName": "Nomonyx dominicus",
        "bandCode6": "NOMDOM"
    },
    {
        "bandCode4": "RUDU",
        "commonName": "Ruddy Duck",
        "scientificName": "Oxyura jamaicensis",
        "bandCode6": "OXYJAM"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNDU",
        "commonName": "Unidentified Duck",
        "scientificName": "Anatinae (gen, sp)",
        "bandCode6": "ANAGSP"
    },
    {
        "bandCode4": "PLCH",
        "commonName": "Plain Chachalaca",
        "scientificName": "Ortalis vetula",
        "bandCode6": "ORTVET"
    },
    {
        "bandCode4": "GHEC",
        "bandCode4Conflict": true,
        "commonName": "Gray-headed Chachalaca",
        "scientificName": "Ortalis cinereiceps",
        "bandCode6": "ORTCIN"
    },
    {
        "bandCode4": "RVCH",
        "commonName": "Rufous-vented Chachalaca",
        "scientificName": "Ortalis ruficauda",
        "bandCode6": "ORTRUF"
    },
    {
        "bandCode4": "RBEC",
        "bandCode4Conflict": true,
        "commonName": "Rufous-bellied Chachalaca",
        "scientificName": "Ortalis wagleri",
        "bandCode6": "ORTWAG"
    },
    {
        "bandCode4": "WMCH",
        "commonName": "West Mexican Chachalaca",
        "scientificName": "Ortalis poliocephala",
        "bandCode6": "ORTPOL"
    },
    {
        "bandCode4": "WBCH",
        "commonName": "White-bellied Chachalaca",
        "scientificName": "Ortalis leucogastra",
        "bandCode6": "ORTLEU"
    },
    {
        "bandCode4": "CRGU",
        "commonName": "Crested Guan",
        "scientificName": "Penelope purpurascens",
        "bandCode6": "PENPUR"
    },
    {
        "bandCode4": "BLAG",
        "bandCode4Conflict": true,
        "commonName": "Black Guan",
        "scientificName": "Chamaepetes unicolor",
        "bandCode6": "CHAUNI"
    },
    {
        "bandCode4": "HIGU",
        "commonName": "Highland Guan",
        "scientificName": "Penelopina nigra",
        "bandCode6": "PENNIG"
    },
    {
        "bandCode4": "HOGU",
        "commonName": "Horned Guan",
        "scientificName": "Oreophasis derbianus",
        "bandCode6": "OREDER"
    },
    {
        "bandCode4": "GRCU",
        "commonName": "Great Curassow",
        "scientificName": "Crax rubra",
        "bandCode6": "CRARUB"
    },
    {
        "bandCode4": "HELG",
        "bandCode4Conflict": true,
        "commonName": "Helmeted Guineafowl",
        "scientificName": "Numida meleagris",
        "bandCode6": "NUMMEL"
    },
    {
        "bandCode4": "BEWP",
        "commonName": "Bearded Wood-Partridge",
        "scientificName": "Dendrortyx barbatus",
        "bandCode6": "DENBAR"
    },
    {
        "bandCode4": "LTWP",
        "commonName": "Long-tailed Wood-Partridge",
        "scientificName": "Dendrortyx macroura",
        "bandCode6": "DENMAC"
    },
    {
        "bandCode4": "BCWP",
        "commonName": "Buffy-crowned Wood-Partridge",
        "scientificName": "Dendrortyx leucophrys",
        "bandCode6": "DENLEU"
    },
    {
        "bandCode4": "MOUQ",
        "bandCode4Conflict": true,
        "commonName": "Mountain Quail",
        "scientificName": "Oreortyx pictus",
        "bandCode6": "OREPIC"
    },
    {
        "bandCode4": "SCQU",
        "commonName": "Scaled Quail",
        "scientificName": "Callipepla squamata",
        "bandCode6": "CALSQU"
    },
    {
        "bandCode4": "ELQU",
        "commonName": "Elegant Quail",
        "scientificName": "Callipepla douglasii",
        "bandCode6": "CALDOU"
    },
    {
        "bandCode4": "CAQU",
        "commonName": "California Quail",
        "scientificName": "Callipepla californica",
        "bandCode6": "CALCAL"
    },
    {
        "bandCode4": "GAQU",
        "commonName": "Gambel's Quail",
        "scientificName": "Callipepla gambelii",
        "bandCode6": "CALGAM"
    },
    {
        "bandCode4": "BAQU",
        "commonName": "Banded Quail",
        "scientificName": "Philortyx fasciatus",
        "bandCode6": "PHIFAS"
    },
    {
        "bandCode4": "NOBO",
        "commonName": "Northern Bobwhite",
        "scientificName": "Colinus virginianus",
        "bandCode6": "COLVIR"
    },
    {
        "bandCode4": "BTBO",
        "commonName": "Black-throated Bobwhite",
        "scientificName": "Colinus nigrogularis",
        "bandCode6": "COLNIG"
    },
    {
        "bandCode4": "CRBO",
        "commonName": "Crested Bobwhite",
        "scientificName": "Colinus cristatus",
        "bandCode6": "COLCRI"
    },
    {
        "bandCode4": "MAWQ",
        "commonName": "Marbled Wood-Quail",
        "scientificName": "Odontophorus gujanensis",
        "bandCode6": "ODOGUJ"
    },
    {
        "bandCode4": "BEWQ",
        "commonName": "Black-eared Wood-Quail",
        "scientificName": "Odontophorus melanotis",
        "bandCode6": "ODOMEL"
    },
    {
        "bandCode4": "TAWQ",
        "commonName": "Tacarcuna Wood-Quail",
        "scientificName": "Odontophorus dialeucos",
        "bandCode6": "ODODIA"
    },
    {
        "bandCode4": "BBWQ",
        "commonName": "Black-breasted Wood-Quail",
        "scientificName": "Odontophorus leucolaemus",
        "bandCode6": "ODOLEU"
    },
    {
        "bandCode4": "SPWQ",
        "commonName": "Spotted Wood-Quail",
        "scientificName": "Odontophorus guttatus",
        "bandCode6": "ODOGUT"
    },
    {
        "bandCode4": "SIQU",
        "commonName": "Singing Quail",
        "scientificName": "Dactylortyx thoracicus",
        "bandCode6": "DACTHO"
    },
    {
        "bandCode4": "MONQ",
        "bandCode4Conflict": true,
        "commonName": "Montezuma Quail",
        "scientificName": "Cyrtonyx montezumae",
        "bandCode6": "CYRMON"
    },
    {
        "bandCode4": "OCQU",
        "commonName": "Ocellated Quail",
        "scientificName": "Cyrtonyx ocellatus",
        "bandCode6": "CYROCE"
    },
    {
        "bandCode4": "TFQU",
        "commonName": "Tawny-faced Quail",
        "scientificName": "Rhynchortyx cinctus",
        "bandCode6": "RHYCIN"
    },
    {
        "bandCode4": "CHUK",
        "commonName": "Chukar",
        "scientificName": "Alectoris chukar",
        "bandCode6": "ALECHU"
    },
    {
        "bandCode4": "GRAF",
        "bandCode4Conflict": true,
        "commonName": "Gray Francolin",
        "scientificName": "Francolinus pondicerianus",
        "bandCode6": "FRAPON"
    },
    {
        "bandCode4": "BLFR",
        "commonName": "Black Francolin",
        "scientificName": "Francolinus francolinus",
        "bandCode6": "FRAFRA"
    },
    {
        "bandCode4": "ERFR",
        "commonName": "Erckel's Francolin",
        "scientificName": "Francolinus erckelii",
        "bandCode6": "FRAERC"
    },
    {
        "bandCode4": "HISN",
        "commonName": "Himalayan Snowcock",
        "scientificName": "Tetraogallus himalayensis",
        "bandCode6": "TETHIM"
    },
    {
        "bandCode4": "GRAP",
        "bandCode4Conflict": true,
        "commonName": "Gray Partridge",
        "scientificName": "Perdix perdix",
        "bandCode6": "PERPER"
    },
    {
        "bandCode4": "JAQU",
        "commonName": "Japanese Quail",
        "scientificName": "Coturnix japonica",
        "bandCode6": "COTJAP"
    },
    {
        "bandCode4": "REJU",
        "commonName": "Red Junglefowl",
        "scientificName": "Gallus gallus",
        "bandCode6": "GALGAS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "KAPH",
        "commonName": "Kalij Pheasant",
        "scientificName": "Lophura leucomelanos",
        "bandCode6": "LOPLEU"
    },
    {
        "bandCode4": "RNEP",
        "bandCode4Conflict": true,
        "commonName": "Ring-necked Pheasant",
        "scientificName": "Phasianus colchicus",
        "bandCode6": "PHACOL"
    },
    {
        "bandCode4": "INPE",
        "commonName": "Indian Peafowl",
        "scientificName": "Pavo cristatus",
        "bandCode6": "PAVCRI"
    },
    {
        "bandCode4": "RUGR",
        "commonName": "Ruffed Grouse",
        "scientificName": "Bonasa umbellus",
        "bandCode6": "BONUMB"
    },
    {
        "bandCode4": "GRSG",
        "commonName": "Greater Sage-Grouse",
        "scientificName": "Centrocercus urophasianus",
        "bandCode6": "CENURO"
    },
    {
        "bandCode4": "GUSG",
        "commonName": "Gunnison Sage-Grouse",
        "scientificName": "Centrocercus minimus",
        "bandCode6": "CENMIN"
    },
    {
        "bandCode4": "SPGR",
        "commonName": "Spruce Grouse",
        "scientificName": "Falcipennis canadensis",
        "bandCode6": "FALCAN"
    },
    {
        "bandCode4": "WIPT",
        "commonName": "Willow Ptarmigan",
        "scientificName": "Lagopus lagopus",
        "bandCode6": "LAGLAG"
    },
    {
        "bandCode4": "ROPT",
        "commonName": "Rock Ptarmigan",
        "scientificName": "Lagopus muta",
        "bandCode6": "LAGMUT"
    },
    {
        "bandCode4": "WTPT",
        "commonName": "White-tailed Ptarmigan",
        "scientificName": "Lagopus leucura",
        "bandCode6": "LAGLEU"
    },
    {
        "bandCode4": "DUGR",
        "commonName": "Dusky Grouse",
        "scientificName": "Dendragapus obscurus",
        "bandCode6": "DENOBS"
    },
    {
        "bandCode4": "SOGR",
        "commonName": "Sooty Grouse",
        "scientificName": "Dendragapus fuliginosus",
        "bandCode6": "DENFUU",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "STGR",
        "commonName": "Sharp-tailed Grouse",
        "scientificName": "Tympanuchus phasianellus",
        "bandCode6": "TYMPHA"
    },
    {
        "bandCode4": "GRPC",
        "commonName": "Greater Prairie-Chicken",
        "scientificName": "Tympanuchus cupido",
        "bandCode6": "TYMCUP"
    },
    {
        "bandCode4": "LEPC",
        "commonName": "Lesser Prairie-Chicken",
        "scientificName": "Tympanuchus pallidicinctus",
        "bandCode6": "TYMPAL"
    },
    {
        "bandCode4": "WITU",
        "commonName": "Wild Turkey",
        "scientificName": "Meleagris gallopavo",
        "bandCode6": "MELGAL"
    },
    {
        "bandCode4": "OCTU",
        "commonName": "Ocellated Turkey",
        "scientificName": "Meleagris ocellata",
        "bandCode6": "MELOCE"
    },
    {
        "bandCode4": "RTLO",
        "commonName": "Red-throated Loon",
        "scientificName": "Gavia stellata",
        "bandCode6": "GAVSTE"
    },
    {
        "bandCode4": "ARLO",
        "commonName": "Arctic Loon",
        "scientificName": "Gavia arctica",
        "bandCode6": "GAVARC"
    },
    {
        "bandCode4": "PALO",
        "commonName": "Pacific Loon",
        "scientificName": "Gavia pacifica",
        "bandCode6": "GAVPAC"
    },
    {
        "bandCode4": "COLO",
        "commonName": "Common Loon",
        "scientificName": "Gavia immer",
        "bandCode6": "GAVIMM"
    },
    {
        "bandCode4": "YBLO",
        "commonName": "Yellow-billed Loon",
        "scientificName": "Gavia adamsii",
        "bandCode6": "GAVADA"
    },
    {
        "bandCode4": "LEGR",
        "commonName": "Least Grebe",
        "scientificName": "Tachybaptus dominicus",
        "bandCode6": "TACDOM"
    },
    {
        "bandCode4": "PBGR",
        "commonName": "Pied-billed Grebe",
        "scientificName": "Podilymbus podiceps",
        "bandCode6": "PODPOD"
    },
    {
        "bandCode4": "ATGR",
        "commonName": "Atitlan Grebe",
        "scientificName": "Podilymbus gigas",
        "bandCode6": "PODGIG"
    },
    {
        "bandCode4": "HOGR",
        "commonName": "Horned Grebe",
        "scientificName": "Podiceps auritus",
        "bandCode6": "PODAUR"
    },
    {
        "bandCode4": "RNGR",
        "commonName": "Red-necked Grebe",
        "scientificName": "Podiceps grisegena",
        "bandCode6": "PODGRI"
    },
    {
        "bandCode4": "EAGR",
        "commonName": "Eared Grebe",
        "scientificName": "Podiceps nigricollis",
        "bandCode6": "PODNIG"
    },
    {
        "bandCode4": "WEGR",
        "commonName": "Western Grebe",
        "scientificName": "Aechmophorus occidentalis",
        "bandCode6": "AECOCC"
    },
    {
        "bandCode4": "CLGR",
        "commonName": "Clark's Grebe",
        "scientificName": "Aechmophorus clarkii",
        "bandCode6": "AECCLA"
    },
    {
        "bandCode4": "AMFL",
        "commonName": "American Flamingo",
        "scientificName": "Phoenicopterus ruber",
        "bandCode6": "PHORUB"
    },
    {
        "bandCode4": "YNAL",
        "commonName": "Yellow-nosed Albatross",
        "scientificName": "Thalassarche chlororhynchos",
        "bandCode6": "THACHL"
    },
    {
        "bandCode4": "WCAL",
        "commonName": "White-capped Albatross",
        "scientificName": "Thalassarche cauta",
        "bandCode6": "THACAU"
    },
    {
        "bandCode4": "SAAL",
        "commonName": "Salvin's Albatross",
        "scientificName": "Thalassarche salvini",
        "bandCode6": "THASAL"
    },
    {
        "bandCode4": "BBAL",
        "commonName": "Black-browed Albatross",
        "scientificName": "Thalassarche melanophris",
        "bandCode6": "THAMEL"
    },
    {
        "bandCode4": "LMAL",
        "commonName": "Light-mantled Albatross",
        "scientificName": "Phoebetria palpebrata",
        "bandCode6": "PHOPAL"
    },
    {
        "bandCode4": "WAAL",
        "commonName": "Wandering Albatross",
        "scientificName": "Diomedea exulans",
        "bandCode6": "DIOEXU"
    },
    {
        "bandCode4": "LAAL",
        "commonName": "Laysan Albatross",
        "scientificName": "Phoebastria immutabilis",
        "bandCode6": "PHOIMM"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LBFH",
        "commonName": "Laysan X Black-foot. Albatross Hybrid",
        "scientificName": "Phoebastria immut. X nigripes",
        "bandCode6": "PHOIMN"
    },
    {
        "bandCode4": "BFAL",
        "commonName": "Black-footed Albatross",
        "scientificName": "Phoebastria nigripes",
        "bandCode6": "PHONIG"
    },
    {
        "bandCode4": "STAL",
        "commonName": "Short-tailed Albatross",
        "scientificName": "Phoebastria albatrus",
        "bandCode6": "PHOALB"
    },
    {
        "bandCode4": "NOFU",
        "commonName": "Northern Fulmar",
        "scientificName": "Fulmarus glacialis",
        "bandCode6": "FULGLA"
    },
    {
        "bandCode4": "GWPE",
        "commonName": "Great-winged Petrel",
        "scientificName": "Pterodroma macroptera",
        "bandCode6": "PTEMAC"
    },
    {
        "bandCode4": "PRPE",
        "commonName": "Providence Petrel",
        "scientificName": "Pterodroma solandri",
        "bandCode6": "PTESOL"
    },
    {
        "bandCode4": "KEPE",
        "commonName": "Kermadec Petrel",
        "scientificName": "Pterodroma neglecta",
        "bandCode6": "PTENEG"
    },
    {
        "bandCode4": "HEPE",
        "commonName": "Herald Petrel",
        "scientificName": "Pterodroma arminjoniana",
        "bandCode6": "PTEARM"
    },
    {
        "bandCode4": "MUPE",
        "commonName": "Murphy's Petrel",
        "scientificName": "Pterodroma ultima",
        "bandCode6": "PTEULT"
    },
    {
        "bandCode4": "MOPE",
        "commonName": "Mottled Petrel",
        "scientificName": "Pterodroma inexpectata",
        "bandCode6": "PTEINE"
    },
    {
        "bandCode4": "BEPE",
        "commonName": "Bermuda Petrel",
        "scientificName": "Pterodroma cahow",
        "bandCode6": "PTECAH"
    },
    {
        "bandCode4": "BCPE",
        "commonName": "Black-capped Petrel",
        "scientificName": "Pterodroma hasitata",
        "bandCode6": "PTEHAS"
    },
    {
        "bandCode4": "JFPE",
        "commonName": "Juan Fernandez Petrel",
        "scientificName": "Pterodroma externa",
        "bandCode6": "PTEEXT"
    },
    {
        "bandCode4": "GAPE",
        "commonName": "Galapagos Petrel",
        "scientificName": "Pterodroma phaeopygia",
        "bandCode6": "PTEPHA"
    },
    {
        "bandCode4": "HAPE",
        "commonName": "Hawaiian Petrel",
        "scientificName": "Pterodroma sandwichensis",
        "bandCode6": "PTESAN"
    },
    {
        "bandCode4": "WNPE",
        "commonName": "White-necked Petrel",
        "scientificName": "Pterodroma cervicalis",
        "bandCode6": "PTECER"
    },
    {
        "bandCode4": "BOPE",
        "commonName": "Bonin Petrel",
        "scientificName": "Pterodroma hypoleuca",
        "bandCode6": "PTEHYP"
    },
    {
        "bandCode4": "BWPE",
        "commonName": "Black-winged Petrel",
        "scientificName": "Pterodroma nigripennis",
        "bandCode6": "PTENIG"
    },
    {
        "bandCode4": "FEPE",
        "commonName": "Fea's Petrel",
        "scientificName": "Pterodroma feae",
        "bandCode6": "PTEFEA"
    },
    {
        "bandCode4": "COPE",
        "commonName": "Cook's Petrel",
        "scientificName": "Pterodroma cookii",
        "bandCode6": "PTECOO"
    },
    {
        "bandCode4": "STPE",
        "commonName": "Stejneger's Petrel",
        "scientificName": "Pterodroma longirostris",
        "bandCode6": "PTELON"
    },
    {
        "bandCode4": "TAPE",
        "commonName": "Tahiti Petrel",
        "scientificName": "Pterodroma rostrata",
        "bandCode6": "PTEROS"
    },
    {
        "bandCode4": "BUPE",
        "commonName": "Bulwer's Petrel",
        "scientificName": "Bulweria bulwerii",
        "bandCode6": "BULBUL"
    },
    {
        "bandCode4": "JOPE",
        "commonName": "Jouanin's Petrel",
        "scientificName": "Bulweria fallax",
        "bandCode6": "BULFAL"
    },
    {
        "bandCode4": "WCPE",
        "commonName": "White-chinned Petrel",
        "scientificName": "Procellaria aequinoctialis",
        "bandCode6": "PROAEQ"
    },
    {
        "bandCode4": "PAPE",
        "commonName": "Parkinson's Petrel",
        "scientificName": "Procellaria parkinsoni",
        "bandCode6": "PROPAR"
    },
    {
        "bandCode4": "STRS",
        "bandCode4Conflict": true,
        "commonName": "Streaked Shearwater",
        "scientificName": "Calonectris leucomelas",
        "bandCode6": "CALLEU"
    },
    {
        "bandCode4": "COSH",
        "commonName": "Cory's Shearwater",
        "scientificName": "Calonectris diomedea",
        "bandCode6": "CALDIO"
    },
    {
        "bandCode4": "CVSH",
        "commonName": "Cape Verde Shearwater",
        "scientificName": "Calonectris edwardsii",
        "bandCode6": "CALEDW"
    },
    {
        "bandCode4": "PFSH",
        "commonName": "Pink-footed Shearwater",
        "scientificName": "Puffinus creatopus",
        "bandCode6": "PUFCRE"
    },
    {
        "bandCode4": "FFSH",
        "commonName": "Flesh-footed Shearwater",
        "scientificName": "Puffinus carneipes",
        "bandCode6": "PUFCAR"
    },
    {
        "bandCode4": "GRSH",
        "commonName": "Great Shearwater",
        "scientificName": "Puffinus gravis",
        "bandCode6": "PUFGRA"
    },
    {
        "bandCode4": "WTSH",
        "commonName": "Wedge-tailed Shearwater",
        "scientificName": "Puffinus pacificus",
        "bandCode6": "PUFPAC"
    },
    {
        "bandCode4": "BULS",
        "bandCode4Conflict": true,
        "commonName": "Buller's Shearwater",
        "scientificName": "Puffinus bulleri",
        "bandCode6": "PUFBUL"
    },
    {
        "bandCode4": "SOSH",
        "commonName": "Sooty Shearwater",
        "scientificName": "Puffinus griseus",
        "bandCode6": "PUFGRI"
    },
    {
        "bandCode4": "SRTS",
        "bandCode4Conflict": true,
        "commonName": "Short-tailed Shearwater",
        "scientificName": "Puffinus tenuirostris",
        "bandCode6": "PUFTEN"
    },
    {
        "bandCode4": "CHSH",
        "commonName": "Christmas Shearwater",
        "scientificName": "Puffinus nativitatis",
        "bandCode6": "PUFNAT"
    },
    {
        "bandCode4": "GASH",
        "commonName": "Galapagos Shearwater",
        "scientificName": "Puffinus subalaris",
        "bandCode6": "PUFSUB"
    },
    {
        "bandCode4": "MASH",
        "commonName": "Manx Shearwater",
        "scientificName": "Puffinus puffinus",
        "bandCode6": "PUFPUF"
    },
    {
        "bandCode4": "TOSH",
        "commonName": "Townsend's Shearwater",
        "scientificName": "Puffinus auricularis",
        "bandCode6": "PUFAUR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "NESH",
        "commonName": "Newell's Shearwater",
        "scientificName": "Puffinus a. newelli",
        "bandCode6": "PUFANE"
    },
    {
        "bandCode4": "BRYS",
        "bandCode4Conflict": true,
        "commonName": "Bryan's Shearwater",
        "scientificName": "Puffinus bryani",
        "bandCode6": "PUFBRY"
    },
    {
        "bandCode4": "BVSH",
        "commonName": "Black-vented Shearwater",
        "scientificName": "Puffinus opisthomelas",
        "bandCode6": "PUFOPI"
    },
    {
        "bandCode4": "AUSH",
        "commonName": "Audubon's Shearwater",
        "scientificName": "Puffinus lherminieri",
        "bandCode6": "PUFLHE"
    },
    {
        "bandCode4": "BASH",
        "commonName": "Barolo Shearwater",
        "scientificName": "Puffinus baroli",
        "bandCode6": "PUFBAR"
    },
    {
        "bandCode4": "WISP",
        "commonName": "Wilson's Storm-Petrel",
        "scientificName": "Oceanites oceanicus",
        "bandCode6": "OCEOCE"
    },
    {
        "bandCode4": "WFSP",
        "commonName": "White-faced Storm-Petrel",
        "scientificName": "Pelagodroma marina",
        "bandCode6": "PELMAR"
    },
    {
        "bandCode4": "EUSP",
        "commonName": "European Storm-Petrel",
        "scientificName": "Hydrobates pelagicus",
        "bandCode6": "HYDPEL"
    },
    {
        "bandCode4": "BBSP",
        "commonName": "Black-bellied Storm-Petrel",
        "scientificName": "Fregetta tropica",
        "bandCode6": "FRETRO"
    },
    {
        "bandCode4": "FTSP",
        "commonName": "Fork-tailed Storm-Petrel",
        "scientificName": "Oceanodroma furcata",
        "bandCode6": "OCEFUR"
    },
    {
        "bandCode4": "RISP",
        "commonName": "Ringed Storm-Petrel",
        "scientificName": "Oceanodroma hornbyi",
        "bandCode6": "OCEHOR"
    },
    {
        "bandCode4": "SSTP",
        "commonName": "Swinhoe's Storm-Petrel",
        "scientificName": "Oceanodroma monorhis",
        "bandCode6": "OCEMON"
    },
    {
        "bandCode4": "LESP",
        "commonName": "Leach's Storm-Petrel",
        "scientificName": "Oceanodroma leucorhoa",
        "bandCode6": "OCELEU"
    },
    {
        "bandCode4": "ASSP",
        "commonName": "Ashy Storm-Petrel",
        "scientificName": "Oceanodroma homochroa",
        "bandCode6": "OCEHOM"
    },
    {
        "bandCode4": "BSTP",
        "bandCode4Conflict": true,
        "commonName": "Band-rumped Storm-Petrel",
        "scientificName": "Oceanodroma castro",
        "bandCode6": "OCECAS"
    },
    {
        "bandCode4": "WRSP",
        "commonName": "Wedge-rumped Storm-Petrel",
        "scientificName": "Oceanodroma tethys",
        "bandCode6": "OCETET"
    },
    {
        "bandCode4": "BLSP",
        "commonName": "Black Storm-Petrel",
        "scientificName": "Oceanodroma melania",
        "bandCode6": "OCEMEL"
    },
    {
        "bandCode4": "GUSP",
        "commonName": "Guadalupe Storm-Petrel",
        "scientificName": "Oceanodroma macrodactyla",
        "bandCode6": "OCEMAC"
    },
    {
        "bandCode4": "MASP",
        "commonName": "Markham's Storm-Petrel",
        "scientificName": "Oceanodroma markhami",
        "bandCode6": "OCEMAR"
    },
    {
        "bandCode4": "TRSP",
        "commonName": "Tristram's Storm-Petrel",
        "scientificName": "Oceanodroma tristrami",
        "bandCode6": "OCETRI"
    },
    {
        "bandCode4": "LSTP",
        "bandCode4Conflict": true,
        "commonName": "Least Storm-Petrel",
        "scientificName": "Oceanodroma microsoma",
        "bandCode6": "OCEMIC"
    },
    {
        "bandCode4": "WTTR",
        "commonName": "White-tailed Tropicbird",
        "scientificName": "Phaethon lepturus",
        "bandCode6": "PHALEP"
    },
    {
        "bandCode4": "RBTR",
        "commonName": "Red-billed Tropicbird",
        "scientificName": "Phaethon aethereus",
        "bandCode6": "PHAAET"
    },
    {
        "bandCode4": "RTTR",
        "commonName": "Red-tailed Tropicbird",
        "scientificName": "Phaethon rubricauda",
        "bandCode6": "PHARUB"
    },
    {
        "bandCode4": "MAST",
        "commonName": "Maguari Stork",
        "scientificName": "Ciconia maguari",
        "bandCode6": "JCICMA"
    },
    {
        "bandCode4": "JABI",
        "commonName": "Jabiru",
        "scientificName": "Jabiru mycteria",
        "bandCode6": "JABMYC"
    },
    {
        "bandCode4": "WOST",
        "commonName": "Wood Stork",
        "scientificName": "Mycteria americana",
        "bandCode6": "MYCAME"
    },
    {
        "bandCode4": "MAFR",
        "commonName": "Magnificent Frigatebird",
        "scientificName": "Fregata magnificens",
        "bandCode6": "FREMAG"
    },
    {
        "bandCode4": "GREF",
        "bandCode4Conflict": true,
        "commonName": "Great Frigatebird",
        "scientificName": "Fregata minor",
        "bandCode6": "FREMIN"
    },
    {
        "bandCode4": "LEFR",
        "commonName": "Lesser Frigatebird",
        "scientificName": "Fregata ariel",
        "bandCode6": "FREARI"
    },
    {
        "bandCode4": "MABO",
        "commonName": "Masked Booby",
        "scientificName": "Sula dactylatra",
        "bandCode6": "SULDAC"
    },
    {
        "bandCode4": "NABO",
        "commonName": "Nazca Booby",
        "scientificName": "Sula granti",
        "bandCode6": "SULGRA"
    },
    {
        "bandCode4": "BFBO",
        "commonName": "Blue-footed Booby",
        "scientificName": "Sula nebouxii",
        "bandCode6": "SULNEB"
    },
    {
        "bandCode4": "PEBO",
        "commonName": "Peruvian Booby",
        "scientificName": "Sula variegata",
        "bandCode6": "SULVAR"
    },
    {
        "bandCode4": "BRBO",
        "commonName": "Brown Booby",
        "scientificName": "Sula leucogaster",
        "bandCode6": "SULLEU"
    },
    {
        "bandCode4": "RFBO",
        "commonName": "Red-footed Booby",
        "scientificName": "Sula sula",
        "bandCode6": "SULSUL"
    },
    {
        "bandCode4": "NOGA",
        "commonName": "Northern Gannet",
        "scientificName": "Morus bassanus",
        "bandCode6": "MORBAS"
    },
    {
        "bandCode4": "BRAC",
        "bandCode4Conflict": true,
        "commonName": "Brandt's Cormorant",
        "scientificName": "Phalacrocorax penicillatus",
        "bandCode6": "PHAPEN"
    },
    {
        "bandCode4": "NECO",
        "commonName": "Neotropic Cormorant",
        "scientificName": "Phalacrocorax brasilianus",
        "bandCode6": "PHABRA"
    },
    {
        "bandCode4": "DCCO",
        "commonName": "Double-crested Cormorant",
        "scientificName": "Phalacrocorax auritus",
        "bandCode6": "PHAAUT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GRCO",
        "commonName": "Great Cormorant",
        "scientificName": "Phalacrocorax carbo",
        "bandCode6": "PHACAR"
    },
    {
        "bandCode4": "RFCO",
        "commonName": "Red-faced Cormorant",
        "scientificName": "Phalacrocorax urile",
        "bandCode6": "PHAURI"
    },
    {
        "bandCode4": "PECO",
        "commonName": "Pelagic Cormorant",
        "scientificName": "Phalacrocorax pelagicus",
        "bandCode6": "PHAPEL"
    },
    {
        "bandCode4": "ANHI",
        "commonName": "Anhinga",
        "scientificName": "Anhinga anhinga",
        "bandCode6": "ANHANH"
    },
    {
        "bandCode4": "AWPE",
        "commonName": "American White Pelican",
        "scientificName": "Pelecanus erythrorhynchos",
        "bandCode6": "PELERY"
    },
    {
        "bandCode4": "BRPE",
        "commonName": "Brown Pelican",
        "scientificName": "Pelecanus occidentalis",
        "bandCode6": "PELOCC"
    },
    {
        "bandCode4": "PIBI",
        "commonName": "Pinnated Bittern",
        "scientificName": "Botaurus pinnatus",
        "bandCode6": "BOTPIN"
    },
    {
        "bandCode4": "AMBI",
        "commonName": "American Bittern",
        "scientificName": "Botaurus lentiginosus",
        "bandCode6": "BOTLEN"
    },
    {
        "bandCode4": "YEBI",
        "commonName": "Yellow Bittern",
        "scientificName": "Ixobrychus sinensis",
        "bandCode6": "IXOSIN"
    },
    {
        "bandCode4": "LEBI",
        "commonName": "Least Bittern",
        "scientificName": "Ixobrychus exilis",
        "bandCode6": "IXOEXI"
    },
    {
        "bandCode4": "LIBI",
        "commonName": "Little Bittern",
        "scientificName": "Ixobrychus minutus",
        "bandCode6": "IXOMIN"
    },
    {
        "bandCode4": "RTHE",
        "commonName": "Rufescent Tiger-Heron",
        "scientificName": "Tigrisoma lineatum",
        "bandCode6": "TIGLIN"
    },
    {
        "bandCode4": "FTHE",
        "commonName": "Fasciated Tiger-Heron",
        "scientificName": "Tigrisoma fasciatum",
        "bandCode6": "TIGFAS"
    },
    {
        "bandCode4": "BTTH",
        "commonName": "Bare-throated Tiger-Heron",
        "scientificName": "Tigrisoma mexicanum",
        "bandCode6": "TIGMEX"
    },
    {
        "bandCode4": "GBHE",
        "commonName": "Great Blue Heron",
        "scientificName": "Ardea herodias",
        "bandCode6": "ARDHER"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "GWHE",
        "commonName": "Great White Heron",
        "scientificName": "Ardea h. occidentalis",
        "bandCode6": "ARDHOC"
    },
    {
        "bandCode4": "GRAH",
        "bandCode4Conflict": true,
        "commonName": "Gray Heron",
        "scientificName": "Ardea cinerea",
        "bandCode6": "ARDCIN"
    },
    {
        "bandCode4": "COHE",
        "commonName": "Cocoi Heron",
        "scientificName": "Ardea cocoi",
        "bandCode6": "ARDCOC"
    },
    {
        "bandCode4": "PUHE",
        "commonName": "Purple Heron",
        "scientificName": "Ardea purpurea",
        "bandCode6": "ARDPUR"
    },
    {
        "bandCode4": "GREG",
        "commonName": "Great Egret",
        "scientificName": "Ardea alba",
        "bandCode6": "ARDALB"
    },
    {
        "bandCode4": "INEG",
        "commonName": "Intermediate Egret",
        "scientificName": "Mesophoyx intermedia",
        "bandCode6": "MESINT"
    },
    {
        "bandCode4": "CHEG",
        "commonName": "Chinese Egret",
        "scientificName": "Egretta eulophotes",
        "bandCode6": "EGREUL"
    },
    {
        "bandCode4": "LIEG",
        "commonName": "Little Egret",
        "scientificName": "Egretta garzetta",
        "bandCode6": "EGRGAR"
    },
    {
        "bandCode4": "WERH",
        "commonName": "Western Reef-Heron",
        "scientificName": "Egretta gularis",
        "bandCode6": "EGRGUL"
    },
    {
        "bandCode4": "SNEG",
        "commonName": "Snowy Egret",
        "scientificName": "Egretta thula",
        "bandCode6": "EGRTHU"
    },
    {
        "bandCode4": "LBHE",
        "commonName": "Little Blue Heron",
        "scientificName": "Egretta caerulea",
        "bandCode6": "EGRCAE"
    },
    {
        "bandCode4": "TRHE",
        "commonName": "Tricolored Heron",
        "scientificName": "Egretta tricolor",
        "bandCode6": "EGRTRI"
    },
    {
        "bandCode4": "REEG",
        "commonName": "Reddish Egret",
        "scientificName": "Egretta rufescens",
        "bandCode6": "EGRRUF"
    },
    {
        "bandCode4": "CAEG",
        "commonName": "Cattle Egret",
        "scientificName": "Bubulcus ibis",
        "bandCode6": "BUBIBI"
    },
    {
        "bandCode4": "CHPH",
        "commonName": "Chinese Pond-Heron",
        "scientificName": "Ardeola bacchus",
        "bandCode6": "ARDBAC"
    },
    {
        "bandCode4": "GRHE",
        "commonName": "Green Heron",
        "scientificName": "Butorides virescens",
        "bandCode6": "BUTVIR"
    },
    {
        "bandCode4": "STRH",
        "bandCode4Conflict": true,
        "commonName": "Striated Heron",
        "scientificName": "Butorides striata",
        "bandCode6": "BUTSTR"
    },
    {
        "bandCode4": "AGHE",
        "commonName": "Agami Heron",
        "scientificName": "Agamia agami",
        "bandCode6": "AGAAGA"
    },
    {
        "bandCode4": "CAHE",
        "commonName": "Capped Heron",
        "scientificName": "Pilherodius pileatus",
        "bandCode6": "PILPIL"
    },
    {
        "bandCode4": "BCNH",
        "commonName": "Black-crowned Night-Heron",
        "scientificName": "Nycticorax nycticorax",
        "bandCode6": "NYCNYC"
    },
    {
        "bandCode4": "YCNH",
        "commonName": "Yellow-crowned Night-Heron",
        "scientificName": "Nyctanassa violacea",
        "bandCode6": "NYCVIO"
    },
    {
        "bandCode4": "BBHE",
        "commonName": "Boat-billed Heron",
        "scientificName": "Cochlearius cochlearius",
        "bandCode6": "COCCOL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "WHIB",
        "commonName": "White Ibis",
        "scientificName": "Eudocimus albus",
        "bandCode6": "EUDALB"
    },
    {
        "bandCode4": "SCIB",
        "commonName": "Scarlet Ibis",
        "scientificName": "Eudocimus ruber",
        "bandCode6": "EUDRUB"
    },
    {
        "bandCode4": "GLIB",
        "commonName": "Glossy Ibis",
        "scientificName": "Plegadis falcinellus",
        "bandCode6": "PLEFAL"
    },
    {
        "bandCode4": "WFIB",
        "commonName": "White-faced Ibis",
        "scientificName": "Plegadis chihi",
        "bandCode6": "PLECHI"
    },
    {
        "bandCode4": "GRIB",
        "commonName": "Green Ibis",
        "scientificName": "Mesembrinibis cayennensis",
        "bandCode6": "MESCAY"
    },
    {
        "bandCode4": "BNIB",
        "commonName": "Buff-necked Ibis",
        "scientificName": "Theristicus caudatus",
        "bandCode6": "THECAU"
    },
    {
        "bandCode4": "EURS",
        "bandCode4Conflict": true,
        "commonName": "Eurasian Spoonbill",
        "scientificName": "Platalea leucorodia",
        "bandCode6": "PLALEU"
    },
    {
        "bandCode4": "ROSP",
        "commonName": "Roseate Spoonbill",
        "scientificName": "Platalea ajaja",
        "bandCode6": "PLAAJA"
    },
    {
        "bandCode4": "BLVU",
        "commonName": "Black Vulture",
        "scientificName": "Coragyps atratus",
        "bandCode6": "CORATR"
    },
    {
        "bandCode4": "TUVU",
        "commonName": "Turkey Vulture",
        "scientificName": "Cathartes aura",
        "bandCode6": "CAEAUR",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "LYHV",
        "commonName": "Lesser Yellow-headed Vulture",
        "scientificName": "Cathartes burrovianus",
        "bandCode6": "CATBUR"
    },
    {
        "bandCode4": "CACO",
        "commonName": "California Condor",
        "scientificName": "Gymnogyps californianus",
        "bandCode6": "GYMCAL"
    },
    {
        "bandCode4": "KIVU",
        "commonName": "King Vulture",
        "scientificName": "Sarcoramphus papa",
        "bandCode6": "SARPAP"
    },
    {
        "bandCode4": "OSPR",
        "commonName": "Osprey",
        "scientificName": "Pandion haliaetus",
        "bandCode6": "PANHAL"
    },
    {
        "bandCode4": "GHKI",
        "commonName": "Gray-headed Kite",
        "scientificName": "Leptodon cayanensis",
        "bandCode6": "LEPCAY"
    },
    {
        "bandCode4": "HBKI",
        "commonName": "Hook-billed Kite",
        "scientificName": "Chondrohierax uncinatus",
        "bandCode6": "CHOUNC"
    },
    {
        "bandCode4": "STKI",
        "commonName": "Swallow-tailed Kite",
        "scientificName": "Elanoides forficatus",
        "bandCode6": "ELAFOR"
    },
    {
        "bandCode4": "PEKI",
        "commonName": "Pearl Kite",
        "scientificName": "Gampsonyx swainsonii",
        "bandCode6": "GAMSWA"
    },
    {
        "bandCode4": "WTKI",
        "commonName": "White-tailed Kite",
        "scientificName": "Elanus leucurus",
        "bandCode6": "ELALEU"
    },
    {
        "bandCode4": "SNKI",
        "commonName": "Snail Kite",
        "scientificName": "Rostrhamus sociabilis",
        "bandCode6": "ROSSOC"
    },
    {
        "bandCode4": "SBKI",
        "commonName": "Slender-billed Kite",
        "scientificName": "Helicolestes hamatus",
        "bandCode6": "HELHAM"
    },
    {
        "bandCode4": "DTKI",
        "commonName": "Double-toothed Kite",
        "scientificName": "Harpagus bidentatus",
        "bandCode6": "HARBID"
    },
    {
        "bandCode4": "MIKI",
        "commonName": "Mississippi Kite",
        "scientificName": "Ictinia mississippiensis",
        "bandCode6": "ICTMIS"
    },
    {
        "bandCode4": "PLKI",
        "commonName": "Plumbeous Kite",
        "scientificName": "Ictinia plumbea",
        "bandCode6": "ICTPLU"
    },
    {
        "bandCode4": "BLAK",
        "bandCode4Conflict": true,
        "commonName": "Black Kite",
        "scientificName": "Milvus migrans",
        "bandCode6": "MILMIG"
    },
    {
        "bandCode4": "BAEA",
        "commonName": "Bald Eagle",
        "scientificName": "Haliaeetus leucocephalus",
        "bandCode6": "HALLEU"
    },
    {
        "bandCode4": "WTEA",
        "commonName": "White-tailed Eagle",
        "scientificName": "Haliaeetus albicilla",
        "bandCode6": "HALALB"
    },
    {
        "bandCode4": "STSE",
        "commonName": "Steller's Sea-Eagle",
        "scientificName": "Haliaeetus pelagicus",
        "bandCode6": "HALPEL"
    },
    {
        "bandCode4": "BCHA",
        "commonName": "Black-collared Hawk",
        "scientificName": "Busarellus nigricollis",
        "bandCode6": "BUSNIG"
    },
    {
        "bandCode4": "NOHA",
        "commonName": "Northern Harrier",
        "scientificName": "Circus cyaneus",
        "bandCode6": "CIRCYA"
    },
    {
        "bandCode4": "LWHA",
        "commonName": "Long-winged Harrier",
        "scientificName": "Circus buffoni",
        "bandCode6": "CIRBUF"
    },
    {
        "bandCode4": "WMHA",
        "commonName": "Western Marsh Harrier",
        "scientificName": "Circus aeruginosus",
        "bandCode6": "CIRAER"
    },
    {
        "bandCode4": "GBEH",
        "bandCode4Conflict": true,
        "commonName": "Gray-bellied Hawk",
        "scientificName": "Accipiter poliogaster",
        "bandCode6": "ACCPOL"
    },
    {
        "bandCode4": "CHIS",
        "bandCode4Conflict": true,
        "commonName": "Chinese Sparrowhawk",
        "scientificName": "Accipiter soloensis",
        "bandCode6": "ACCSOL"
    },
    {
        "bandCode4": "TIHA",
        "commonName": "Tiny Hawk",
        "scientificName": "Accipiter superciliosus",
        "bandCode6": "ACCSUP"
    },
    {
        "bandCode4": "SSHA",
        "commonName": "Sharp-shinned Hawk",
        "scientificName": "Accipiter striatus",
        "bandCode6": "ACCSTR"
    },
    {
        "bandCode4": "COHA",
        "commonName": "Cooper's Hawk",
        "scientificName": "Accipiter cooperii",
        "bandCode6": "ACCCOO"
    },
    {
        "bandCode4": "GUHA",
        "commonName": "Gundlach's Hawk",
        "scientificName": "Accipiter gundlachi",
        "bandCode6": "ACCGUN"
    },
    {
        "bandCode4": "BIHA",
        "commonName": "Bicolored Hawk",
        "scientificName": "Accipiter bicolor",
        "bandCode6": "ACCBIC"
    },
    {
        "bandCode4": "NOGO",
        "commonName": "Northern Goshawk",
        "scientificName": "Accipiter gentilis",
        "bandCode6": "ACCGEN"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UAHA",
        "bandCode4Conflict": true,
        "commonName": "Unidentified Accipiter Hawk",
        "scientificName": "Accipiter (sp)",
        "bandCode6": "ACCSPE"
    },
    {
        "bandCode4": "CRHA",
        "commonName": "Crane Hawk",
        "scientificName": "Geranospiza caerulescens",
        "bandCode6": "GERCAE"
    },
    {
        "bandCode4": "PLHA",
        "commonName": "Plumbeous Hawk",
        "scientificName": "Cryptoleucopteryx plumbea",
        "bandCode6": "CRYPLU"
    },
    {
        "bandCode4": "COBH",
        "commonName": "Common Black Hawk",
        "scientificName": "Buteogallus anthracinus",
        "bandCode6": "BUTANT"
    },
    {
        "bandCode4": "CUBH",
        "commonName": "Cuban Black Hawk",
        "scientificName": "Buteogallus gundlachii",
        "bandCode6": "BUTGUN"
    },
    {
        "bandCode4": "SAHA",
        "commonName": "Savanna Hawk",
        "scientificName": "Buteogallus meridionalis",
        "bandCode6": "BUTMER"
    },
    {
        "bandCode4": "GBLH",
        "bandCode4Conflict": true,
        "commonName": "Great Black Hawk",
        "scientificName": "Buteogallus urubitinga",
        "bandCode6": "BUTURU"
    },
    {
        "bandCode4": "SOEA",
        "commonName": "Solitary Eagle",
        "scientificName": "Buteogallus solitarius",
        "bandCode6": "BUGSOL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BAHA",
        "commonName": "Barred Hawk",
        "scientificName": "Morphnarchus princeps",
        "bandCode6": "MORPRI"
    },
    {
        "bandCode4": "HASH",
        "bandCode4Conflict": true,
        "commonName": "Harris's Hawk",
        "scientificName": "Parabuteo unicinctus",
        "bandCode6": "PARUNI"
    },
    {
        "bandCode4": "WHHA",
        "commonName": "White Hawk",
        "scientificName": "Pseudastur albicollis",
        "bandCode6": "PSEALB"
    },
    {
        "bandCode4": "SEHA",
        "commonName": "Semiplumbeous Hawk",
        "scientificName": "Leucopternis semiplumbeus",
        "bandCode6": "LEUSEL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "ROHA",
        "commonName": "Roadside Hawk",
        "scientificName": "Buteo magnirostris",
        "bandCode6": "BUTMAG"
    },
    {
        "bandCode4": "RSHA",
        "commonName": "Red-shouldered Hawk",
        "scientificName": "Buteo lineatus",
        "bandCode6": "BUTLIN"
    },
    {
        "bandCode4": "RIHA",
        "commonName": "Ridgway's Hawk",
        "scientificName": "Buteo ridgwayi",
        "bandCode6": "BUTRID"
    },
    {
        "bandCode4": "BWHA",
        "commonName": "Broad-winged Hawk",
        "scientificName": "Buteo platypterus",
        "bandCode6": "BUTPLT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GRHA",
        "commonName": "Gray Hawk",
        "scientificName": "Buteo plagiatus",
        "bandCode6": "BUTPLG",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GLHA",
        "commonName": "Gray-lined Hawk",
        "scientificName": "Buteo nitidus",
        "bandCode6": "BUTNIT"
    },
    {
        "bandCode4": "STHA",
        "commonName": "Short-tailed Hawk",
        "scientificName": "Buteo brachyurus",
        "bandCode6": "BUTBRA"
    },
    {
        "bandCode4": "SWHA",
        "commonName": "Swainson's Hawk",
        "scientificName": "Buteo swainsoni",
        "bandCode6": "BUTSWA"
    },
    {
        "bandCode4": "WTHA",
        "commonName": "White-tailed Hawk",
        "scientificName": "Buteo albicaudatus",
        "bandCode6": "BUTALC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "ZTHA",
        "commonName": "Zone-tailed Hawk",
        "scientificName": "Buteo albonotatus",
        "bandCode6": "BUTALN",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "HAWH",
        "bandCode4Conflict": true,
        "commonName": "Hawaiian Hawk",
        "scientificName": "Buteo solitarius",
        "bandCode6": "BUESOL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "RTHA",
        "commonName": "Red-tailed Hawk",
        "scientificName": "Buteo jamaicensis",
        "bandCode6": "BUTJAM"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "HALH",
        "bandCode4Conflict": true,
        "commonName": "Harlan's Hawk",
        "scientificName": "Buteo j. harlani",
        "bandCode6": "BUTJHA"
    },
    {
        "bandCode4": "FEHA",
        "commonName": "Ferruginous Hawk",
        "scientificName": "Buteo regalis",
        "bandCode6": "BUTREG"
    },
    {
        "bandCode4": "RLHA",
        "commonName": "Rough-legged Hawk",
        "scientificName": "Buteo lagopus",
        "bandCode6": "BUTLAG"
    },
    {
        "bandCode4": "CREA",
        "commonName": "Crested Eagle",
        "scientificName": "Morphnus guianensis",
        "bandCode6": "MORGUI"
    },
    {
        "bandCode4": "HAEA",
        "commonName": "Harpy Eagle",
        "scientificName": "Harpia harpyja",
        "bandCode6": "HARHAR"
    },
    {
        "bandCode4": "GOEA",
        "commonName": "Golden Eagle",
        "scientificName": "Aquila chrysaetos",
        "bandCode6": "AQUCHR"
    },
    {
        "bandCode4": "BLHE",
        "commonName": "Black Hawk-Eagle",
        "scientificName": "Spizaetus tyrannus",
        "bandCode6": "SPITYR"
    },
    {
        "bandCode4": "ORHE",
        "commonName": "Ornate Hawk-Eagle",
        "scientificName": "Spizaetus ornatus",
        "bandCode6": "SPIORN"
    },
    {
        "bandCode4": "BAWH",
        "commonName": "Black-and-white Hawk-Eagle",
        "scientificName": "Spizaetus melanoleucus",
        "bandCode6": "SPIMEL"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNHA",
        "commonName": "Unidentified Hawk",
        "scientificName": "Accipitridae (gen, sp)",
        "bandCode6": "ACCGSP"
    },
    {
        "bandCode4": "SUNB",
        "commonName": "Sunbittern",
        "scientificName": "Eurypyga helias",
        "bandCode6": "EURHEL"
    },
    {
        "bandCode4": "YERA",
        "commonName": "Yellow Rail",
        "scientificName": "Coturnicops noveboracensis",
        "bandCode6": "COTNOV"
    },
    {
        "bandCode4": "OCCR",
        "commonName": "Ocellated Crake",
        "scientificName": "Micropygia schomburgkii",
        "bandCode6": "MICSCH"
    },
    {
        "bandCode4": "RUCR",
        "commonName": "Ruddy Crake",
        "scientificName": "Laterallus ruber",
        "bandCode6": "LATRUB"
    },
    {
        "bandCode4": "WTCR",
        "commonName": "White-throated Crake",
        "scientificName": "Laterallus albigularis",
        "bandCode6": "LATALB"
    },
    {
        "bandCode4": "GBCR",
        "commonName": "Gray-breasted Crake",
        "scientificName": "Laterallus exilis",
        "bandCode6": "LATEXI"
    },
    {
        "bandCode4": "BLRA",
        "commonName": "Black Rail",
        "scientificName": "Laterallus jamaicensis",
        "bandCode6": "LATJAM"
    },
    {
        "bandCode4": "CORC",
        "bandCode4Conflict": true,
        "commonName": "Corn Crake",
        "scientificName": "Crex crex",
        "bandCode6": "CRECRE"
    },
    {
        "bandCode4": "RIRA",
        "commonName": "Ridgway's Rail",
        "scientificName": "Rallus obsoletus",
        "bandCode6": "RALOBS"
    },
    {
        "bandCode4": "AZRA",
        "commonName": "Aztec Rail",
        "scientificName": "Rallus tenuirostris",
        "bandCode6": "RALTEN"
    },
    {
        "bandCode4": "KIRA",
        "commonName": "King Rail",
        "scientificName": "Rallus elegans",
        "bandCode6": "RALELE"
    },
    {
        "bandCode4": "CLRA",
        "commonName": "Clapper Rail",
        "scientificName": "Rallus crepitans",
        "bandCode6": "RALCRE"
    },
    {
        "bandCode4": "VIRA",
        "commonName": "Virginia Rail",
        "scientificName": "Rallus limicola",
        "bandCode6": "RALLIM"
    },
    {
        "bandCode4": "RUWR",
        "bandCode4Conflict": true,
        "commonName": "Rufous-necked Wood-Rail",
        "scientificName": "Aramides axillaris",
        "bandCode6": "ARAAXI"
    },
    {
        "bandCode4": "GNWR",
        "commonName": "Gray-necked Wood-Rail",
        "scientificName": "Aramides cajaneus",
        "bandCode6": "ARACAJ"
    },
    {
        "bandCode4": "UNIC",
        "bandCode4Conflict": true,
        "commonName": "Uniform Crake",
        "scientificName": "Amaurolimnas concolor",
        "bandCode6": "AMLCON",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "LARA",
        "commonName": "Laysan Rail",
        "scientificName": "Porzana palmeri",
        "bandCode6": "PORPAL"
    },
    {
        "bandCode4": "SPCR",
        "commonName": "Spotted Crake",
        "scientificName": "Porzana porzana",
        "bandCode6": "PORPOR"
    },
    {
        "bandCode4": "SORA",
        "commonName": "Sora",
        "scientificName": "Porzana carolina",
        "bandCode6": "PORCAR"
    },
    {
        "bandCode4": "HARA",
        "commonName": "Hawaiian Rail",
        "scientificName": "Porzana sandwichensis",
        "bandCode6": "PORSAN"
    },
    {
        "bandCode4": "YBCR",
        "commonName": "Yellow-breasted Crake",
        "scientificName": "Porzana flaviventer",
        "bandCode6": "PORFLN",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "COLC",
        "bandCode4Conflict": true,
        "commonName": "Colombian Crake",
        "scientificName": "Neocrex colombiana",
        "bandCode6": "NEOCOL"
    },
    {
        "bandCode4": "PBCR",
        "commonName": "Paint-billed Crake",
        "scientificName": "Neocrex erythrops",
        "bandCode6": "NEOERY"
    },
    {
        "bandCode4": "ZARA",
        "commonName": "Zapata Rail",
        "scientificName": "Cyanolimnas cerverai",
        "bandCode6": "CYACER"
    },
    {
        "bandCode4": "SPRA",
        "commonName": "Spotted Rail",
        "scientificName": "Pardirallus maculatus",
        "bandCode6": "PARMAS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PUGA",
        "commonName": "Purple Gallinule",
        "scientificName": "Porphyrio martinicus",
        "bandCode6": "PORMAR"
    },
    {
        "bandCode4": "AZGA",
        "commonName": "Azure Gallinule",
        "scientificName": "Porphyrio flavirostris",
        "bandCode6": "PORFLS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "COGA",
        "commonName": "Common Gallinule",
        "scientificName": "Gallinula galeata",
        "bandCode6": "GALGAT",
        "bandCode6Conflict": true
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "HAGA",
        "commonName": "Hawaiian Gallinule",
        "scientificName": "Gallinula g. sandvicensis",
        "bandCode6": "GALGSA"
    },
    {
        "bandCode4": "COMO",
        "commonName": "Common Moorhen",
        "scientificName": "Gallinula chloropus",
        "bandCode6": "GALCHL"
    },
    {
        "bandCode4": "EUCO",
        "commonName": "Eurasian Coot",
        "scientificName": "Fulica atra",
        "bandCode6": "FULATR"
    },
    {
        "bandCode4": "HACO",
        "commonName": "Hawaiian Coot",
        "scientificName": "Fulica alai",
        "bandCode6": "FULALA"
    },
    {
        "bandCode4": "AMCO",
        "commonName": "American Coot",
        "scientificName": "Fulica americana",
        "bandCode6": "FULAME"
    },
    {
        "bandCode4": "CARC",
        "bandCode4Conflict": true,
        "commonName": "Caribbean Coot",
        "scientificName": "Fulica caribaea",
        "bandCode6": "FULCAR"
    },
    {
        "bandCode4": "SUNG",
        "commonName": "Sungrebe",
        "scientificName": "Heliornis fulica",
        "bandCode6": "HELFUL"
    },
    {
        "bandCode4": "LIMP",
        "commonName": "Limpkin",
        "scientificName": "Aramus guarauna",
        "bandCode6": "ARAGUA"
    },
    {
        "bandCode4": "SACR",
        "commonName": "Sandhill Crane",
        "scientificName": "Grus canadensis",
        "bandCode6": "GRUCAN"
    },
    {
        "bandCode4": "CCRA",
        "bandCode4Conflict": true,
        "commonName": "Common Crane",
        "scientificName": "Grus grus",
        "bandCode6": "GRUGRU"
    },
    {
        "bandCode4": "WHCR",
        "commonName": "Whooping Crane",
        "scientificName": "Grus americana",
        "bandCode6": "GRUAME"
    },
    {
        "bandCode4": "DSTK",
        "commonName": "Double-striped Thick-knee",
        "scientificName": "Burhinus bistriatus",
        "bandCode6": "BURBIS"
    },
    {
        "bandCode4": "BWST",
        "commonName": "Black-winged Stilt",
        "scientificName": "Himantopus himantopus",
        "bandCode6": "HIMHIM"
    },
    {
        "bandCode4": "BNST",
        "commonName": "Black-necked Stilt",
        "scientificName": "Himantopus mexicanus",
        "bandCode6": "HIMMEX"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "HAST",
        "commonName": "Hawaiian Stilt",
        "scientificName": "Himantopus m. melanurus",
        "bandCode6": "HIMMME"
    },
    {
        "bandCode4": "AMAV",
        "commonName": "American Avocet",
        "scientificName": "Recurvirostra americana",
        "bandCode6": "RECAME"
    },
    {
        "bandCode4": "EUOY",
        "commonName": "Eurasian Oystercatcher",
        "scientificName": "Haematopus ostralegus",
        "bandCode6": "HAEOST"
    },
    {
        "bandCode4": "AMOY",
        "commonName": "American Oystercatcher",
        "scientificName": "Haematopus palliatus",
        "bandCode6": "HAEPAL"
    },
    {
        "bandCode4": "BLOY",
        "commonName": "Black Oystercatcher",
        "scientificName": "Haematopus bachmani",
        "bandCode6": "HAEBAC"
    },
    {
        "bandCode4": "NOLA",
        "commonName": "Northern Lapwing",
        "scientificName": "Vanellus vanellus",
        "bandCode6": "VANVAN"
    },
    {
        "bandCode4": "SOLA",
        "commonName": "Southern Lapwing",
        "scientificName": "Vanellus chilensis",
        "bandCode6": "VANCHI"
    },
    {
        "bandCode4": "BBPL",
        "commonName": "Black-bellied Plover",
        "scientificName": "Pluvialis squatarola",
        "bandCode6": "PLUSQU"
    },
    {
        "bandCode4": "EUGP",
        "commonName": "European Golden-Plover",
        "scientificName": "Pluvialis apricaria",
        "bandCode6": "PLUAPR"
    },
    {
        "bandCode4": "AMGP",
        "commonName": "American Golden-Plover",
        "scientificName": "Pluvialis dominica",
        "bandCode6": "PLUDOM"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LEGP",
        "commonName": "Lesser Golden-Plover",
        "scientificName": "Pluvialis dominica/fulva",
        "bandCode6": "PLUDOF"
    },
    {
        "bandCode4": "PAGP",
        "commonName": "Pacific Golden-Plover",
        "scientificName": "Pluvialis fulva",
        "bandCode6": "PLUFUL"
    },
    {
        "bandCode4": "LSAP",
        "bandCode4Conflict": true,
        "commonName": "Lesser Sand-Plover",
        "scientificName": "Charadrius mongolus",
        "bandCode6": "CHAMOG",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GSAP",
        "bandCode4Conflict": true,
        "commonName": "Greater Sand-Plover",
        "scientificName": "Charadrius leschenaultii",
        "bandCode6": "CHALES"
    },
    {
        "bandCode4": "COPL",
        "commonName": "Collared Plover",
        "scientificName": "Charadrius collaris",
        "bandCode6": "CHACOL"
    },
    {
        "bandCode4": "SNPL",
        "commonName": "Snowy Plover",
        "scientificName": "Charadrius nivosus",
        "bandCode6": "CHANIV"
    },
    {
        "bandCode4": "WIPL",
        "commonName": "Wilson's Plover",
        "scientificName": "Charadrius wilsonia",
        "bandCode6": "CHAWIL"
    },
    {
        "bandCode4": "CRPL",
        "commonName": "Common Ringed Plover",
        "scientificName": "Charadrius hiaticula",
        "bandCode6": "CHAHIA"
    },
    {
        "bandCode4": "SEPL",
        "commonName": "Semipalmated Plover",
        "scientificName": "Charadrius semipalmatus",
        "bandCode6": "CHASEM"
    },
    {
        "bandCode4": "PIPL",
        "commonName": "Piping Plover",
        "scientificName": "Charadrius melodus",
        "bandCode6": "CHAMEL"
    },
    {
        "bandCode4": "LRPL",
        "commonName": "Little Ringed Plover",
        "scientificName": "Charadrius dubius",
        "bandCode6": "CHADUB"
    },
    {
        "bandCode4": "KILL",
        "commonName": "Killdeer",
        "scientificName": "Charadrius vociferus",
        "bandCode6": "CHAVOC"
    },
    {
        "bandCode4": "MOPL",
        "commonName": "Mountain Plover",
        "scientificName": "Charadrius montanus",
        "bandCode6": "CHAMOT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "EUDO",
        "commonName": "Eurasian Dotterel",
        "scientificName": "Charadrius morinellus",
        "bandCode6": "CHAMOR"
    },
    {
        "bandCode4": "NOJA",
        "commonName": "Northern Jacana",
        "scientificName": "Jacana spinosa",
        "bandCode6": "JACSPI"
    },
    {
        "bandCode4": "WAJA",
        "commonName": "Wattled Jacana",
        "scientificName": "Jacana jacana",
        "bandCode6": "JACJAC"
    },
    {
        "bandCode4": "TESA",
        "commonName": "Terek Sandpiper",
        "scientificName": "Xenus cinereus",
        "bandCode6": "XENCIN"
    },
    {
        "bandCode4": "COSA",
        "commonName": "Common Sandpiper",
        "scientificName": "Actitis hypoleucos",
        "bandCode6": "ACTHYP"
    },
    {
        "bandCode4": "SPSA",
        "commonName": "Spotted Sandpiper",
        "scientificName": "Actitis macularius",
        "bandCode6": "ACTMAC"
    },
    {
        "bandCode4": "GRSA",
        "commonName": "Green Sandpiper",
        "scientificName": "Tringa ochropus",
        "bandCode6": "TRIOCH"
    },
    {
        "bandCode4": "SOSA",
        "commonName": "Solitary Sandpiper",
        "scientificName": "Tringa solitaria",
        "bandCode6": "TRISOL"
    },
    {
        "bandCode4": "GTTA",
        "commonName": "Gray-tailed Tattler",
        "scientificName": "Tringa brevipes",
        "bandCode6": "TRIBRE"
    },
    {
        "bandCode4": "WATA",
        "commonName": "Wandering Tattler",
        "scientificName": "Tringa incana",
        "bandCode6": "TRIINC"
    },
    {
        "bandCode4": "SPRE",
        "commonName": "Spotted Redshank",
        "scientificName": "Tringa erythropus",
        "bandCode6": "TRIERY"
    },
    {
        "bandCode4": "GRYE",
        "commonName": "Greater Yellowlegs",
        "scientificName": "Tringa melanoleuca",
        "bandCode6": "TRIMEL"
    },
    {
        "bandCode4": "COMG",
        "bandCode4Conflict": true,
        "commonName": "Common Greenshank",
        "scientificName": "Tringa nebularia",
        "bandCode6": "TRINEB"
    },
    {
        "bandCode4": "WILL",
        "commonName": "Willet",
        "scientificName": "Tringa semipalmata",
        "bandCode6": "TRISEM"
    },
    {
        "bandCode4": "LEYE",
        "commonName": "Lesser Yellowlegs",
        "scientificName": "Tringa flavipes",
        "bandCode6": "TRIFLA"
    },
    {
        "bandCode4": "MASA",
        "commonName": "Marsh Sandpiper",
        "scientificName": "Tringa stagnatilis",
        "bandCode6": "TRISTA"
    },
    {
        "bandCode4": "WOSA",
        "commonName": "Wood Sandpiper",
        "scientificName": "Tringa glareola",
        "bandCode6": "TRIGLA"
    },
    {
        "bandCode4": "COMR",
        "bandCode4Conflict": true,
        "commonName": "Common Redshank",
        "scientificName": "Tringa totanus",
        "bandCode6": "TRITOT"
    },
    {
        "bandCode4": "UPSA",
        "commonName": "Upland Sandpiper",
        "scientificName": "Bartramia longicauda",
        "bandCode6": "BARLON"
    },
    {
        "bandCode4": "LICU",
        "commonName": "Little Curlew",
        "scientificName": "Numenius minutus",
        "bandCode6": "NUMMIN"
    },
    {
        "bandCode4": "ESCU",
        "commonName": "Eskimo Curlew",
        "scientificName": "Numenius borealis",
        "bandCode6": "NUMBOR"
    },
    {
        "bandCode4": "WHIM",
        "commonName": "Whimbrel",
        "scientificName": "Numenius phaeopus",
        "bandCode6": "NUMPHA"
    },
    {
        "bandCode4": "BTCU",
        "commonName": "Bristle-thighed Curlew",
        "scientificName": "Numenius tahitiensis",
        "bandCode6": "NUMTAH"
    },
    {
        "bandCode4": "FECU",
        "commonName": "Far Eastern Curlew",
        "scientificName": "Numenius madagascariensis",
        "bandCode6": "NUMMAD"
    },
    {
        "bandCode4": "SBCU",
        "commonName": "Slender-billed Curlew",
        "scientificName": "Numenius tenuirostris",
        "bandCode6": "NUMTEN"
    },
    {
        "bandCode4": "EUCU",
        "commonName": "Eurasian Curlew",
        "scientificName": "Numenius arquata",
        "bandCode6": "NUMARQ"
    },
    {
        "bandCode4": "LBCU",
        "commonName": "Long-billed Curlew",
        "scientificName": "Numenius americanus",
        "bandCode6": "NUMAME"
    },
    {
        "bandCode4": "BTGD",
        "bandCode4Conflict": true,
        "commonName": "Black-tailed Godwit",
        "scientificName": "Limosa limosa",
        "bandCode6": "LIMLIM"
    },
    {
        "bandCode4": "HUGO",
        "commonName": "Hudsonian Godwit",
        "scientificName": "Limosa haemastica",
        "bandCode6": "LIMHAE"
    },
    {
        "bandCode4": "BTGO",
        "commonName": "Bar-tailed Godwit",
        "scientificName": "Limosa lapponica",
        "bandCode6": "LIMLAP"
    },
    {
        "bandCode4": "MAGO",
        "commonName": "Marbled Godwit",
        "scientificName": "Limosa fedoa",
        "bandCode6": "LIMFED"
    },
    {
        "bandCode4": "RUTU",
        "commonName": "Ruddy Turnstone",
        "scientificName": "Arenaria interpres",
        "bandCode6": "AREINT"
    },
    {
        "bandCode4": "BLTU",
        "commonName": "Black Turnstone",
        "scientificName": "Arenaria melanocephala",
        "bandCode6": "AREMEL"
    },
    {
        "bandCode4": "GRKN",
        "commonName": "Great Knot",
        "scientificName": "Calidris tenuirostris",
        "bandCode6": "CALTEN"
    },
    {
        "bandCode4": "REKN",
        "commonName": "Red Knot",
        "scientificName": "Calidris canutus",
        "bandCode6": "CALCAN"
    },
    {
        "bandCode4": "SURF",
        "commonName": "Surfbird",
        "scientificName": "Calidris virgata",
        "bandCode6": "CALVIR"
    },
    {
        "bandCode4": "RUFF",
        "commonName": "Ruff",
        "scientificName": "Calidris pugnax",
        "bandCode6": "CALPUG"
    },
    {
        "bandCode4": "BBIS",
        "bandCode4Conflict": true,
        "commonName": "Broad-billed Sandpiper",
        "scientificName": "Calidris falcinellus",
        "bandCode6": "CALFAL"
    },
    {
        "bandCode4": "SPTS",
        "bandCode4Conflict": true,
        "commonName": "Sharp-tailed Sandpiper",
        "scientificName": "Calidris acuminata",
        "bandCode6": "CALACU"
    },
    {
        "bandCode4": "STSA",
        "commonName": "Stilt Sandpiper",
        "scientificName": "Calidris himantopus",
        "bandCode6": "CALHIM"
    },
    {
        "bandCode4": "CUSA",
        "commonName": "Curlew Sandpiper",
        "scientificName": "Calidris ferruginea",
        "bandCode6": "CALFER"
    },
    {
        "bandCode4": "TEST",
        "commonName": "Temminck's Stint",
        "scientificName": "Calidris temminckii",
        "bandCode6": "CALTEM"
    },
    {
        "bandCode4": "LTST",
        "commonName": "Long-toed Stint",
        "scientificName": "Calidris subminuta",
        "bandCode6": "CALSUM",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SBSA",
        "commonName": "Spoon-billed Sandpiper",
        "scientificName": "Calidris pygmea",
        "bandCode6": "CALPYG"
    },
    {
        "bandCode4": "RNST",
        "commonName": "Red-necked Stint",
        "scientificName": "Calidris ruficollis",
        "bandCode6": "CALRUF"
    },
    {
        "bandCode4": "SAND",
        "commonName": "Sanderling",
        "scientificName": "Calidris alba",
        "bandCode6": "CALALB"
    },
    {
        "bandCode4": "DUNL",
        "commonName": "Dunlin",
        "scientificName": "Calidris alpina",
        "bandCode6": "CALALP"
    },
    {
        "bandCode4": "ROSA",
        "commonName": "Rock Sandpiper",
        "scientificName": "Calidris ptilocnemis",
        "bandCode6": "CALPTI"
    },
    {
        "bandCode4": "PUSA",
        "commonName": "Purple Sandpiper",
        "scientificName": "Calidris maritima",
        "bandCode6": "CALMAR"
    },
    {
        "bandCode4": "BASA",
        "commonName": "Baird's Sandpiper",
        "scientificName": "Calidris bairdii",
        "bandCode6": "CALBAI"
    },
    {
        "bandCode4": "LIST",
        "commonName": "Little Stint",
        "scientificName": "Calidris minuta",
        "bandCode6": "CALMIA",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "LESA",
        "commonName": "Least Sandpiper",
        "scientificName": "Calidris minutilla",
        "bandCode6": "CALMIL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "WRSA",
        "commonName": "White-rumped Sandpiper",
        "scientificName": "Calidris fuscicollis",
        "bandCode6": "CALFUS"
    },
    {
        "bandCode4": "BBSA",
        "commonName": "Buff-breasted Sandpiper",
        "scientificName": "Calidris subruficollis",
        "bandCode6": "CALSUR",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PESA",
        "commonName": "Pectoral Sandpiper",
        "scientificName": "Calidris melanotos",
        "bandCode6": "CALMET",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SESA",
        "commonName": "Semipalmated Sandpiper",
        "scientificName": "Calidris pusilla",
        "bandCode6": "CALPUS"
    },
    {
        "bandCode4": "WESA",
        "commonName": "Western Sandpiper",
        "scientificName": "Calidris mauri",
        "bandCode6": "CALMAU"
    },
    {
        "bandCode4": "SBDO",
        "commonName": "Short-billed Dowitcher",
        "scientificName": "Limnodromus griseus",
        "bandCode6": "LIMGRI"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNDO",
        "commonName": "Unidentified Dowitcher",
        "scientificName": "Limnodromus sp.",
        "bandCode6": "LIMSPE"
    },
    {
        "bandCode4": "LBDO",
        "commonName": "Long-billed Dowitcher",
        "scientificName": "Limnodromus scolopaceus",
        "bandCode6": "LIMSCO"
    },
    {
        "bandCode4": "JASN",
        "commonName": "Jack Snipe",
        "scientificName": "Lymnocryptes minimus",
        "bandCode6": "LYMMIN"
    },
    {
        "bandCode4": "WISN",
        "commonName": "Wilson's Snipe",
        "scientificName": "Gallinago delicata",
        "bandCode6": "GALDEL"
    },
    {
        "bandCode4": "COSN",
        "commonName": "Common Snipe",
        "scientificName": "Gallinago gallinago",
        "bandCode6": "GALGAN",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PTSN",
        "commonName": "Pin-tailed Snipe",
        "scientificName": "Gallinago stenura",
        "bandCode6": "GALSTE"
    },
    {
        "bandCode4": "SOSN",
        "commonName": "Solitary Snipe",
        "scientificName": "Gallinago solitaria",
        "bandCode6": "GALSOL"
    },
    {
        "bandCode4": "EUWO",
        "commonName": "Eurasian Woodcock",
        "scientificName": "Scolopax rusticola",
        "bandCode6": "SCORUS"
    },
    {
        "bandCode4": "AMWO",
        "commonName": "American Woodcock",
        "scientificName": "Scolopax minor",
        "bandCode6": "SCOMIN"
    },
    {
        "bandCode4": "WIPH",
        "commonName": "Wilson's Phalarope",
        "scientificName": "Phalaropus tricolor",
        "bandCode6": "PHATRI"
    },
    {
        "bandCode4": "RNPH",
        "commonName": "Red-necked Phalarope",
        "scientificName": "Phalaropus lobatus",
        "bandCode6": "PHALOB"
    },
    {
        "bandCode4": "REPH",
        "commonName": "Red Phalarope",
        "scientificName": "Phalaropus fulicarius",
        "bandCode6": "PHAFUL"
    },
    {
        "bandCode4": "COPR",
        "commonName": "Collared Pratincole",
        "scientificName": "Glareola pratincola",
        "bandCode6": "GLAPRA"
    },
    {
        "bandCode4": "ORPR",
        "commonName": "Oriental Pratincole",
        "scientificName": "Glareola maldivarum",
        "bandCode6": "GLAMAL"
    },
    {
        "bandCode4": "GRSK",
        "commonName": "Great Skua",
        "scientificName": "Stercorarius skua",
        "bandCode6": "STESKU"
    },
    {
        "bandCode4": "SPSK",
        "commonName": "South Polar Skua",
        "scientificName": "Stercorarius maccormicki",
        "bandCode6": "STEMAC"
    },
    {
        "bandCode4": "POJA",
        "commonName": "Pomarine Jaeger",
        "scientificName": "Stercorarius pomarinus",
        "bandCode6": "STEPOM"
    },
    {
        "bandCode4": "PAJA",
        "commonName": "Parasitic Jaeger",
        "scientificName": "Stercorarius parasiticus",
        "bandCode6": "STEPAS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "LTJA",
        "commonName": "Long-tailed Jaeger",
        "scientificName": "Stercorarius longicaudus",
        "bandCode6": "STELON"
    },
    {
        "bandCode4": "DOVE",
        "commonName": "Dovekie",
        "scientificName": "Alle alle",
        "bandCode6": "ALLALL"
    },
    {
        "bandCode4": "COMU",
        "commonName": "Common Murre",
        "scientificName": "Uria aalge",
        "bandCode6": "URIAAL"
    },
    {
        "bandCode4": "TBMU",
        "commonName": "Thick-billed Murre",
        "scientificName": "Uria lomvia",
        "bandCode6": "URILOM"
    },
    {
        "bandCode4": "RAZO",
        "commonName": "Razorbill",
        "scientificName": "Alca torda",
        "bandCode6": "ALCTOR"
    },
    {
        "bandCode4": "GRAU",
        "commonName": "Great Auk",
        "scientificName": "Pinguinus impennis",
        "bandCode6": "PINIMP"
    },
    {
        "bandCode4": "BLGU",
        "commonName": "Black Guillemot",
        "scientificName": "Cepphus grylle",
        "bandCode6": "CEPGRY"
    },
    {
        "bandCode4": "PIGU",
        "commonName": "Pigeon Guillemot",
        "scientificName": "Cepphus columba",
        "bandCode6": "CEPCOL"
    },
    {
        "bandCode4": "LBMU",
        "commonName": "Long-billed Murrelet",
        "scientificName": "Brachyramphus perdix",
        "bandCode6": "BRAPER"
    },
    {
        "bandCode4": "MAMU",
        "commonName": "Marbled Murrelet",
        "scientificName": "Brachyramphus marmoratus",
        "bandCode6": "BRAMAR"
    },
    {
        "bandCode4": "KIMU",
        "commonName": "Kittlitz's Murrelet",
        "scientificName": "Brachyramphus brevirostris",
        "bandCode6": "BRABRE"
    },
    {
        "bandCode4": "SCMU",
        "commonName": "Scripps's Murrelet",
        "scientificName": "Synthliboramphus scrippsi",
        "bandCode6": "SYNSCR"
    },
    {
        "bandCode4": "GAMU",
        "commonName": "Guadalupe Murrelet",
        "scientificName": "Synthliboramphus hypoleucus",
        "bandCode6": "SYNHYP"
    },
    {
        "bandCode4": "CRMU",
        "commonName": "Craveri's Murrelet",
        "scientificName": "Synthliboramphus craveri",
        "bandCode6": "SYNCRA"
    },
    {
        "bandCode4": "ANMU",
        "commonName": "Ancient Murrelet",
        "scientificName": "Synthliboramphus antiquus",
        "bandCode6": "SYNANT"
    },
    {
        "bandCode4": "CAAU",
        "commonName": "Cassin's Auklet",
        "scientificName": "Ptychoramphus aleuticus",
        "bandCode6": "PTYALE"
    },
    {
        "bandCode4": "PAAU",
        "commonName": "Parakeet Auklet",
        "scientificName": "Aethia psittacula",
        "bandCode6": "AETPSI"
    },
    {
        "bandCode4": "LEAU",
        "commonName": "Least Auklet",
        "scientificName": "Aethia pusilla",
        "bandCode6": "AETPUS"
    },
    {
        "bandCode4": "WHAU",
        "commonName": "Whiskered Auklet",
        "scientificName": "Aethia pygmaea",
        "bandCode6": "AETPYG"
    },
    {
        "bandCode4": "CRAU",
        "commonName": "Crested Auklet",
        "scientificName": "Aethia cristatella",
        "bandCode6": "AETCRI"
    },
    {
        "bandCode4": "RHAU",
        "commonName": "Rhinoceros Auklet",
        "scientificName": "Cerorhinca monocerata",
        "bandCode6": "CERMON"
    },
    {
        "bandCode4": "ATPU",
        "commonName": "Atlantic Puffin",
        "scientificName": "Fratercula arctica",
        "bandCode6": "FRAARC"
    },
    {
        "bandCode4": "HOPU",
        "commonName": "Horned Puffin",
        "scientificName": "Fratercula corniculata",
        "bandCode6": "FRACOR"
    },
    {
        "bandCode4": "TUPU",
        "commonName": "Tufted Puffin",
        "scientificName": "Fratercula cirrhata",
        "bandCode6": "FRACIR"
    },
    {
        "bandCode4": "STGU",
        "commonName": "Swallow-tailed Gull",
        "scientificName": "Creagrus furcatus",
        "bandCode6": "CREFUR"
    },
    {
        "bandCode4": "BLKI",
        "commonName": "Black-legged Kittiwake",
        "scientificName": "Rissa tridactyla",
        "bandCode6": "RISTRI"
    },
    {
        "bandCode4": "RLKI",
        "commonName": "Red-legged Kittiwake",
        "scientificName": "Rissa brevirostris",
        "bandCode6": "RISBRE"
    },
    {
        "bandCode4": "IVGU",
        "commonName": "Ivory Gull",
        "scientificName": "Pagophila eburnea",
        "bandCode6": "PAGEBU"
    },
    {
        "bandCode4": "SAGU",
        "commonName": "Sabine's Gull",
        "scientificName": "Xema sabini",
        "bandCode6": "XEMSAB"
    },
    {
        "bandCode4": "BOGU",
        "commonName": "Bonaparte's Gull",
        "scientificName": "Chroicocephalus philadelphia",
        "bandCode6": "CHRPHI"
    },
    {
        "bandCode4": "GHGU",
        "commonName": "Gray-hooded Gull",
        "scientificName": "Chroicocephalus cirrocephalus",
        "bandCode6": "CHRCIR"
    },
    {
        "bandCode4": "BHGU",
        "commonName": "Black-headed Gull",
        "scientificName": "Chroicocephalus ridibundus",
        "bandCode6": "CHRRID"
    },
    {
        "bandCode4": "LIGU",
        "commonName": "Little Gull",
        "scientificName": "Hydrocoloeus minutus",
        "bandCode6": "HYDMIN"
    },
    {
        "bandCode4": "ROGU",
        "commonName": "Ross's Gull",
        "scientificName": "Rhodostethia rosea",
        "bandCode6": "RHSROS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GRGU",
        "commonName": "Gray Gull",
        "scientificName": "Leucophaeus modestus",
        "bandCode6": "LEUMOD"
    },
    {
        "bandCode4": "LAGU",
        "commonName": "Laughing Gull",
        "scientificName": "Leucophaeus atricilla",
        "bandCode6": "LEUATC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "FRGU",
        "commonName": "Franklin's Gull",
        "scientificName": "Leucophaeus pipixcan",
        "bandCode6": "LEUPIP"
    },
    {
        "bandCode4": "BEGU",
        "bandCode4Conflict": true,
        "commonName": "Belcher's Gull",
        "scientificName": "Larus belcheri",
        "bandCode6": "LARBEL"
    },
    {
        "bandCode4": "BTGU",
        "bandCode4Conflict": true,
        "commonName": "Black-tailed Gull",
        "scientificName": "Larus crassirostris",
        "bandCode6": "LARCRA"
    },
    {
        "bandCode4": "HEEG",
        "bandCode4Conflict": true,
        "commonName": "Heermann's Gull",
        "scientificName": "Larus heermanni",
        "bandCode6": "LARHEE"
    },
    {
        "bandCode4": "MEGU",
        "commonName": "Mew Gull",
        "scientificName": "Larus canus",
        "bandCode6": "LARCAN"
    },
    {
        "bandCode4": "RBGU",
        "commonName": "Ring-billed Gull",
        "scientificName": "Larus delawarensis",
        "bandCode6": "LARDEL"
    },
    {
        "bandCode4": "WEGU",
        "commonName": "Western Gull",
        "scientificName": "Larus occidentalis",
        "bandCode6": "LAROCC"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "WGWH",
        "commonName": "Western X Glaucous-winged Gull Hybrid",
        "scientificName": "Larus occid. x gluaces.",
        "bandCode6": "LAROCG"
    },
    {
        "bandCode4": "YFGU",
        "commonName": "Yellow-footed Gull",
        "scientificName": "Larus livens",
        "bandCode6": "LARLIV"
    },
    {
        "bandCode4": "CAGU",
        "commonName": "California Gull",
        "scientificName": "Larus californicus",
        "bandCode6": "LARCAL"
    },
    {
        "bandCode4": "HERG",
        "bandCode4Conflict": true,
        "commonName": "Herring Gull",
        "scientificName": "Larus argentatus",
        "bandCode6": "LARARG"
    },
    {
        "bandCode4": "YLGU",
        "commonName": "Yellow-legged Gull",
        "scientificName": "Larus michahellis",
        "bandCode6": "LARMIC"
    },
    {
        "bandCode4": "THGU",
        "commonName": "Thayer's Gull",
        "scientificName": "Larus thayeri",
        "bandCode6": "LARTHA"
    },
    {
        "bandCode4": "ICGU",
        "commonName": "Iceland Gull",
        "scientificName": "Larus glaucoides",
        "bandCode6": "LARGLD",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "LBBG",
        "commonName": "Lesser Black-backed Gull",
        "scientificName": "Larus fuscus",
        "bandCode6": "LARFUS"
    },
    {
        "bandCode4": "SBGU",
        "commonName": "Slaty-backed Gull",
        "scientificName": "Larus schistisagus",
        "bandCode6": "LARSCH"
    },
    {
        "bandCode4": "GWGU",
        "commonName": "Glaucous-winged Gull",
        "scientificName": "Larus glaucescens",
        "bandCode6": "LARGLS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GLGU",
        "commonName": "Glaucous Gull",
        "scientificName": "Larus hyperboreus",
        "bandCode6": "LARHYP"
    },
    {
        "bandCode4": "GBBG",
        "commonName": "Great Black-backed Gull",
        "scientificName": "Larus marinus",
        "bandCode6": "LARMAR"
    },
    {
        "bandCode4": "KEGU",
        "commonName": "Kelp Gull",
        "scientificName": "Larus dominicanus",
        "bandCode6": "LARDOM"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNLG",
        "commonName": "Unidentified Larus Gull",
        "scientificName": "Larus (sp)",
        "bandCode6": "LARSPE"
    },
    {
        "bandCode4": "BRNO",
        "commonName": "Brown Noddy",
        "scientificName": "Anous stolidus",
        "bandCode6": "ANOSTO"
    },
    {
        "bandCode4": "BLNO",
        "commonName": "Black Noddy",
        "scientificName": "Anous minutus",
        "bandCode6": "ANOMIN"
    },
    {
        "bandCode4": "BGNO",
        "commonName": "Blue-gray Noddy",
        "scientificName": "Procelsterna cerulea",
        "bandCode6": "PROCER"
    },
    {
        "bandCode4": "WHTT",
        "bandCode4Conflict": true,
        "commonName": "White Tern",
        "scientificName": "Gygis alba",
        "bandCode6": "GYGALB"
    },
    {
        "bandCode4": "SOTE",
        "commonName": "Sooty Tern",
        "scientificName": "Onychoprion fuscatus",
        "bandCode6": "ONYFUS"
    },
    {
        "bandCode4": "GBAT",
        "bandCode4Conflict": true,
        "commonName": "Gray-backed Tern",
        "scientificName": "Onychoprion lunatus",
        "bandCode6": "ONYLUN"
    },
    {
        "bandCode4": "BRTE",
        "commonName": "Bridled Tern",
        "scientificName": "Onychoprion anaethetus",
        "bandCode6": "ONYANA"
    },
    {
        "bandCode4": "ALTE",
        "commonName": "Aleutian Tern",
        "scientificName": "Onychoprion aleuticus",
        "bandCode6": "ONYALE"
    },
    {
        "bandCode4": "LITE",
        "commonName": "Little Tern",
        "scientificName": "Sternula albifrons",
        "bandCode6": "STEALB"
    },
    {
        "bandCode4": "LETE",
        "commonName": "Least Tern",
        "scientificName": "Sternula antillarum",
        "bandCode6": "STEANT"
    },
    {
        "bandCode4": "YBTE",
        "commonName": "Yellow-billed Tern",
        "scientificName": "Sternula superciliaris",
        "bandCode6": "STESUP"
    },
    {
        "bandCode4": "LBTE",
        "commonName": "Large-billed Tern",
        "scientificName": "Phaetusa simplex",
        "bandCode6": "PHASIM"
    },
    {
        "bandCode4": "GBTE",
        "commonName": "Gull-billed Tern",
        "scientificName": "Gelochelidon nilotica",
        "bandCode6": "GELNIL"
    },
    {
        "bandCode4": "CATE",
        "commonName": "Caspian Tern",
        "scientificName": "Hydroprogne caspia",
        "bandCode6": "HYDCAS"
    },
    {
        "bandCode4": "INTE",
        "commonName": "Inca Tern",
        "scientificName": "Larosterna inca",
        "bandCode6": "LARINC"
    },
    {
        "bandCode4": "BLTE",
        "commonName": "Black Tern",
        "scientificName": "Chlidonias niger",
        "bandCode6": "CHLNIG"
    },
    {
        "bandCode4": "WWTE",
        "commonName": "White-winged Tern",
        "scientificName": "Chlidonias leucopterus",
        "bandCode6": "CHLLEU"
    },
    {
        "bandCode4": "WHST",
        "bandCode4Conflict": true,
        "commonName": "Whiskered Tern",
        "scientificName": "Chlidonias hybrida",
        "bandCode6": "CHLHYB"
    },
    {
        "bandCode4": "ROST",
        "bandCode4Conflict": true,
        "commonName": "Roseate Tern",
        "scientificName": "Sterna dougallii",
        "bandCode6": "STEDOU"
    },
    {
        "bandCode4": "COTE",
        "commonName": "Common Tern",
        "scientificName": "Sterna hirundo",
        "bandCode6": "STEHIR"
    },
    {
        "bandCode4": "ARTE",
        "commonName": "Arctic Tern",
        "scientificName": "Sterna paradisaea",
        "bandCode6": "STEPAD",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "FOTE",
        "commonName": "Forster's Tern",
        "scientificName": "Sterna forsteri",
        "bandCode6": "STEFOR"
    },
    {
        "bandCode4": "ROYT",
        "bandCode4Conflict": true,
        "commonName": "Royal Tern",
        "scientificName": "Thalasseus maximus",
        "bandCode6": "THAMAX"
    },
    {
        "bandCode4": "GCTE",
        "commonName": "Great Crested Tern",
        "scientificName": "Thalasseus bergii",
        "bandCode6": "THABER"
    },
    {
        "bandCode4": "SATE",
        "commonName": "Sandwich Tern",
        "scientificName": "Thalasseus sandvicensis",
        "bandCode6": "THASAN"
    },
    {
        "bandCode4": "ELTE",
        "commonName": "Elegant Tern",
        "scientificName": "Thalasseus elegans",
        "bandCode6": "THAELE"
    },
    {
        "bandCode4": "BLSK",
        "commonName": "Black Skimmer",
        "scientificName": "Rynchops niger",
        "bandCode6": "RYNNIG"
    },
    {
        "bandCode4": "CBSA",
        "commonName": "Chestnut-bellied Sandgrouse",
        "scientificName": "Pterocles exustus",
        "bandCode6": "PTEEXU"
    },
    {
        "bandCode4": "ROPI",
        "commonName": "Rock Pigeon",
        "scientificName": "Columba livia",
        "bandCode6": "COLLIV"
    },
    {
        "bandCode4": "PVPI",
        "commonName": "Pale-vented Pigeon",
        "scientificName": "Patagioenas cayennensis",
        "bandCode6": "PATCAY"
    },
    {
        "bandCode4": "SCPI",
        "commonName": "Scaled Pigeon",
        "scientificName": "Patagioenas speciosa",
        "bandCode6": "PATSPE"
    },
    {
        "bandCode4": "SNPI",
        "commonName": "Scaly-naped Pigeon",
        "scientificName": "Patagioenas squamosa",
        "bandCode6": "PATSQU"
    },
    {
        "bandCode4": "WCPI",
        "commonName": "White-crowned Pigeon",
        "scientificName": "Patagioenas leucocephala",
        "bandCode6": "PATLEU"
    },
    {
        "bandCode4": "RBPI",
        "commonName": "Red-billed Pigeon",
        "scientificName": "Patagioenas flavirostris",
        "bandCode6": "PATFLA"
    },
    {
        "bandCode4": "PLAP",
        "bandCode4Conflict": true,
        "commonName": "Plain Pigeon",
        "scientificName": "Patagioenas inornata",
        "bandCode6": "PATINO"
    },
    {
        "bandCode4": "BTPI",
        "commonName": "Band-tailed Pigeon",
        "scientificName": "Patagioenas fasciata",
        "bandCode6": "PATFAS"
    },
    {
        "bandCode4": "RTAP",
        "bandCode4Conflict": true,
        "commonName": "Ring-tailed Pigeon",
        "scientificName": "Patagioenas caribaea",
        "bandCode6": "PATCAR"
    },
    {
        "bandCode4": "PLUP",
        "bandCode4Conflict": true,
        "commonName": "Plumbeous Pigeon",
        "scientificName": "Patagioenas plumbea",
        "bandCode6": "PATPLU"
    },
    {
        "bandCode4": "RUDP",
        "bandCode4Conflict": true,
        "commonName": "Ruddy Pigeon",
        "scientificName": "Patagioenas subvinacea",
        "bandCode6": "PATSUB"
    },
    {
        "bandCode4": "SBPI",
        "commonName": "Short-billed Pigeon",
        "scientificName": "Patagioenas nigrirostris",
        "bandCode6": "PATNIG"
    },
    {
        "bandCode4": "ORTD",
        "commonName": "Oriental Turtle-Dove",
        "scientificName": "Streptopelia orientalis",
        "bandCode6": "STRORI"
    },
    {
        "bandCode4": "AFCD",
        "commonName": "African Collared-Dove",
        "scientificName": "Streptopelia roseogrisea",
        "bandCode6": "STRROS"
    },
    {
        "bandCode4": "EUTD",
        "commonName": "European Turtle-Dove",
        "scientificName": "Streptopelia turtur",
        "bandCode6": "STRTUR"
    },
    {
        "bandCode4": "EUCD",
        "commonName": "Eurasian Collared-Dove",
        "scientificName": "Streptopelia decaocto",
        "bandCode6": "STRDEC"
    },
    {
        "bandCode4": "SPDO",
        "commonName": "Spotted Dove",
        "scientificName": "Streptopelia chinensis",
        "bandCode6": "STRCHI"
    },
    {
        "bandCode4": "ZEBD",
        "bandCode4Conflict": true,
        "commonName": "Zebra Dove",
        "scientificName": "Geopelia striata",
        "bandCode6": "GEOSTR"
    },
    {
        "bandCode4": "PAPI",
        "commonName": "Passenger Pigeon",
        "scientificName": "Ectopistes migratorius",
        "bandCode6": "ECTMIG"
    },
    {
        "bandCode4": "INDO",
        "commonName": "Inca Dove",
        "scientificName": "Columbina inca",
        "bandCode6": "COLINC"
    },
    {
        "bandCode4": "COGD",
        "commonName": "Common Ground-Dove",
        "scientificName": "Columbina passerina",
        "bandCode6": "COLPAS"
    },
    {
        "bandCode4": "PBGD",
        "commonName": "Plain-breasted Ground-Dove",
        "scientificName": "Columbina minuta",
        "bandCode6": "COLMIN"
    },
    {
        "bandCode4": "RUGD",
        "commonName": "Ruddy Ground-Dove",
        "scientificName": "Columbina talpacoti",
        "bandCode6": "COLTAL"
    },
    {
        "bandCode4": "BLGD",
        "commonName": "Blue Ground-Dove",
        "scientificName": "Claravis pretiosa",
        "bandCode6": "CLAPRE"
    },
    {
        "bandCode4": "MCGD",
        "commonName": "Maroon-chested Ground-Dove",
        "scientificName": "Claravis mondetoura",
        "bandCode6": "CLAMON"
    },
    {
        "bandCode4": "BHQD",
        "commonName": "Blue-headed Quail-Dove",
        "scientificName": "Starnoenas cyanocephala",
        "bandCode6": "STACYA"
    },
    {
        "bandCode4": "CRQD",
        "commonName": "Crested Quail-Dove",
        "scientificName": "Geotrygon versicolor",
        "bandCode6": "GEOVER"
    },
    {
        "bandCode4": "RUQD",
        "commonName": "Ruddy Quail-Dove",
        "scientificName": "Geotrygon montana",
        "bandCode6": "GEOMON"
    },
    {
        "bandCode4": "VIQD",
        "commonName": "Violaceous Quail-Dove",
        "scientificName": "Geotrygon violacea",
        "bandCode6": "GEOVIO"
    },
    {
        "bandCode4": "GFQD",
        "commonName": "Gray-fronted Quail-Dove",
        "scientificName": "Geotrygon caniceps",
        "bandCode6": "GEOCAN"
    },
    {
        "bandCode4": "WFRQ",
        "bandCode4Conflict": true,
        "commonName": "White-fronted Quail-Dove",
        "scientificName": "Geotrygon leucometopia",
        "bandCode6": "GEOLEU"
    },
    {
        "bandCode4": "KWQD",
        "commonName": "Key West Quail-Dove",
        "scientificName": "Geotrygon chrysia",
        "bandCode6": "GEOCHR"
    },
    {
        "bandCode4": "BRQD",
        "commonName": "Bridled Quail-Dove",
        "scientificName": "Geotrygon mystacea",
        "bandCode6": "GEOMYS"
    },
    {
        "bandCode4": "OBQD",
        "commonName": "Olive-backed Quail-Dove",
        "scientificName": "Leptotrygon veraguensis",
        "bandCode6": "LEPVEG",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "WTDO",
        "commonName": "White-tipped Dove",
        "scientificName": "Leptotila verreauxi",
        "bandCode6": "LEPVEX",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "CADO",
        "commonName": "Caribbean Dove",
        "scientificName": "Leptotila jamaicensis",
        "bandCode6": "LEPJAM"
    },
    {
        "bandCode4": "GCDO",
        "commonName": "Gray-chested Dove",
        "scientificName": "Leptotila cassini",
        "bandCode6": "LEPCAS"
    },
    {
        "bandCode4": "GHDO",
        "commonName": "Gray-headed Dove",
        "scientificName": "Leptotila plumbeiceps",
        "bandCode6": "LEPPLU"
    },
    {
        "bandCode4": "GRDO",
        "commonName": "Grenada Dove",
        "scientificName": "Leptotila wellsi",
        "bandCode6": "LEPWEL"
    },
    {
        "bandCode4": "TUQD",
        "commonName": "Tuxtla Quail-Dove",
        "scientificName": "Zentrygon carrikeri",
        "bandCode6": "ZENCAR"
    },
    {
        "bandCode4": "BFQD",
        "commonName": "Buff-fronted Quail-Dove",
        "scientificName": "Zentrygon costaricensis",
        "bandCode6": "ZENCOS"
    },
    {
        "bandCode4": "PBQD",
        "commonName": "Purplish-backed Quail-Dove",
        "scientificName": "Zentrygon lawrencii",
        "bandCode6": "ZENLAW"
    },
    {
        "bandCode4": "WFAQ",
        "bandCode4Conflict": true,
        "commonName": "White-faced Quail-Dove",
        "scientificName": "Zentrygon albifacies",
        "bandCode6": "ZENALB"
    },
    {
        "bandCode4": "CHQD",
        "commonName": "Chiriqui Quail-Dove",
        "scientificName": "Zentrygon chiriquensis",
        "bandCode6": "ZENCHI"
    },
    {
        "bandCode4": "RCQD",
        "commonName": "Russet-crowned Quail-Dove",
        "scientificName": "Zentrygon goldmani",
        "bandCode6": "ZENGOL"
    },
    {
        "bandCode4": "WWDO",
        "commonName": "White-winged Dove",
        "scientificName": "Zenaida asiatica",
        "bandCode6": "ZENASI"
    },
    {
        "bandCode4": "ZEND",
        "bandCode4Conflict": true,
        "commonName": "Zenaida Dove",
        "scientificName": "Zenaida aurita",
        "bandCode6": "ZENAUT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "EADO",
        "commonName": "Eared Dove",
        "scientificName": "Zenaida auriculata",
        "bandCode6": "ZENAUC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "MODO",
        "commonName": "Mourning Dove",
        "scientificName": "Zenaida macroura",
        "bandCode6": "ZENMAC"
    },
    {
        "bandCode4": "SODO",
        "commonName": "Socorro Dove",
        "scientificName": "Zenaida graysoni",
        "bandCode6": "ZENGRA"
    },
    {
        "bandCode4": "COCU",
        "commonName": "Common Cuckoo",
        "scientificName": "Cuculus canorus",
        "bandCode6": "CUCCAN"
    },
    {
        "bandCode4": "ORCU",
        "commonName": "Oriental Cuckoo",
        "scientificName": "Cuculus optatus",
        "bandCode6": "CUCOPT"
    },
    {
        "bandCode4": "LITC",
        "bandCode4Conflict": true,
        "commonName": "Little Cuckoo",
        "scientificName": "Coccycua minuta",
        "bandCode6": "COCMIT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SQCU",
        "commonName": "Squirrel Cuckoo",
        "scientificName": "Piaya cayana",
        "bandCode6": "PIACAY"
    },
    {
        "bandCode4": "DBCU",
        "commonName": "Dark-billed Cuckoo",
        "scientificName": "Coccyzus melacoryphus",
        "bandCode6": "COCMEL"
    },
    {
        "bandCode4": "YBCU",
        "commonName": "Yellow-billed Cuckoo",
        "scientificName": "Coccyzus americanus",
        "bandCode6": "COCAME"
    },
    {
        "bandCode4": "PBCU",
        "commonName": "Pearly-breasted Cuckoo",
        "scientificName": "Coccyzus euleri",
        "bandCode6": "COCEUL"
    },
    {
        "bandCode4": "MACU",
        "commonName": "Mangrove Cuckoo",
        "scientificName": "Coccyzus minor",
        "bandCode6": "COCMIR",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "COCC",
        "bandCode4Conflict": true,
        "commonName": "Cocos Cuckoo",
        "scientificName": "Coccyzus ferrugineus",
        "bandCode6": "COCFER"
    },
    {
        "bandCode4": "BBCU",
        "commonName": "Black-billed Cuckoo",
        "scientificName": "Coccyzus erythropthalmus",
        "bandCode6": "COCERY"
    },
    {
        "bandCode4": "CBCU",
        "commonName": "Chestnut-bellied Cuckoo",
        "scientificName": "Coccyzus pluvialis",
        "bandCode6": "COCPLU"
    },
    {
        "bandCode4": "BBRC",
        "bandCode4Conflict": true,
        "commonName": "Bay-breasted Cuckoo",
        "scientificName": "Coccyzus rufigularis",
        "bandCode6": "COCRUF"
    },
    {
        "bandCode4": "JALC",
        "commonName": "Jamaican Lizard-Cuckoo",
        "scientificName": "Coccyzus vetula",
        "bandCode6": "COCVET"
    },
    {
        "bandCode4": "PRLC",
        "commonName": "Puerto Rican Lizard-Cuckoo",
        "scientificName": "Coccyzus vieilloti",
        "bandCode6": "COCVIE"
    },
    {
        "bandCode4": "GRLC",
        "commonName": "Great Lizard-Cuckoo",
        "scientificName": "Coccyzus merlini",
        "bandCode6": "COCMER"
    },
    {
        "bandCode4": "HILC",
        "commonName": "Hispaniolan Lizard-Cuckoo",
        "scientificName": "Coccyzus longirostris",
        "bandCode6": "COCLON"
    },
    {
        "bandCode4": "STCU",
        "commonName": "Striped Cuckoo",
        "scientificName": "Tapera naevia",
        "bandCode6": "TAPNAE"
    },
    {
        "bandCode4": "PHCU",
        "commonName": "Pheasant Cuckoo",
        "scientificName": "Dromococcyx phasianellus",
        "bandCode6": "DROPHA"
    },
    {
        "bandCode4": "LEGC",
        "commonName": "Lesser Ground-Cuckoo",
        "scientificName": "Morococcyx erythropygus",
        "bandCode6": "MORERY"
    },
    {
        "bandCode4": "LERO",
        "commonName": "Lesser Roadrunner",
        "scientificName": "Geococcyx velox",
        "bandCode6": "GEOVEL"
    },
    {
        "bandCode4": "GRRO",
        "commonName": "Greater Roadrunner",
        "scientificName": "Geococcyx californianus",
        "bandCode6": "GEOCAL"
    },
    {
        "bandCode4": "RVGC",
        "commonName": "Rufous-vented Ground-Cuckoo",
        "scientificName": "Neomorphus geoffroyi",
        "bandCode6": "NEOGEO"
    },
    {
        "bandCode4": "GRTA",
        "bandCode4Conflict": true,
        "commonName": "Greater Ani",
        "scientificName": "Crotophaga major",
        "bandCode6": "CROMAJ"
    },
    {
        "bandCode4": "SBAN",
        "commonName": "Smooth-billed Ani",
        "scientificName": "Crotophaga ani",
        "bandCode6": "CROANI"
    },
    {
        "bandCode4": "GBAN",
        "commonName": "Groove-billed Ani",
        "scientificName": "Crotophaga sulcirostris",
        "bandCode6": "CROSUL"
    },
    {
        "bandCode4": "BANO",
        "bandCode4Conflict": true,
        "commonName": "Barn Owl",
        "scientificName": "Tyto alba",
        "bandCode6": "TYTALB"
    },
    {
        "bandCode4": "AFOW",
        "commonName": "Ashy-faced Owl",
        "scientificName": "Tyto glaucops",
        "bandCode6": "TYTGLA"
    },
    {
        "bandCode4": "ORSO",
        "commonName": "Oriental Scops-Owl",
        "scientificName": "Otus sunia",
        "bandCode6": "OTUSUN"
    },
    {
        "bandCode4": "FLOW",
        "commonName": "Flammulated Owl",
        "scientificName": "Psiloscops flammeolus",
        "bandCode6": "PSIFLA"
    },
    {
        "bandCode4": "WESO",
        "commonName": "Western Screech-Owl",
        "scientificName": "Megascops kennicottii",
        "bandCode6": "MEGKEN"
    },
    {
        "bandCode4": "EASO",
        "commonName": "Eastern Screech-Owl",
        "scientificName": "Megascops asio",
        "bandCode6": "MEGASI"
    },
    {
        "bandCode4": "BASO",
        "commonName": "Balsas Screech-Owl",
        "scientificName": "Megascops seductus",
        "bandCode6": "MEGSED"
    },
    {
        "bandCode4": "PASO",
        "commonName": "Pacific Screech-Owl",
        "scientificName": "Megascops cooperi",
        "bandCode6": "MEGCOO"
    },
    {
        "bandCode4": "WHSO",
        "commonName": "Whiskered Screech-Owl",
        "scientificName": "Megascops trichopsis",
        "bandCode6": "MEGTRI"
    },
    {
        "bandCode4": "TRSO",
        "commonName": "Tropical Screech-Owl",
        "scientificName": "Megascops choliba",
        "bandCode6": "MEGCHO"
    },
    {
        "bandCode4": "BESO",
        "commonName": "Bearded Screech-Owl",
        "scientificName": "Megascops barbarus",
        "bandCode6": "MEGBAR"
    },
    {
        "bandCode4": "VESO",
        "commonName": "Vermiculated Screech-Owl",
        "scientificName": "Megascops guatemalae",
        "bandCode6": "MEGGUA"
    },
    {
        "bandCode4": "BSSO",
        "commonName": "Bare-shanked Screech-Owl",
        "scientificName": "Megascops clarkii",
        "bandCode6": "MEGCLA"
    },
    {
        "bandCode4": "PRSO",
        "commonName": "Puerto Rican Screech-Owl",
        "scientificName": "Megascops nudipes",
        "bandCode6": "MEGNUD"
    },
    {
        "bandCode4": "BLOW",
        "commonName": "Bare-legged Owl",
        "scientificName": "Margarobyas lawrencii",
        "bandCode6": "MARLAW"
    },
    {
        "bandCode4": "CROW",
        "commonName": "Crested Owl",
        "scientificName": "Lophostrix cristata",
        "bandCode6": "LOPCRI"
    },
    {
        "bandCode4": "SPEO",
        "bandCode4Conflict": true,
        "commonName": "Spectacled Owl",
        "scientificName": "Pulsatrix perspicillata",
        "bandCode6": "PULPER"
    },
    {
        "bandCode4": "GHOW",
        "commonName": "Great Horned Owl",
        "scientificName": "Bubo virginianus",
        "bandCode6": "BUBVIR"
    },
    {
        "bandCode4": "SNOW",
        "commonName": "Snowy Owl",
        "scientificName": "Bubo scandiacus",
        "bandCode6": "BUBSCA"
    },
    {
        "bandCode4": "NHOW",
        "commonName": "Northern Hawk Owl",
        "scientificName": "Surnia ulula",
        "bandCode6": "SURULU"
    },
    {
        "bandCode4": "NOPO",
        "commonName": "Northern Pygmy-Owl",
        "scientificName": "Glaucidium gnoma",
        "bandCode6": "GLAGNO"
    },
    {
        "bandCode4": "CRPO",
        "commonName": "Costa Rican Pygmy-Owl",
        "scientificName": "Glaucidium costaricanum",
        "bandCode6": "GLACOS"
    },
    {
        "bandCode4": "CAPO",
        "commonName": "Central American Pygmy-Owl",
        "scientificName": "Glaucidium griseiceps",
        "bandCode6": "GLAGRI"
    },
    {
        "bandCode4": "TAPO",
        "commonName": "Tamaulipas Pygmy-Owl",
        "scientificName": "Glaucidium sanchezi",
        "bandCode6": "GLASAN"
    },
    {
        "bandCode4": "CPYO",
        "bandCode4Conflict": true,
        "commonName": "Colima Pygmy-Owl",
        "scientificName": "Glaucidium palmarum",
        "bandCode6": "GLAPAL"
    },
    {
        "bandCode4": "FEPO",
        "commonName": "Ferruginous Pygmy-Owl",
        "scientificName": "Glaucidium brasilianum",
        "bandCode6": "GLABRA"
    },
    {
        "bandCode4": "CUPO",
        "commonName": "Cuban Pygmy-Owl",
        "scientificName": "Glaucidium siju",
        "bandCode6": "GLASIJ"
    },
    {
        "bandCode4": "ELOW",
        "commonName": "Elf Owl",
        "scientificName": "Micrathene whitneyi",
        "bandCode6": "MICWHI"
    },
    {
        "bandCode4": "BUOW",
        "commonName": "Burrowing Owl",
        "scientificName": "Athene cunicularia",
        "bandCode6": "ATHCUN"
    },
    {
        "bandCode4": "MOOW",
        "commonName": "Mottled Owl",
        "scientificName": "Ciccaba virgata",
        "bandCode6": "CICVIR"
    },
    {
        "bandCode4": "BLWO",
        "bandCode4Conflict": true,
        "commonName": "Black-and-white Owl",
        "scientificName": "Ciccaba nigrolineata",
        "bandCode6": "CICNIG"
    },
    {
        "bandCode4": "SPOW",
        "commonName": "Spotted Owl",
        "scientificName": "Strix occidentalis",
        "bandCode6": "STROCC"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SBOH",
        "commonName": "Spotted x Barred Owl Hybrid",
        "scientificName": "Strix occiden. x varia",
        "bandCode6": "STROCV"
    },
    {
        "bandCode4": "BADO",
        "bandCode4Conflict": true,
        "commonName": "Barred Owl",
        "scientificName": "Strix varia",
        "bandCode6": "STRVAR"
    },
    {
        "bandCode4": "FUOW",
        "commonName": "Fulvous Owl",
        "scientificName": "Strix fulvescens",
        "bandCode6": "STRFUL"
    },
    {
        "bandCode4": "GGOW",
        "commonName": "Great Gray Owl",
        "scientificName": "Strix nebulosa",
        "bandCode6": "STRNEB"
    },
    {
        "bandCode4": "LEOW",
        "commonName": "Long-eared Owl",
        "scientificName": "Asio otus",
        "bandCode6": "ASIOTU"
    },
    {
        "bandCode4": "STOW",
        "commonName": "Stygian Owl",
        "scientificName": "Asio stygius",
        "bandCode6": "ASISTY"
    },
    {
        "bandCode4": "SEOW",
        "commonName": "Short-eared Owl",
        "scientificName": "Asio flammeus",
        "bandCode6": "ASIFLA"
    },
    {
        "bandCode4": "STRO",
        "bandCode4Conflict": true,
        "commonName": "Striped Owl",
        "scientificName": "Pseudoscops clamator",
        "bandCode6": "PSECLA"
    },
    {
        "bandCode4": "JAOW",
        "commonName": "Jamaican Owl",
        "scientificName": "Pseudoscops grammicus",
        "bandCode6": "PSEGRA"
    },
    {
        "bandCode4": "BOOW",
        "commonName": "Boreal Owl",
        "scientificName": "Aegolius funereus",
        "bandCode6": "AEGFUN"
    },
    {
        "bandCode4": "NSWO",
        "commonName": "Northern Saw-whet Owl",
        "scientificName": "Aegolius acadicus",
        "bandCode6": "AEGACA"
    },
    {
        "bandCode4": "USWO",
        "commonName": "Unspotted Saw-whet Owl",
        "scientificName": "Aegolius ridgwayi",
        "bandCode6": "AEGRID"
    },
    {
        "bandCode4": "NOBB",
        "bandCode4Conflict": true,
        "commonName": "Northern Boobook",
        "scientificName": "Ninox japonica",
        "bandCode6": "NINJAP"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNOW",
        "commonName": "Unidentified Owl",
        "scientificName": "Strigidae (gen, sp)",
        "bandCode6": "STRGSP"
    },
    {
        "bandCode4": "SHTN",
        "bandCode4Conflict": true,
        "commonName": "Short-tailed Nighthawk",
        "scientificName": "Lurocalis semitorquatus",
        "bandCode6": "LURSEM"
    },
    {
        "bandCode4": "LENI",
        "commonName": "Lesser Nighthawk",
        "scientificName": "Chordeiles acutipennis",
        "bandCode6": "CHOACU"
    },
    {
        "bandCode4": "CONI",
        "commonName": "Common Nighthawk",
        "scientificName": "Chordeiles minor",
        "bandCode6": "CHOMIN"
    },
    {
        "bandCode4": "ANNI",
        "commonName": "Antillean Nighthawk",
        "scientificName": "Chordeiles gundlachii",
        "bandCode6": "CHOGUN"
    },
    {
        "bandCode4": "COPA",
        "commonName": "Common Pauraque",
        "scientificName": "Nyctidromus albicollis",
        "bandCode6": "NYCALB"
    },
    {
        "bandCode4": "COPO",
        "commonName": "Common Poorwill",
        "scientificName": "Phalaenoptilus nuttallii",
        "bandCode6": "PHANUT"
    },
    {
        "bandCode4": "JAPA",
        "commonName": "Jamaican Pauraque",
        "scientificName": "Siphonorhis americana",
        "bandCode6": "SIPAME"
    },
    {
        "bandCode4": "LEPA",
        "commonName": "Least Pauraque",
        "scientificName": "Siphonorhis brewsteri",
        "bandCode6": "SIPBRE"
    },
    {
        "bandCode4": "EAPO",
        "commonName": "Eared Poorwill",
        "scientificName": "Nyctiphrynus mcleodii",
        "bandCode6": "NYCMCL"
    },
    {
        "bandCode4": "YUPO",
        "commonName": "Yucatan Poorwill",
        "scientificName": "Nyctiphrynus yucatanicus",
        "bandCode6": "NYCYUC"
    },
    {
        "bandCode4": "OCPO",
        "commonName": "Ocellated Poorwill",
        "scientificName": "Nyctiphrynus ocellatus",
        "bandCode6": "NYCOCE"
    },
    {
        "bandCode4": "CWWI",
        "commonName": "Chuck-will's-widow",
        "scientificName": "Antrostomus carolinensis",
        "bandCode6": "ANTCAR"
    },
    {
        "bandCode4": "RUNI",
        "commonName": "Rufous Nightjar",
        "scientificName": "Antrostomus rufus",
        "bandCode6": "ANTRUF"
    },
    {
        "bandCode4": "GANI",
        "commonName": "Greater Antillean Nightjar",
        "scientificName": "Antrostomus cubanensis",
        "bandCode6": "ANTCUB"
    },
    {
        "bandCode4": "TCNI",
        "commonName": "Tawny-collared Nightjar",
        "scientificName": "Antrostomus salvini",
        "bandCode6": "ANTSAL"
    },
    {
        "bandCode4": "YUNI",
        "commonName": "Yucatan Nightjar",
        "scientificName": "Antrostomus badius",
        "bandCode6": "ANTBAD"
    },
    {
        "bandCode4": "BCNI",
        "commonName": "Buff-collared Nightjar",
        "scientificName": "Antrostomus ridgwayi",
        "bandCode6": "ANTRID"
    },
    {
        "bandCode4": "EWPW",
        "commonName": "Eastern Whip-poor-will",
        "scientificName": "Antrostomus vociferus",
        "bandCode6": "ANTVOC"
    },
    {
        "bandCode4": "DUNI",
        "commonName": "Dusky Nightjar",
        "scientificName": "Antrostomus saturatus",
        "bandCode6": "ANTSAT"
    },
    {
        "bandCode4": "MWPW",
        "commonName": "Mexican Whip-poor-will",
        "scientificName": "Antrostomus arizonae",
        "bandCode6": "ANTARI"
    },
    {
        "bandCode4": "PRNI",
        "commonName": "Puerto Rican Nightjar",
        "scientificName": "Antrostomus noctitherus",
        "bandCode6": "ANTNOC"
    },
    {
        "bandCode4": "WTNI",
        "commonName": "White-tailed Nightjar",
        "scientificName": "Hydropsalis cayennensis",
        "bandCode6": "HYDCAY"
    },
    {
        "bandCode4": "SPTN",
        "bandCode4Conflict": true,
        "commonName": "Spot-tailed Nightjar",
        "scientificName": "Hydropsalis maculicaudus",
        "bandCode6": "HYDMAC"
    },
    {
        "bandCode4": "GRNI",
        "commonName": "Gray Nightjar",
        "scientificName": "Caprimulgus indicus",
        "bandCode6": "CAPIND"
    },
    {
        "bandCode4": "GRPO",
        "commonName": "Great Potoo",
        "scientificName": "Nyctibius grandis",
        "bandCode6": "NYCGRA"
    },
    {
        "bandCode4": "CPOT",
        "bandCode4Conflict": true,
        "commonName": "Common Potoo",
        "scientificName": "Nyctibius griseus",
        "bandCode6": "NYCGRI"
    },
    {
        "bandCode4": "NORP",
        "bandCode4Conflict": true,
        "commonName": "Northern Potoo",
        "scientificName": "Nyctibius jamaicensis",
        "bandCode6": "NYCJAM"
    },
    {
        "bandCode4": "OILB",
        "commonName": "Oilbird",
        "scientificName": "Steatornis caripensis",
        "bandCode6": "STECAR"
    },
    {
        "bandCode4": "BLSW",
        "commonName": "Black Swift",
        "scientificName": "Cypseloides niger",
        "bandCode6": "CYPNIG"
    },
    {
        "bandCode4": "WFSW",
        "commonName": "White-fronted Swift",
        "scientificName": "Cypseloides storeri",
        "bandCode6": "CYPSTO"
    },
    {
        "bandCode4": "WCHS",
        "bandCode4Conflict": true,
        "commonName": "White-chinned Swift",
        "scientificName": "Cypseloides cryptus",
        "bandCode6": "CYPCRY"
    },
    {
        "bandCode4": "SFSW",
        "commonName": "Spot-fronted Swift",
        "scientificName": "Cypseloides cherriei",
        "bandCode6": "CYPCHE"
    },
    {
        "bandCode4": "CCSW",
        "commonName": "Chestnut-collared Swift",
        "scientificName": "Streptoprocne rutila",
        "bandCode6": "STRRUT"
    },
    {
        "bandCode4": "WCSW",
        "commonName": "White-collared Swift",
        "scientificName": "Streptoprocne zonaris",
        "bandCode6": "STRZON"
    },
    {
        "bandCode4": "WNSW",
        "commonName": "White-naped Swift",
        "scientificName": "Streptoprocne semicollaris",
        "bandCode6": "STRSEM"
    },
    {
        "bandCode4": "CHSW",
        "commonName": "Chimney Swift",
        "scientificName": "Chaetura pelagica",
        "bandCode6": "CHAPEL"
    },
    {
        "bandCode4": "VASW",
        "commonName": "Vaux's Swift",
        "scientificName": "Chaetura vauxi",
        "bandCode6": "CHAVAU"
    },
    {
        "bandCode4": "CHAS",
        "bandCode4Conflict": true,
        "commonName": "Chapman's Swift",
        "scientificName": "Chaetura chapmani",
        "bandCode6": "CHACHA"
    },
    {
        "bandCode4": "STSW",
        "commonName": "Short-tailed Swift",
        "scientificName": "Chaetura brachyura",
        "bandCode6": "CHABRA"
    },
    {
        "bandCode4": "SISW",
        "commonName": "Sick's Swift",
        "scientificName": "Chaetura meridionalis",
        "bandCode6": "CHAMER"
    },
    {
        "bandCode4": "BRSW",
        "commonName": "Band-rumped Swift",
        "scientificName": "Chaetura spinicaudus",
        "bandCode6": "CHASPI"
    },
    {
        "bandCode4": "CRSW",
        "commonName": "Costa Rican Swift",
        "scientificName": "Chaetura fumosa",
        "bandCode6": "CHAFUM"
    },
    {
        "bandCode4": "GRSW",
        "commonName": "Gray-rumped Swift",
        "scientificName": "Chaetura cinereiventris",
        "bandCode6": "CHACIN"
    },
    {
        "bandCode4": "LASW",
        "commonName": "Lesser Antillean Swift",
        "scientificName": "Chaetura martinica",
        "bandCode6": "CHAMAR"
    },
    {
        "bandCode4": "WTNE",
        "commonName": "White-throated Needletail",
        "scientificName": "Hirundapus caudacutus",
        "bandCode6": "HIRCAU"
    },
    {
        "bandCode4": "MASW",
        "commonName": "Mariana Swiftlet",
        "scientificName": "Aerodramus bartschi",
        "bandCode6": "AERBAR"
    },
    {
        "bandCode4": "COSW",
        "commonName": "Common Swift",
        "scientificName": "Apus apus",
        "bandCode6": "APUAPU"
    },
    {
        "bandCode4": "FTSW",
        "commonName": "Fork-tailed Swift",
        "scientificName": "Apus pacificus",
        "bandCode6": "APUPAC"
    },
    {
        "bandCode4": "ALSW",
        "commonName": "Alpine Swift",
        "scientificName": "Apus melba",
        "bandCode6": "APUMEL"
    },
    {
        "bandCode4": "WTSW",
        "commonName": "White-throated Swift",
        "scientificName": "Aeronautes saxatalis",
        "bandCode6": "AERSAX"
    },
    {
        "bandCode4": "LSTS",
        "commonName": "Lesser Swallow-tailed Swift",
        "scientificName": "Panyptila cayennensis",
        "bandCode6": "PANCAY"
    },
    {
        "bandCode4": "GSTS",
        "commonName": "Great Swallow-tailed Swift",
        "scientificName": "Panyptila sanctihieronymi",
        "bandCode6": "PANSAN"
    },
    {
        "bandCode4": "ANPS",
        "commonName": "Antillean Palm-Swift",
        "scientificName": "Tachornis phoenicobia",
        "bandCode6": "TACPHO"
    },
    {
        "bandCode4": "WNJA",
        "commonName": "White-necked Jacobin",
        "scientificName": "Florisuga mellivora",
        "bandCode6": "FLOMEL"
    },
    {
        "bandCode4": "WTSI",
        "commonName": "White-tipped Sicklebill",
        "scientificName": "Eutoxeres aquila",
        "bandCode6": "EUTAQU"
    },
    {
        "bandCode4": "BRHE",
        "commonName": "Bronzy Hermit",
        "scientificName": "Glaucis aeneus",
        "bandCode6": "GLAAEN"
    },
    {
        "bandCode4": "RBHE",
        "commonName": "Rufous-breasted Hermit",
        "scientificName": "Glaucis hirsutus",
        "bandCode6": "GLAHIR"
    },
    {
        "bandCode4": "BTBA",
        "commonName": "Band-tailed Barbthroat",
        "scientificName": "Threnetes ruckeri",
        "bandCode6": "THRRUC"
    },
    {
        "bandCode4": "GREH",
        "bandCode4Conflict": true,
        "commonName": "Green Hermit",
        "scientificName": "Phaethornis guy",
        "bandCode6": "PHAGUY"
    },
    {
        "bandCode4": "LBIH",
        "bandCode4Conflict": true,
        "commonName": "Long-billed Hermit",
        "scientificName": "Phaethornis longirostris",
        "bandCode6": "PHALON"
    },
    {
        "bandCode4": "PBHE",
        "commonName": "Pale-bellied Hermit",
        "scientificName": "Phaethornis anthophilus",
        "bandCode6": "PHAANT"
    },
    {
        "bandCode4": "STHR",
        "bandCode4Conflict": true,
        "commonName": "Stripe-throated Hermit",
        "scientificName": "Phaethornis striigularis",
        "bandCode6": "PHASTR"
    },
    {
        "bandCode4": "GFRL",
        "bandCode4Conflict": true,
        "commonName": "Green-fronted Lancebill",
        "scientificName": "Doryfera ludovicae",
        "bandCode6": "DORLUD"
    },
    {
        "bandCode4": "BRVI",
        "commonName": "Brown Violetear",
        "scientificName": "Colibri delphinae",
        "bandCode6": "COLDEL"
    },
    {
        "bandCode4": "GREV",
        "bandCode4Conflict": true,
        "commonName": "Green Violetear",
        "scientificName": "Colibri thalassinus",
        "bandCode6": "COLTHA"
    },
    {
        "bandCode4": "TBHU",
        "commonName": "Tooth-billed Hummingbird",
        "scientificName": "Androdon aequatorialis",
        "bandCode6": "ANDAEQ"
    },
    {
        "bandCode4": "PCFA",
        "commonName": "Purple-crowned Fairy",
        "scientificName": "Heliothryx barroti",
        "bandCode6": "HELBAR"
    },
    {
        "bandCode4": "RTOH",
        "bandCode4Conflict": true,
        "commonName": "Ruby-topaz Hummingbird",
        "scientificName": "Chrysolampis mosquitus",
        "bandCode6": "CHRMOS"
    },
    {
        "bandCode4": "GNBM",
        "bandCode4Conflict": true,
        "commonName": "Green-breasted Mango",
        "scientificName": "Anthracothorax prevostii",
        "bandCode6": "ANTPRE"
    },
    {
        "bandCode4": "BTMA",
        "commonName": "Black-throated Mango",
        "scientificName": "Anthracothorax nigricollis",
        "bandCode6": "ANTNIG"
    },
    {
        "bandCode4": "VEMA",
        "commonName": "Veraguan Mango",
        "scientificName": "Anthracothorax veraguensis",
        "bandCode6": "ANTVER"
    },
    {
        "bandCode4": "ANMA",
        "commonName": "Antillean Mango",
        "scientificName": "Anthracothorax dominicus",
        "bandCode6": "ANTDOM"
    },
    {
        "bandCode4": "GMAG",
        "bandCode4Conflict": true,
        "commonName": "Green Mango",
        "scientificName": "Anthracothorax viridis",
        "bandCode6": "ANTVIR"
    },
    {
        "bandCode4": "JAMA",
        "commonName": "Jamaican Mango",
        "scientificName": "Anthracothorax mango",
        "bandCode6": "ANTMAN"
    },
    {
        "bandCode4": "PTCA",
        "commonName": "Purple-throated Carib",
        "scientificName": "Eulampis jugularis",
        "bandCode6": "EULJUG"
    },
    {
        "bandCode4": "GTCA",
        "commonName": "Green-throated Carib",
        "scientificName": "Eulampis holosericeus",
        "bandCode6": "EULHOL"
    },
    {
        "bandCode4": "GRET",
        "bandCode4Conflict": true,
        "commonName": "Green Thorntail",
        "scientificName": "Discosura conversii",
        "bandCode6": "DISCON"
    },
    {
        "bandCode4": "SCCO",
        "commonName": "Short-crested Coquette",
        "scientificName": "Lophornis brachylophus",
        "bandCode6": "LOPBRA"
    },
    {
        "bandCode4": "RCRC",
        "bandCode4Conflict": true,
        "commonName": "Rufous-crested Coquette",
        "scientificName": "Lophornis delattrei",
        "bandCode6": "LOPDEL"
    },
    {
        "bandCode4": "BCCO",
        "commonName": "Black-crested Coquette",
        "scientificName": "Lophornis helenae",
        "bandCode6": "LOPHEL"
    },
    {
        "bandCode4": "WCCO",
        "commonName": "White-crested Coquette",
        "scientificName": "Lophornis adorabilis",
        "bandCode6": "LOPADO"
    },
    {
        "bandCode4": "GRPU",
        "commonName": "Greenish Puffleg",
        "scientificName": "Haplophaedia aureliae",
        "bandCode6": "HAPAUR"
    },
    {
        "bandCode4": "GCBR",
        "commonName": "Green-crowned Brilliant",
        "scientificName": "Heliodoxa jacula",
        "bandCode6": "HELJAC"
    },
    {
        "bandCode4": "MAHU",
        "commonName": "Magnificent Hummingbird",
        "scientificName": "Eugenes fulgens",
        "bandCode6": "EUGFUL"
    },
    {
        "bandCode4": "FTHU",
        "commonName": "Fiery-throated Hummingbird",
        "scientificName": "Panterpe insignis",
        "bandCode6": "PANINS"
    },
    {
        "bandCode4": "LBST",
        "commonName": "Long-billed Starthroat",
        "scientificName": "Heliomaster longirostris",
        "bandCode6": "HELLON"
    },
    {
        "bandCode4": "PCST",
        "commonName": "Plain-capped Starthroat",
        "scientificName": "Heliomaster constantii",
        "bandCode6": "HELCON"
    },
    {
        "bandCode4": "GTMG",
        "commonName": "Green-throated Mountain-gem",
        "scientificName": "Lampornis viridipallens",
        "bandCode6": "LAMVIR"
    },
    {
        "bandCode4": "GBMG",
        "commonName": "Green-breasted Mountain-gem",
        "scientificName": "Lampornis sybillae",
        "bandCode6": "LAMSYB"
    },
    {
        "bandCode4": "ATHU",
        "commonName": "Amethyst-throated Hummingbird",
        "scientificName": "Lampornis amethystinus",
        "bandCode6": "LAMAME"
    },
    {
        "bandCode4": "BTHH",
        "bandCode4Conflict": true,
        "commonName": "Blue-throated Hummingbird",
        "scientificName": "Lampornis clemenciae",
        "bandCode6": "LAMCLE"
    },
    {
        "bandCode4": "WBMG",
        "commonName": "White-bellied Mountain-gem",
        "scientificName": "Lampornis hemileucus",
        "bandCode6": "LAMHEM"
    },
    {
        "bandCode4": "PTMG",
        "commonName": "Purple-throated Mountain-gem",
        "scientificName": "Lampornis calolaemus",
        "bandCode6": "LAMCAL"
    },
    {
        "bandCode4": "WTMG",
        "commonName": "White-throated Mountain-gem",
        "scientificName": "Lampornis castaneoventris",
        "bandCode6": "LAMCAS"
    },
    {
        "bandCode4": "GATH",
        "bandCode4Conflict": true,
        "commonName": "Garnet-throated Hummingbird",
        "scientificName": "Lamprolaima rhami",
        "bandCode6": "LAMRHA"
    },
    {
        "bandCode4": "BAWO",
        "commonName": "Bahama Woodstar",
        "scientificName": "Calliphlox evelynae",
        "bandCode6": "CALEVE"
    },
    {
        "bandCode4": "MTWO",
        "commonName": "Magenta-throated Woodstar",
        "scientificName": "Calliphlox bryantae",
        "bandCode6": "CALBRY"
    },
    {
        "bandCode4": "PTWO",
        "commonName": "Purple-throated Woodstar",
        "scientificName": "Calliphlox mitchellii",
        "bandCode6": "CALMIT"
    },
    {
        "bandCode4": "SLSH",
        "commonName": "Slender Sheartail",
        "scientificName": "Doricha enicura",
        "bandCode6": "DORENI"
    },
    {
        "bandCode4": "MESH",
        "commonName": "Mexican Sheartail",
        "scientificName": "Doricha eliza",
        "bandCode6": "DORELI"
    },
    {
        "bandCode4": "SKTH",
        "bandCode4Conflict": true,
        "commonName": "Sparkling-tailed Hummingbird",
        "scientificName": "Tilmatura dupontii",
        "bandCode6": "TILDUP"
    },
    {
        "bandCode4": "LUHU",
        "commonName": "Lucifer Hummingbird",
        "scientificName": "Calothorax lucifer",
        "bandCode6": "CALLUC"
    },
    {
        "bandCode4": "BEAH",
        "bandCode4Conflict": true,
        "commonName": "Beautiful Hummingbird",
        "scientificName": "Calothorax pulcher",
        "bandCode6": "CALPUL"
    },
    {
        "bandCode4": "RTHU",
        "commonName": "Ruby-throated Hummingbird",
        "scientificName": "Archilochus colubris",
        "bandCode6": "ARCCOL"
    },
    {
        "bandCode4": "BCHU",
        "commonName": "Black-chinned Hummingbird",
        "scientificName": "Archilochus alexandri",
        "bandCode6": "ARCALE"
    },
    {
        "bandCode4": "VEHU",
        "commonName": "Vervain Hummingbird",
        "scientificName": "Mellisuga minima",
        "bandCode6": "MELMIN"
    },
    {
        "bandCode4": "BEEH",
        "bandCode4Conflict": true,
        "commonName": "Bee Hummingbird",
        "scientificName": "Mellisuga helenae",
        "bandCode6": "MELHEL"
    },
    {
        "bandCode4": "ANHU",
        "commonName": "Anna's Hummingbird",
        "scientificName": "Calypte anna",
        "bandCode6": "CALANN"
    },
    {
        "bandCode4": "COHU",
        "commonName": "Costa's Hummingbird",
        "scientificName": "Calypte costae",
        "bandCode6": "CALCOS"
    },
    {
        "bandCode4": "BUHU",
        "commonName": "Bumblebee Hummingbird",
        "scientificName": "Atthis heloisa",
        "bandCode6": "ATTHEL"
    },
    {
        "bandCode4": "WTHH",
        "bandCode4Conflict": true,
        "commonName": "Wine-throated Hummingbird",
        "scientificName": "Atthis ellioti",
        "bandCode6": "ATTELL"
    },
    {
        "bandCode4": "BTAH",
        "bandCode4Conflict": true,
        "commonName": "Broad-tailed Hummingbird",
        "scientificName": "Selasphorus platycercus",
        "bandCode6": "SELPLA"
    },
    {
        "bandCode4": "RUHU",
        "commonName": "Rufous Hummingbird",
        "scientificName": "Selasphorus rufus",
        "bandCode6": "SELRUF"
    },
    {
        "bandCode4": "ALHU",
        "commonName": "Allen's Hummingbird",
        "scientificName": "Selasphorus sasin",
        "bandCode6": "SELSAS"
    },
    {
        "bandCode4": "VOHU",
        "commonName": "Volcano Hummingbird",
        "scientificName": "Selasphorus flammula",
        "bandCode6": "SELFLA"
    },
    {
        "bandCode4": "GLTH",
        "bandCode4Conflict": true,
        "commonName": "Glow-throated Hummingbird",
        "scientificName": "Selasphorus ardens",
        "bandCode6": "SELARD"
    },
    {
        "bandCode4": "SCHU",
        "commonName": "Scintillant Hummingbird",
        "scientificName": "Selasphorus scintilla",
        "bandCode6": "SELSCI"
    },
    {
        "bandCode4": "CAHU",
        "commonName": "Calliope Hummingbird",
        "scientificName": "Selasphorus calliope",
        "bandCode6": "SELCAL"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "USHU",
        "commonName": "Unidentified Selasphorus Hummingbird",
        "scientificName": "Selaphorus (sp)",
        "bandCode6": "SELSPS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GCEM",
        "commonName": "Golden-crowned Emerald",
        "scientificName": "Chlorostilbon auriceps",
        "bandCode6": "CHLAUR"
    },
    {
        "bandCode4": "COEM",
        "commonName": "Cozumel Emerald",
        "scientificName": "Chlorostilbon forficatus",
        "bandCode6": "CHLFOR"
    },
    {
        "bandCode4": "CAEM",
        "commonName": "Canivet's Emerald",
        "scientificName": "Chlorostilbon canivetii",
        "bandCode6": "CHLCAV",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GAEM",
        "commonName": "Garden Emerald",
        "scientificName": "Chlorostilbon assimilis",
        "bandCode6": "CHLASS"
    },
    {
        "bandCode4": "CUEM",
        "commonName": "Cuban Emerald",
        "scientificName": "Chlorostilbon ricordii",
        "bandCode6": "CHLRIC"
    },
    {
        "bandCode4": "BREM",
        "commonName": "Brace's Emerald",
        "scientificName": "Chlorostilbon bracei",
        "bandCode6": "CHLBRA"
    },
    {
        "bandCode4": "HIEM",
        "commonName": "Hispaniolan Emerald",
        "scientificName": "Chlorostilbon swainsonii",
        "bandCode6": "CHLSWA"
    },
    {
        "bandCode4": "PREM",
        "commonName": "Puerto Rican Emerald",
        "scientificName": "Chlorostilbon maugaeus",
        "bandCode6": "CHLMAU"
    },
    {
        "bandCode4": "DUHU",
        "commonName": "Dusky Hummingbird",
        "scientificName": "Cynanthus sordidus",
        "bandCode6": "CYNSOR"
    },
    {
        "bandCode4": "BBIH",
        "bandCode4Conflict": true,
        "commonName": "Broad-billed Hummingbird",
        "scientificName": "Cynanthus latirostris",
        "bandCode6": "CYNLAT"
    },
    {
        "bandCode4": "BHHU",
        "commonName": "Blue-headed Hummingbird",
        "scientificName": "Cyanophaia bicolor",
        "bandCode6": "CYABIC"
    },
    {
        "bandCode4": "VHHU",
        "commonName": "Violet-headed Hummingbird",
        "scientificName": "Klais guimeti",
        "bandCode6": "KLAGUI"
    },
    {
        "bandCode4": "ECHU",
        "commonName": "Emerald-chinned Hummingbird",
        "scientificName": "Abeillia abeillei",
        "bandCode6": "ABEABE"
    },
    {
        "bandCode4": "ANCH",
        "bandCode4Conflict": true,
        "commonName": "Antillean Crested Hummingbird",
        "scientificName": "Orthorhyncus cristatus",
        "bandCode6": "ORTCRI"
    },
    {
        "bandCode4": "SBRH",
        "bandCode4Conflict": true,
        "commonName": "Scaly-breasted Hummingbird",
        "scientificName": "Phaeochroa cuvierii",
        "bandCode6": "PHACUV"
    },
    {
        "bandCode4": "WTSA",
        "commonName": "Wedge-tailed Sabrewing",
        "scientificName": "Campylopterus curvipennis",
        "bandCode6": "CAMCUR"
    },
    {
        "bandCode4": "LTSA",
        "commonName": "Long-tailed Sabrewing",
        "scientificName": "Campylopterus excellens",
        "bandCode6": "CAMEXC"
    },
    {
        "bandCode4": "RUSA",
        "commonName": "Rufous Sabrewing",
        "scientificName": "Campylopterus rufus",
        "bandCode6": "CAMRUS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "VISA",
        "commonName": "Violet Sabrewing",
        "scientificName": "Campylopterus hemileucurus",
        "bandCode6": "CAMHEM"
    },
    {
        "bandCode4": "STHM",
        "bandCode4Conflict": true,
        "commonName": "Stripe-tailed Hummingbird",
        "scientificName": "Eupherusa eximia",
        "bandCode6": "EUPEXI"
    },
    {
        "bandCode4": "BCAH",
        "bandCode4Conflict": true,
        "commonName": "Blue-capped Hummingbird",
        "scientificName": "Eupherusa cyanophrys",
        "bandCode6": "EUPCYP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "WTAH",
        "bandCode4Conflict": true,
        "commonName": "White-tailed Hummingbird",
        "scientificName": "Eupherusa poliocerca",
        "bandCode6": "EUPPOL"
    },
    {
        "bandCode4": "BLBH",
        "bandCode4Conflict": true,
        "commonName": "Black-bellied Hummingbird",
        "scientificName": "Eupherusa nigriventris",
        "bandCode6": "EUPNIG"
    },
    {
        "bandCode4": "WTEM",
        "commonName": "White-tailed Emerald",
        "scientificName": "Elvira chionura",
        "bandCode6": "ELVCHI"
    },
    {
        "bandCode4": "CHEM",
        "commonName": "Coppery-headed Emerald",
        "scientificName": "Elvira cupreiceps",
        "bandCode6": "ELVCUP"
    },
    {
        "bandCode4": "SNOC",
        "bandCode4Conflict": true,
        "commonName": "Snowcap",
        "scientificName": "Microchera albocoronata",
        "bandCode6": "MICALB"
    },
    {
        "bandCode4": "WVPL",
        "commonName": "White-vented Plumeleteer",
        "scientificName": "Chalybura buffonii",
        "bandCode6": "CHABUF"
    },
    {
        "bandCode4": "BTPL",
        "commonName": "Bronze-tailed Plumeleteer",
        "scientificName": "Chalybura urochrysia",
        "bandCode6": "CHAURO"
    },
    {
        "bandCode4": "MEWO",
        "commonName": "Mexican Woodnymph",
        "scientificName": "Thalurania ridgwayi",
        "bandCode6": "THARID"
    },
    {
        "bandCode4": "CRWO",
        "commonName": "Crowned Woodnymph",
        "scientificName": "Thalurania colombica",
        "bandCode6": "THACOL"
    },
    {
        "bandCode4": "WBEM",
        "commonName": "White-bellied Emerald",
        "scientificName": "Amazilia candida",
        "bandCode6": "AMACAN"
    },
    {
        "bandCode4": "HOEM",
        "commonName": "Honduran Emerald",
        "scientificName": "Amazilia luciae",
        "bandCode6": "AMALUC"
    },
    {
        "bandCode4": "BCHH",
        "bandCode4Conflict": true,
        "commonName": "Blue-chested Hummingbird",
        "scientificName": "Amazilia amabilis",
        "bandCode6": "AMAAMB",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "CHHU",
        "commonName": "Charming Hummingbird",
        "scientificName": "Amazilia decora",
        "bandCode6": "AMADEC"
    },
    {
        "bandCode4": "MANH",
        "bandCode4Conflict": true,
        "commonName": "Mangrove Hummingbird",
        "scientificName": "Amazilia boucardi",
        "bandCode6": "AMABOU"
    },
    {
        "bandCode4": "AZCH",
        "bandCode4Conflict": true,
        "commonName": "Azure-crowned Hummingbird",
        "scientificName": "Amazilia cyanocephala",
        "bandCode6": "AMACYC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BEHU",
        "commonName": "Berylline Hummingbird",
        "scientificName": "Amazilia beryllina",
        "bandCode6": "AMABER"
    },
    {
        "bandCode4": "BTLH",
        "bandCode4Conflict": true,
        "commonName": "Blue-tailed Hummingbird",
        "scientificName": "Amazilia cyanura",
        "bandCode6": "AMACYR",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SVHU",
        "commonName": "Steely-vented Hummingbird",
        "scientificName": "Amazilia saucerrottei",
        "bandCode6": "AMASAU"
    },
    {
        "bandCode4": "SBEH",
        "bandCode4Conflict": true,
        "commonName": "Snowy-bellied Hummingbird",
        "scientificName": "Amazilia edward",
        "bandCode6": "AMAEDW"
    },
    {
        "bandCode4": "RTAH",
        "bandCode4Conflict": true,
        "commonName": "Rufous-tailed Hummingbird",
        "scientificName": "Amazilia tzacatl",
        "bandCode6": "AMATZA"
    },
    {
        "bandCode4": "BBEH",
        "bandCode4Conflict": true,
        "commonName": "Buff-bellied Hummingbird",
        "scientificName": "Amazilia yucatanensis",
        "bandCode6": "AMAYUC"
    },
    {
        "bandCode4": "CIHU",
        "commonName": "Cinnamon Hummingbird",
        "scientificName": "Amazilia rutila",
        "bandCode6": "AMARUT"
    },
    {
        "bandCode4": "VCHU",
        "commonName": "Violet-crowned Hummingbird",
        "scientificName": "Amazilia violiceps",
        "bandCode6": "AMAVIO"
    },
    {
        "bandCode4": "GFHU",
        "commonName": "Green-fronted Hummingbird",
        "scientificName": "Amazilia viridifrons",
        "bandCode6": "AMAVIF",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "STRM",
        "bandCode4Conflict": true,
        "commonName": "Streamertail",
        "scientificName": "Trochilus polytmus",
        "bandCode6": "TROPOL"
    },
    {
        "bandCode4": "PIHU",
        "commonName": "Pirre Hummingbird",
        "scientificName": "Goethalsia bella",
        "bandCode6": "GOEBEL"
    },
    {
        "bandCode4": "VCAH",
        "bandCode4Conflict": true,
        "commonName": "Violet-capped Hummingbird",
        "scientificName": "Goldmania violiceps",
        "bandCode6": "GOLVIO"
    },
    {
        "bandCode4": "SHTH",
        "bandCode4Conflict": true,
        "commonName": "Sapphire-throated Hummingbird",
        "scientificName": "Lepidopyga coeruleogularis",
        "bandCode6": "LEPCOE"
    },
    {
        "bandCode4": "VBHU",
        "commonName": "Violet-bellied Hummingbird",
        "scientificName": "Damophila julie",
        "bandCode6": "DAMJUL"
    },
    {
        "bandCode4": "HUSA",
        "bandCode4Conflict": true,
        "commonName": "Humboldt's Sapphire",
        "scientificName": "Hylocharis humboldtii",
        "bandCode6": "HYLHUM"
    },
    {
        "bandCode4": "BTRG",
        "bandCode4Conflict": true,
        "commonName": "Blue-throated Goldentail",
        "scientificName": "Hylocharis eliciae",
        "bandCode6": "HYLELI"
    },
    {
        "bandCode4": "WEHU",
        "commonName": "White-eared Hummingbird",
        "scientificName": "Hylocharis leucotis",
        "bandCode6": "HYLLEU"
    },
    {
        "bandCode4": "XAHU",
        "commonName": "Xantus's Hummingbird",
        "scientificName": "Hylocharis xantusii",
        "bandCode6": "HYLXAN"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNHU",
        "commonName": "Unidentified Hummingbird",
        "scientificName": "Trochilidae (gen, sp)",
        "bandCode6": "TRCGSP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "CUTR",
        "commonName": "Cuban Trogon",
        "scientificName": "Priotelus temnurus",
        "bandCode6": "PRITEM"
    },
    {
        "bandCode4": "HITR",
        "commonName": "Hispaniolan Trogon",
        "scientificName": "Priotelus roseigaster",
        "bandCode6": "PRIROS"
    },
    {
        "bandCode4": "LTTR",
        "commonName": "Lattice-tailed Trogon",
        "scientificName": "Trogon clathratus",
        "bandCode6": "TROCLA"
    },
    {
        "bandCode4": "STTR",
        "commonName": "Slaty-tailed Trogon",
        "scientificName": "Trogon massena",
        "bandCode6": "TROMAS"
    },
    {
        "bandCode4": "BTAT",
        "bandCode4Conflict": true,
        "commonName": "Black-tailed Trogon",
        "scientificName": "Trogon melanurus",
        "bandCode6": "TROMER",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BHTR",
        "commonName": "Black-headed Trogon",
        "scientificName": "Trogon melanocephalus",
        "bandCode6": "TROMEC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "CITR",
        "commonName": "Citreoline Trogon",
        "scientificName": "Trogon citreolus",
        "bandCode6": "TROCIT"
    },
    {
        "bandCode4": "WTAT",
        "bandCode4Conflict": true,
        "commonName": "White-tailed Trogon",
        "scientificName": "Trogon chionurus",
        "bandCode6": "TROCHI"
    },
    {
        "bandCode4": "BATR",
        "commonName": "Baird's Trogon",
        "scientificName": "Trogon bairdii",
        "bandCode6": "TROBAI"
    },
    {
        "bandCode4": "GATR",
        "commonName": "Gartered Trogon",
        "scientificName": "Trogon caligatus",
        "bandCode6": "TROCAL"
    },
    {
        "bandCode4": "BTHT",
        "bandCode4Conflict": true,
        "commonName": "Black-throated Trogon",
        "scientificName": "Trogon rufus",
        "bandCode6": "TRORUS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "ELTR",
        "commonName": "Elegant Trogon",
        "scientificName": "Trogon elegans",
        "bandCode6": "TROELE"
    },
    {
        "bandCode4": "MOTR",
        "commonName": "Mountain Trogon",
        "scientificName": "Trogon mexicanus",
        "bandCode6": "TROMEX"
    },
    {
        "bandCode4": "COTR",
        "commonName": "Collared Trogon",
        "scientificName": "Trogon collaris",
        "bandCode6": "TROCOL"
    },
    {
        "bandCode4": "OBTR",
        "commonName": "Orange-bellied Trogon",
        "scientificName": "Trogon aurantiiventris",
        "bandCode6": "TROAUR"
    },
    {
        "bandCode4": "EAQU",
        "commonName": "Eared Quetzal",
        "scientificName": "Euptilotis neoxenus",
        "bandCode6": "EUPNEO"
    },
    {
        "bandCode4": "GHQU",
        "commonName": "Golden-headed Quetzal",
        "scientificName": "Pharomachrus auriceps",
        "bandCode6": "PHAAUC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "REQU",
        "commonName": "Resplendent Quetzal",
        "scientificName": "Pharomachrus mocinno",
        "bandCode6": "PHAMOC"
    },
    {
        "bandCode4": "EHOO",
        "bandCode4Conflict": true,
        "commonName": "Eurasian Hoopoe",
        "scientificName": "Upupa epops",
        "bandCode6": "UPUEPO"
    },
    {
        "bandCode4": "CUTO",
        "commonName": "Cuban Tody",
        "scientificName": "Todus multicolor",
        "bandCode6": "TODMUL"
    },
    {
        "bandCode4": "BBTO",
        "commonName": "Broad-billed Tody",
        "scientificName": "Todus subulatus",
        "bandCode6": "TODSUB"
    },
    {
        "bandCode4": "NBTO",
        "commonName": "Narrow-billed Tody",
        "scientificName": "Todus angustirostris",
        "bandCode6": "TODANG"
    },
    {
        "bandCode4": "JATO",
        "commonName": "Jamaican Tody",
        "scientificName": "Todus todus",
        "bandCode6": "TODTOD"
    },
    {
        "bandCode4": "PRTO",
        "commonName": "Puerto Rican Tody",
        "scientificName": "Todus mexicanus",
        "bandCode6": "TODMEX"
    },
    {
        "bandCode4": "TOMO",
        "commonName": "Tody Motmot",
        "scientificName": "Hylomanes momotula",
        "bandCode6": "HYLMOM"
    },
    {
        "bandCode4": "BTMO",
        "commonName": "Blue-throated Motmot",
        "scientificName": "Aspatha gularis",
        "bandCode6": "ASPGUL"
    },
    {
        "bandCode4": "RCMO",
        "commonName": "Russet-crowned Motmot",
        "scientificName": "Momotus mexicanus",
        "bandCode6": "MOMMEX"
    },
    {
        "bandCode4": "BCMO",
        "commonName": "Blue-crowned Motmot",
        "scientificName": "Momotus momota",
        "bandCode6": "MOMMOM"
    },
    {
        "bandCode4": "RMOT",
        "bandCode4Conflict": true,
        "commonName": "Rufous Motmot",
        "scientificName": "Baryphthengus martii",
        "bandCode6": "BARMAR"
    },
    {
        "bandCode4": "KBMO",
        "commonName": "Keel-billed Motmot",
        "scientificName": "Electron carinatum",
        "bandCode6": "ELECAR"
    },
    {
        "bandCode4": "BBMO",
        "commonName": "Broad-billed Motmot",
        "scientificName": "Electron platyrhynchum",
        "bandCode6": "ELEPLA"
    },
    {
        "bandCode4": "TBMO",
        "commonName": "Turquoise-browed Motmot",
        "scientificName": "Eumomota superciliosa",
        "bandCode6": "EUMSUP"
    },
    {
        "bandCode4": "RIKI",
        "commonName": "Ringed Kingfisher",
        "scientificName": "Megaceryle torquata",
        "bandCode6": "MEGTOR"
    },
    {
        "bandCode4": "BEKI",
        "commonName": "Belted Kingfisher",
        "scientificName": "Megaceryle alcyon",
        "bandCode6": "MEGALC"
    },
    {
        "bandCode4": "AMKI",
        "commonName": "Amazon Kingfisher",
        "scientificName": "Chloroceryle amazona",
        "bandCode6": "CHLAMA"
    },
    {
        "bandCode4": "GKIN",
        "bandCode4Conflict": true,
        "commonName": "Green Kingfisher",
        "scientificName": "Chloroceryle americana",
        "bandCode6": "CHLAME"
    },
    {
        "bandCode4": "GARK",
        "commonName": "Green-and-rufous Kingfisher",
        "scientificName": "Chloroceryle inda",
        "bandCode6": "CHLIND"
    },
    {
        "bandCode4": "APKI",
        "commonName": "American Pygmy Kingfisher",
        "scientificName": "Chloroceryle aenea",
        "bandCode6": "CHLAEN"
    },
    {
        "bandCode4": "BAPU",
        "commonName": "Barred Puffbird",
        "scientificName": "Nystalus radiatus",
        "bandCode6": "NYSRAD"
    },
    {
        "bandCode4": "WNPU",
        "commonName": "White-necked Puffbird",
        "scientificName": "Notharchus hyperrhynchus",
        "bandCode6": "NOTHYP"
    },
    {
        "bandCode4": "BBPU",
        "commonName": "Black-breasted Puffbird",
        "scientificName": "Notharchus pectoralis",
        "bandCode6": "NOTPEC"
    },
    {
        "bandCode4": "PIPU",
        "commonName": "Pied Puffbird",
        "scientificName": "Notharchus tectus",
        "bandCode6": "NOTTEC"
    },
    {
        "bandCode4": "WWPU",
        "commonName": "White-whiskered Puffbird",
        "scientificName": "Malacoptila panamensis",
        "bandCode6": "MALPAN"
    },
    {
        "bandCode4": "LAMO",
        "commonName": "Lanceolated Monklet",
        "scientificName": "Micromonacha lanceolata",
        "bandCode6": "MICLAN"
    },
    {
        "bandCode4": "GCNU",
        "commonName": "Gray-cheeked Nunlet",
        "scientificName": "Nonnula frontalis",
        "bandCode6": "NONFRO"
    },
    {
        "bandCode4": "WFNU",
        "commonName": "White-fronted Nunbird",
        "scientificName": "Monasa morphoeus",
        "bandCode6": "MONMOR"
    },
    {
        "bandCode4": "DBJA",
        "commonName": "Dusky-backed Jacamar",
        "scientificName": "Brachygalba salmoni",
        "bandCode6": "BRASAL"
    },
    {
        "bandCode4": "RTJA",
        "commonName": "Rufous-tailed Jacamar",
        "scientificName": "Galbula ruficauda",
        "bandCode6": "GALRUF"
    },
    {
        "bandCode4": "GJAC",
        "bandCode4Conflict": true,
        "commonName": "Great Jacamar",
        "scientificName": "Jacamerops aureus",
        "bandCode6": "JACAUR"
    },
    {
        "bandCode4": "SCBA",
        "commonName": "Spot-crowned Barbet",
        "scientificName": "Capito maculicoronatus",
        "bandCode6": "CAPMAC"
    },
    {
        "bandCode4": "RHBA",
        "commonName": "Red-headed Barbet",
        "scientificName": "Eubucco bourcierii",
        "bandCode6": "EUBBOU"
    },
    {
        "bandCode4": "PBBA",
        "commonName": "Prong-billed Barbet",
        "scientificName": "Semnornis frantzii",
        "bandCode6": "SEMFRA"
    },
    {
        "bandCode4": "EMTO",
        "commonName": "Emerald Toucanet",
        "scientificName": "Aulacorhynchus prasinus",
        "bandCode6": "AULPRA"
    },
    {
        "bandCode4": "COAR",
        "commonName": "Collared Aracari",
        "scientificName": "Pteroglossus torquatus",
        "bandCode6": "PTETOR"
    },
    {
        "bandCode4": "FBAR",
        "commonName": "Fiery-billed Aracari",
        "scientificName": "Pteroglossus frantzii",
        "bandCode6": "PTEFRA"
    },
    {
        "bandCode4": "YETO",
        "commonName": "Yellow-eared Toucanet",
        "scientificName": "Selenidera spectabilis",
        "bandCode6": "SELSPT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "KBTO",
        "commonName": "Keel-billed Toucan",
        "scientificName": "Ramphastos sulfuratus",
        "bandCode6": "RAMSUL"
    },
    {
        "bandCode4": "BMTO",
        "commonName": "Black-mandibled Toucan",
        "scientificName": "Ramphastos ambiguus",
        "bandCode6": "RAMAMB"
    },
    {
        "bandCode4": "EUWR",
        "commonName": "Eurasian Wryneck",
        "scientificName": "Jynx torquilla",
        "bandCode6": "JYNTOR"
    },
    {
        "bandCode4": "OLPI",
        "commonName": "Olivaceous Piculet",
        "scientificName": "Picumnus olivaceus",
        "bandCode6": "PICOLI"
    },
    {
        "bandCode4": "ANPI",
        "commonName": "Antillean Piculet",
        "scientificName": "Nesoctites micromegas",
        "bandCode6": "NESMIC"
    },
    {
        "bandCode4": "LEWO",
        "commonName": "Lewis's Woodpecker",
        "scientificName": "Melanerpes lewis",
        "bandCode6": "MELLEW"
    },
    {
        "bandCode4": "GUWO",
        "commonName": "Guadeloupe Woodpecker",
        "scientificName": "Melanerpes herminieri",
        "bandCode6": "MELHER"
    },
    {
        "bandCode4": "PRWO",
        "commonName": "Puerto Rican Woodpecker",
        "scientificName": "Melanerpes portoricensis",
        "bandCode6": "MELPOR"
    },
    {
        "bandCode4": "RHWO",
        "commonName": "Red-headed Woodpecker",
        "scientificName": "Melanerpes erythrocephalus",
        "bandCode6": "MELERY"
    },
    {
        "bandCode4": "ACWO",
        "commonName": "Acorn Woodpecker",
        "scientificName": "Melanerpes formicivorus",
        "bandCode6": "MELFOR"
    },
    {
        "bandCode4": "GNWO",
        "commonName": "Golden-naped Woodpecker",
        "scientificName": "Melanerpes chrysauchen",
        "bandCode6": "MELCHC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BCWO",
        "commonName": "Black-cheeked Woodpecker",
        "scientificName": "Melanerpes pucherani",
        "bandCode6": "MELPUC"
    },
    {
        "bandCode4": "HIWO",
        "commonName": "Hispaniolan Woodpecker",
        "scientificName": "Melanerpes striatus",
        "bandCode6": "MELSTR"
    },
    {
        "bandCode4": "JAWO",
        "commonName": "Jamaican Woodpecker",
        "scientificName": "Melanerpes radiolatus",
        "bandCode6": "MELRAD"
    },
    {
        "bandCode4": "GCHW",
        "bandCode4Conflict": true,
        "commonName": "Golden-cheeked Woodpecker",
        "scientificName": "Melanerpes chrysogenys",
        "bandCode6": "MELCHG",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GBWO",
        "commonName": "Gray-breasted Woodpecker",
        "scientificName": "Melanerpes hypopolius",
        "bandCode6": "MELHYI",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "YUWO",
        "commonName": "Yucatan Woodpecker",
        "scientificName": "Melanerpes pygmaeus",
        "bandCode6": "MELPYG"
    },
    {
        "bandCode4": "RCRW",
        "bandCode4Conflict": true,
        "commonName": "Red-crowned Woodpecker",
        "scientificName": "Melanerpes rubricapillus",
        "bandCode6": "MELRUB"
    },
    {
        "bandCode4": "GIWO",
        "commonName": "Gila Woodpecker",
        "scientificName": "Melanerpes uropygialis",
        "bandCode6": "MELURO"
    },
    {
        "bandCode4": "HOWO",
        "commonName": "Hoffmann's Woodpecker",
        "scientificName": "Melanerpes hoffmannii",
        "bandCode6": "MELHOF"
    },
    {
        "bandCode4": "GFWO",
        "commonName": "Golden-fronted Woodpecker",
        "scientificName": "Melanerpes aurifrons",
        "bandCode6": "MELAUR"
    },
    {
        "bandCode4": "RBWO",
        "commonName": "Red-bellied Woodpecker",
        "scientificName": "Melanerpes carolinus",
        "bandCode6": "MELCAR"
    },
    {
        "bandCode4": "WIWO",
        "commonName": "West Indian Woodpecker",
        "scientificName": "Melanerpes superciliaris",
        "bandCode6": "MELSUP"
    },
    {
        "bandCode4": "WISA",
        "commonName": "Williamson's Sapsucker",
        "scientificName": "Sphyrapicus thyroideus",
        "bandCode6": "SPHTHY"
    },
    {
        "bandCode4": "YBSA",
        "commonName": "Yellow-bellied Sapsucker",
        "scientificName": "Sphyrapicus varius",
        "bandCode6": "SPHVAR"
    },
    {
        "bandCode4": "RNSA",
        "commonName": "Red-naped Sapsucker",
        "scientificName": "Sphyrapicus nuchalis",
        "bandCode6": "SPHNUC"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "RRSH",
        "commonName": "Red-naped X Red-breasted Saps. Hybrid",
        "scientificName": "Sphyrapicus nuchalis x ruber",
        "bandCode6": "SPHNUR"
    },
    {
        "bandCode4": "RBSA",
        "commonName": "Red-breasted Sapsucker",
        "scientificName": "Sphyrapicus ruber",
        "bandCode6": "SPHRUB"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNSA",
        "commonName": "Unidentified Sapsucker",
        "scientificName": "Sphyrapicus (sp)",
        "bandCode6": "SPHSPE"
    },
    {
        "bandCode4": "CGWO",
        "commonName": "Cuban Green Woodpecker",
        "scientificName": "Xiphidiopicus percussus",
        "bandCode6": "XIPPER"
    },
    {
        "bandCode4": "GSWO",
        "commonName": "Great Spotted Woodpecker",
        "scientificName": "Dendrocopos major",
        "bandCode6": "DENMAJ"
    },
    {
        "bandCode4": "LBWO",
        "commonName": "Ladder-backed Woodpecker",
        "scientificName": "Picoides scalaris",
        "bandCode6": "PICSCA"
    },
    {
        "bandCode4": "NUWO",
        "commonName": "Nuttall's Woodpecker",
        "scientificName": "Picoides nuttallii",
        "bandCode6": "PIDNUT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "DOWO",
        "commonName": "Downy Woodpecker",
        "scientificName": "Picoides pubescens",
        "bandCode6": "PICPUB"
    },
    {
        "bandCode4": "SMBW",
        "bandCode4Conflict": true,
        "commonName": "Smoky-brown Woodpecker",
        "scientificName": "Picoides fumigatus",
        "bandCode6": "PICFUM"
    },
    {
        "bandCode4": "HAWO",
        "commonName": "Hairy Woodpecker",
        "scientificName": "Picoides villosus",
        "bandCode6": "PICVIL"
    },
    {
        "bandCode4": "ARWO",
        "commonName": "Arizona Woodpecker",
        "scientificName": "Picoides arizonae",
        "bandCode6": "PICARI"
    },
    {
        "bandCode4": "STCW",
        "bandCode4Conflict": true,
        "commonName": "Strickland's Woodpecker",
        "scientificName": "Picoides stricklandi",
        "bandCode6": "PICSTR"
    },
    {
        "bandCode4": "RCWO",
        "commonName": "Red-cockaded Woodpecker",
        "scientificName": "Picoides borealis",
        "bandCode6": "PICBOR"
    },
    {
        "bandCode4": "WHWO",
        "commonName": "White-headed Woodpecker",
        "scientificName": "Picoides albolarvatus",
        "bandCode6": "PICALB"
    },
    {
        "bandCode4": "ATTW",
        "commonName": "American Three-toed Woodpecker",
        "scientificName": "Picoides dorsalis",
        "bandCode6": "PICDOR"
    },
    {
        "bandCode4": "BBWO",
        "commonName": "Black-backed Woodpecker",
        "scientificName": "Picoides arcticus",
        "bandCode6": "PICARC"
    },
    {
        "bandCode4": "RRWO",
        "commonName": "Red-rumped Woodpecker",
        "scientificName": "Veniliornis kirkii",
        "bandCode6": "VENKIR"
    },
    {
        "bandCode4": "RWWO",
        "commonName": "Rufous-winged Woodpecker",
        "scientificName": "Piculus simplex",
        "bandCode6": "PICSIM"
    },
    {
        "bandCode4": "SCHW",
        "bandCode4Conflict": true,
        "commonName": "Stripe-cheeked Woodpecker",
        "scientificName": "Piculus callopterus",
        "bandCode6": "PICCAL"
    },
    {
        "bandCode4": "GGWO",
        "commonName": "Golden-green Woodpecker",
        "scientificName": "Piculus chrysochloros",
        "bandCode6": "PICCHR"
    },
    {
        "bandCode4": "GOWO",
        "commonName": "Golden-olive Woodpecker",
        "scientificName": "Colaptes rubiginosus",
        "bandCode6": "COLRUB"
    },
    {
        "bandCode4": "GRCW",
        "bandCode4Conflict": true,
        "commonName": "Gray-crowned Woodpecker",
        "scientificName": "Colaptes auricularis",
        "bandCode6": "COLAUC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SBWP",
        "bandCode4Conflict": true,
        "commonName": "Spot-breasted Woodpecker",
        "scientificName": "Colaptes punctigula",
        "bandCode6": "COLPUN"
    },
    {
        "bandCode4": "NOFL",
        "commonName": "Northern Flicker",
        "scientificName": "Colaptes auratus",
        "bandCode6": "COLAUT",
        "bandCode6Conflict": true
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "YSFL",
        "commonName": "Yellow-shafted Flicker",
        "scientificName": "Colaptes a. auratus",
        "bandCode6": "COLAAU"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "NFIN",
        "commonName": "Northern Flicker Intergrade",
        "scientificName": "Colaptes a.auratus x cafer",
        "bandCode6": "COLAAC"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "RSFL",
        "commonName": "Red-shafted Flicker",
        "scientificName": "Colaptes a. cafer",
        "bandCode6": "COLACA"
    },
    {
        "bandCode4": "GIFL",
        "commonName": "Gilded Flicker",
        "scientificName": "Colaptes chrysoides",
        "bandCode6": "COLCHR"
    },
    {
        "bandCode4": "FEFL",
        "commonName": "Fernandina's Flicker",
        "scientificName": "Colaptes fernandinae",
        "bandCode6": "COLFER"
    },
    {
        "bandCode4": "CIWO",
        "commonName": "Cinnamon Woodpecker",
        "scientificName": "Celeus loricatus",
        "bandCode6": "CELLOR"
    },
    {
        "bandCode4": "CCOW",
        "bandCode4Conflict": true,
        "commonName": "Chestnut-colored Woodpecker",
        "scientificName": "Celeus castaneus",
        "bandCode6": "CELCAS"
    },
    {
        "bandCode4": "LIWO",
        "commonName": "Lineated Woodpecker",
        "scientificName": "Dryocopus lineatus",
        "bandCode6": "DRYLIN"
    },
    {
        "bandCode4": "PIWO",
        "commonName": "Pileated Woodpecker",
        "scientificName": "Dryocopus pileatus",
        "bandCode6": "DRYPIL"
    },
    {
        "bandCode4": "CBWO",
        "commonName": "Crimson-bellied Woodpecker",
        "scientificName": "Campephilus haematogaster",
        "bandCode6": "CAMHAE"
    },
    {
        "bandCode4": "CCRW",
        "bandCode4Conflict": true,
        "commonName": "Crimson-crested Woodpecker",
        "scientificName": "Campephilus melanoleucos",
        "bandCode6": "CAMMEL"
    },
    {
        "bandCode4": "PBIW",
        "bandCode4Conflict": true,
        "commonName": "Pale-billed Woodpecker",
        "scientificName": "Campephilus guatemalensis",
        "bandCode6": "CAMGUA"
    },
    {
        "bandCode4": "IBWO",
        "commonName": "Ivory-billed Woodpecker",
        "scientificName": "Campephilus principalis",
        "bandCode6": "CAMPRI"
    },
    {
        "bandCode4": "IMWO",
        "commonName": "Imperial Woodpecker",
        "scientificName": "Campephilus imperialis",
        "bandCode6": "CAMIMP"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNWO",
        "commonName": "Unidentified Woodpecker",
        "scientificName": "Picadae (gen, sp)",
        "bandCode6": "PICGSP"
    },
    {
        "bandCode4": "BAFF",
        "commonName": "Barred Forest-Falcon",
        "scientificName": "Micrastur ruficollis",
        "bandCode6": "MICRUF"
    },
    {
        "bandCode4": "SBFF",
        "commonName": "Slaty-backed Forest-Falcon",
        "scientificName": "Micrastur mirandollei",
        "bandCode6": "MICMIR"
    },
    {
        "bandCode4": "COFF",
        "commonName": "Collared Forest-Falcon",
        "scientificName": "Micrastur semitorquatus",
        "bandCode6": "MICSEM"
    },
    {
        "bandCode4": "RTCA",
        "commonName": "Red-throated Caracara",
        "scientificName": "Ibycter americanus",
        "bandCode6": "IBYAME"
    },
    {
        "bandCode4": "CRCA",
        "commonName": "Crested Caracara",
        "scientificName": "Caracara cheriway",
        "bandCode6": "CARCHE"
    },
    {
        "bandCode4": "GUCA",
        "commonName": "Guadalupe Caracara",
        "scientificName": "Caracara lutosa",
        "bandCode6": "CARLUT"
    },
    {
        "bandCode4": "YHCA",
        "commonName": "Yellow-headed Caracara",
        "scientificName": "Milvago chimachima",
        "bandCode6": "MILCHI"
    },
    {
        "bandCode4": "LAFA",
        "commonName": "Laughing Falcon",
        "scientificName": "Herpetotheres cachinnans",
        "bandCode6": "HERCAC"
    },
    {
        "bandCode4": "EUKE",
        "commonName": "Eurasian Kestrel",
        "scientificName": "Falco tinnunculus",
        "bandCode6": "FALTIN"
    },
    {
        "bandCode4": "AMKE",
        "commonName": "American Kestrel",
        "scientificName": "Falco sparverius",
        "bandCode6": "FALSPA"
    },
    {
        "bandCode4": "RFFA",
        "commonName": "Red-footed Falcon",
        "scientificName": "Falco vespertinus",
        "bandCode6": "FALVES"
    },
    {
        "bandCode4": "MERL",
        "commonName": "Merlin",
        "scientificName": "Falco columbarius",
        "bandCode6": "FALCOL"
    },
    {
        "bandCode4": "EHOB",
        "bandCode4Conflict": true,
        "commonName": "Eurasian Hobby",
        "scientificName": "Falco subbuteo",
        "bandCode6": "FALSUB"
    },
    {
        "bandCode4": "APFA",
        "commonName": "Aplomado Falcon",
        "scientificName": "Falco femoralis",
        "bandCode6": "FALFEM"
    },
    {
        "bandCode4": "BAFA",
        "commonName": "Bat Falcon",
        "scientificName": "Falco rufigularis",
        "bandCode6": "FALRUF"
    },
    {
        "bandCode4": "OBFA",
        "commonName": "Orange-breasted Falcon",
        "scientificName": "Falco deiroleucus",
        "bandCode6": "FALDEI"
    },
    {
        "bandCode4": "GYRF",
        "commonName": "Gyrfalcon",
        "scientificName": "Falco rusticolus",
        "bandCode6": "FALRUS"
    },
    {
        "bandCode4": "PEFA",
        "commonName": "Peregrine Falcon",
        "scientificName": "Falco peregrinus",
        "bandCode6": "FALPER"
    },
    {
        "bandCode4": "PRFA",
        "commonName": "Prairie Falcon",
        "scientificName": "Falco mexicanus",
        "bandCode6": "FALMEX"
    },
    {
        "bandCode4": "BUDG",
        "commonName": "Budgerigar",
        "scientificName": "Melopsittacus undulatus",
        "bandCode6": "MELUND"
    },
    {
        "bandCode4": "RRPA",
        "commonName": "Rose-ringed Parakeet",
        "scientificName": "Psittacula krameri",
        "bandCode6": "PSIKRA"
    },
    {
        "bandCode4": "RFLO",
        "commonName": "Rosy-faced Lovebird",
        "scientificName": "Agapornis roseicollis",
        "bandCode6": "AGAROS"
    },
    {
        "bandCode4": "PAIP",
        "bandCode4Conflict": true,
        "commonName": "Painted Parakeet",
        "scientificName": "Pyrrhura picta",
        "bandCode6": "PYRPIC"
    },
    {
        "bandCode4": "SWPA",
        "commonName": "Sulphur-winged Parakeet",
        "scientificName": "Pyrrhura hoffmanni",
        "bandCode6": "PYRHOF"
    },
    {
        "bandCode4": "MOPA",
        "commonName": "Monk Parakeet",
        "scientificName": "Myiopsitta monachus",
        "bandCode6": "MYIMON"
    },
    {
        "bandCode4": "CAPA",
        "commonName": "Carolina Parakeet",
        "scientificName": "Conuropsis carolinensis",
        "bandCode6": "CONCAL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "OTPA",
        "commonName": "Olive-throated Parakeet",
        "scientificName": "Eupsittula nana",
        "bandCode6": "EUPNAN"
    },
    {
        "bandCode4": "OFPA",
        "commonName": "Orange-fronted Parakeet",
        "scientificName": "Eupsittula canicularis",
        "bandCode6": "EUPCAN"
    },
    {
        "bandCode4": "BTPA",
        "commonName": "Brown-throated Parakeet",
        "scientificName": "Eupsittula pertinax",
        "bandCode6": "EUPPER"
    },
    {
        "bandCode4": "NAPA",
        "commonName": "Nanday Parakeet",
        "scientificName": "Aratinga nenday",
        "bandCode6": "NANNEN"
    },
    {
        "bandCode4": "CFMA",
        "commonName": "Chestnut-fronted Macaw",
        "scientificName": "Ara severus",
        "bandCode6": "ARASEV"
    },
    {
        "bandCode4": "MIMA",
        "commonName": "Military Macaw",
        "scientificName": "Ara militaris",
        "bandCode6": "ARAMIL"
    },
    {
        "bandCode4": "GGMA",
        "commonName": "Great Green Macaw",
        "scientificName": "Ara ambiguus",
        "bandCode6": "ARAAMB"
    },
    {
        "bandCode4": "RAGM",
        "commonName": "Red-and-green Macaw",
        "scientificName": "Ara chloropterus",
        "bandCode6": "ARACHL"
    },
    {
        "bandCode4": "SCMA",
        "commonName": "Scarlet Macaw",
        "scientificName": "Ara macao",
        "bandCode6": "ARAMAC"
    },
    {
        "bandCode4": "CUBM",
        "bandCode4Conflict": true,
        "commonName": "Cuban Macaw",
        "scientificName": "Ara tricolor",
        "bandCode6": "ARATRI"
    },
    {
        "bandCode4": "BAYM",
        "commonName": "Blue-and-yellow Macaw",
        "scientificName": "Ara ararauna",
        "bandCode6": "ARAARA"
    },
    {
        "bandCode4": "GREP",
        "bandCode4Conflict": true,
        "commonName": "Green Parakeet",
        "scientificName": "Psittacara holochlora",
        "bandCode6": "PSIHOL"
    },
    {
        "bandCode4": "PACP",
        "bandCode4Conflict": true,
        "commonName": "Pacific Parakeet",
        "scientificName": "Psittacara strenua",
        "bandCode6": "PSISTR"
    },
    {
        "bandCode4": "CFPA",
        "commonName": "Crimson-fronted Parakeet",
        "scientificName": "Psittacara finschi",
        "bandCode6": "PSIFIN"
    },
    {
        "bandCode4": "CPAK",
        "bandCode4Conflict": true,
        "commonName": "Cuban Parakeet",
        "scientificName": "Psittacara euops",
        "bandCode6": "PSIEUO"
    },
    {
        "bandCode4": "HPAK",
        "bandCode4Conflict": true,
        "commonName": "Hispaniolan Parakeet",
        "scientificName": "Psittacara chloroptera",
        "bandCode6": "PSICHL"
    },
    {
        "bandCode4": "MIPA",
        "commonName": "Mitred Parakeet",
        "scientificName": "Psittacara mitrata",
        "bandCode6": "PSIMIT"
    },
    {
        "bandCode4": "TBPA",
        "commonName": "Thick-billed Parrot",
        "scientificName": "Rhynchopsitta pachyrhyncha",
        "bandCode6": "RHYPAC"
    },
    {
        "bandCode4": "MFPA",
        "commonName": "Maroon-fronted Parrot",
        "scientificName": "Rhynchopsitta terrisi",
        "bandCode6": "RHYTER"
    },
    {
        "bandCode4": "BAPA",
        "commonName": "Barred Parakeet",
        "scientificName": "Bolborhynchus lineola",
        "bandCode6": "BOLLIN"
    },
    {
        "bandCode4": "GRUP",
        "bandCode4Conflict": true,
        "commonName": "Green-rumped Parrotlet",
        "scientificName": "Forpus passerinus",
        "bandCode6": "FORPAS"
    },
    {
        "bandCode4": "MEXP",
        "bandCode4Conflict": true,
        "commonName": "Mexican Parrotlet",
        "scientificName": "Forpus cyanopygius",
        "bandCode6": "FORCYA"
    },
    {
        "bandCode4": "SPPA",
        "commonName": "Spectacled Parrotlet",
        "scientificName": "Forpus conspicillatus",
        "bandCode6": "FORCON"
    },
    {
        "bandCode4": "OCPA",
        "commonName": "Orange-chinned Parakeet",
        "scientificName": "Brotogeris jugularis",
        "bandCode6": "BROJUG"
    },
    {
        "bandCode4": "WWPA",
        "commonName": "White-winged Parakeet",
        "scientificName": "Brotogeris versicolurus",
        "bandCode6": "BROVER"
    },
    {
        "bandCode4": "RFPA",
        "commonName": "Red-fronted Parrotlet",
        "scientificName": "Touit costaricensis",
        "bandCode6": "TOUCOS"
    },
    {
        "bandCode4": "BFPA",
        "commonName": "Blue-fronted Parrotlet",
        "scientificName": "Touit dilectissimus",
        "bandCode6": "TOUDIL"
    },
    {
        "bandCode4": "BHOP",
        "bandCode4Conflict": true,
        "commonName": "Brown-hooded Parrot",
        "scientificName": "Pyrilia haematotis",
        "bandCode6": "PYRHAE"
    },
    {
        "bandCode4": "SHPA",
        "commonName": "Saffron-headed Parrot",
        "scientificName": "Pyrilia pyrilia",
        "bandCode6": "PYRPYI",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BHEP",
        "bandCode4Conflict": true,
        "commonName": "Blue-headed Parrot",
        "scientificName": "Pionus menstruus",
        "bandCode6": "PIOMEN"
    },
    {
        "bandCode4": "WCPA",
        "commonName": "White-crowned Parrot",
        "scientificName": "Pionus senilis",
        "bandCode6": "PIOSEN"
    },
    {
        "bandCode4": "WFPA",
        "commonName": "White-fronted Parrot",
        "scientificName": "Amazona albifrons",
        "bandCode6": "AMAALB"
    },
    {
        "bandCode4": "YLPA",
        "commonName": "Yellow-lored Parrot",
        "scientificName": "Amazona xantholora",
        "bandCode6": "AMAXAN"
    },
    {
        "bandCode4": "CPAT",
        "bandCode4Conflict": true,
        "commonName": "Cuban Parrot",
        "scientificName": "Amazona leucocephala",
        "bandCode6": "AMALEU"
    },
    {
        "bandCode4": "YBPA",
        "commonName": "Yellow-billed Parrot",
        "scientificName": "Amazona collaria",
        "bandCode6": "AMACOL"
    },
    {
        "bandCode4": "HPAT",
        "bandCode4Conflict": true,
        "commonName": "Hispaniolan Parrot",
        "scientificName": "Amazona ventralis",
        "bandCode6": "AMAVEN"
    },
    {
        "bandCode4": "PRPA",
        "commonName": "Puerto Rican Parrot",
        "scientificName": "Amazona vittata",
        "bandCode6": "AMAVIT"
    },
    {
        "bandCode4": "BBPA",
        "commonName": "Black-billed Parrot",
        "scientificName": "Amazona agilis",
        "bandCode6": "AMAAGI"
    },
    {
        "bandCode4": "RCPA",
        "commonName": "Red-crowned Parrot",
        "scientificName": "Amazona viridigenalis",
        "bandCode6": "AMAVIG",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "LCPA",
        "commonName": "Lilac-crowned Parrot",
        "scientificName": "Amazona finschi",
        "bandCode6": "AMAFIN"
    },
    {
        "bandCode4": "RLPA",
        "commonName": "Red-lored Parrot",
        "scientificName": "Amazona autumnalis",
        "bandCode6": "AMAAUT"
    },
    {
        "bandCode4": "MEAP",
        "bandCode4Conflict": true,
        "commonName": "Mealy Parrot",
        "scientificName": "Amazona farinosa",
        "bandCode6": "AMAFAR"
    },
    {
        "bandCode4": "YHPA",
        "commonName": "Yellow-headed Parrot",
        "scientificName": "Amazona oratrix",
        "bandCode6": "AMAORA"
    },
    {
        "bandCode4": "YNPA",
        "commonName": "Yellow-naped Parrot",
        "scientificName": "Amazona auropalliata",
        "bandCode6": "AMAAUR"
    },
    {
        "bandCode4": "YCPA",
        "commonName": "Yellow-crowned Parrot",
        "scientificName": "Amazona ochrocephala",
        "bandCode6": "AMAOCH"
    },
    {
        "bandCode4": "RNPA",
        "commonName": "Red-necked Parrot",
        "scientificName": "Amazona arausiaca",
        "bandCode6": "AMAARA"
    },
    {
        "bandCode4": "SLPA",
        "commonName": "St. Lucia Parrot",
        "scientificName": "Amazona versicolor",
        "bandCode6": "AMAVER"
    },
    {
        "bandCode4": "SVPA",
        "commonName": "St. Vincent Parrot",
        "scientificName": "Amazona guildingii",
        "bandCode6": "AMAGUI"
    },
    {
        "bandCode4": "IMPA",
        "commonName": "Imperial Parrot",
        "scientificName": "Amazona imperialis",
        "bandCode6": "AMAIMP"
    },
    {
        "bandCode4": "SAPA",
        "commonName": "Sapayoa",
        "scientificName": "Sapayoa aenigma",
        "bandCode6": "SAPAEN"
    },
    {
        "bandCode4": "FAAN",
        "commonName": "Fasciated Antshrike",
        "scientificName": "Cymbilaimus lineatus",
        "bandCode6": "CYMLIN"
    },
    {
        "bandCode4": "GANT",
        "bandCode4Conflict": true,
        "commonName": "Great Antshrike",
        "scientificName": "Taraba major",
        "bandCode6": "TARMAJ"
    },
    {
        "bandCode4": "BAAN",
        "commonName": "Barred Antshrike",
        "scientificName": "Thamnophilus doliatus",
        "bandCode6": "THADOL"
    },
    {
        "bandCode4": "BLAN",
        "commonName": "Black Antshrike",
        "scientificName": "Thamnophilus nigriceps",
        "bandCode6": "THANIG"
    },
    {
        "bandCode4": "BHOA",
        "bandCode4Conflict": true,
        "commonName": "Black-hooded Antshrike",
        "scientificName": "Thamnophilus bridgesi",
        "bandCode6": "THABRI"
    },
    {
        "bandCode4": "BCAS",
        "bandCode4Conflict": true,
        "commonName": "Black-crowned Antshrike",
        "scientificName": "Thamnophilus atrinucha",
        "bandCode6": "THAATR"
    },
    {
        "bandCode4": "SFAN",
        "commonName": "Spiny-faced Antshrike",
        "scientificName": "Xenornis setifrons",
        "bandCode6": "XENSET"
    },
    {
        "bandCode4": "RUAN",
        "commonName": "Russet Antshrike",
        "scientificName": "Thamnistes anabatinus",
        "bandCode6": "THAANA"
    },
    {
        "bandCode4": "PLAN",
        "commonName": "Plain Antvireo",
        "scientificName": "Dysithamnus mentalis",
        "bandCode6": "DYSMEN"
    },
    {
        "bandCode4": "STCA",
        "bandCode4Conflict": true,
        "commonName": "Streak-crowned Antvireo",
        "scientificName": "Dysithamnus striaticeps",
        "bandCode6": "DYSSTR"
    },
    {
        "bandCode4": "SPCA",
        "bandCode4Conflict": true,
        "commonName": "Spot-crowned Antvireo",
        "scientificName": "Dysithamnus puncticeps",
        "bandCode6": "DYSPUN"
    },
    {
        "bandCode4": "MOAN",
        "commonName": "Moustached Antwren",
        "scientificName": "Myrmotherula ignota",
        "bandCode6": "MYRIGN"
    },
    {
        "bandCode4": "PAAN",
        "commonName": "Pacific Antwren",
        "scientificName": "Myrmotherula pacifica",
        "bandCode6": "MYRPAC"
    },
    {
        "bandCode4": "WFLA",
        "bandCode4Conflict": true,
        "commonName": "White-flanked Antwren",
        "scientificName": "Myrmotherula axillaris",
        "bandCode6": "MYRAXI"
    },
    {
        "bandCode4": "SLAN",
        "commonName": "Slaty Antwren",
        "scientificName": "Myrmotherula schisticolor",
        "bandCode6": "MYRSCH"
    },
    {
        "bandCode4": "CTAN",
        "commonName": "Checker-throated Antwren",
        "scientificName": "Epinecrophylla fulviventris",
        "bandCode6": "EPIFUL"
    },
    {
        "bandCode4": "RWAN",
        "commonName": "Rufous-winged Antwren",
        "scientificName": "Herpsilochmus rufimarginatus",
        "bandCode6": "HERRUF"
    },
    {
        "bandCode4": "DWAN",
        "commonName": "Dot-winged Antwren",
        "scientificName": "Microrhopias quixensis",
        "bandCode6": "MICQUI"
    },
    {
        "bandCode4": "WFRA",
        "bandCode4Conflict": true,
        "commonName": "White-fringed Antwren",
        "scientificName": "Formicivora grisea",
        "bandCode6": "FORGRI"
    },
    {
        "bandCode4": "RRAN",
        "commonName": "Rufous-rumped Antwren",
        "scientificName": "Euchrepomis callinota",
        "bandCode6": "EUCCAL"
    },
    {
        "bandCode4": "DUAN",
        "commonName": "Dusky Antbird",
        "scientificName": "Cercomacra tyrannina",
        "bandCode6": "CERTYR"
    },
    {
        "bandCode4": "JEAN",
        "commonName": "Jet Antbird",
        "scientificName": "Cercomacra nigricans",
        "bandCode6": "CERNIG"
    },
    {
        "bandCode4": "BACA",
        "bandCode4Conflict": true,
        "commonName": "Bare-crowned Antbird",
        "scientificName": "Gymnocichla nudiceps",
        "bandCode6": "GYMNUD"
    },
    {
        "bandCode4": "WBEA",
        "bandCode4Conflict": true,
        "commonName": "White-bellied Antbird",
        "scientificName": "Myrmeciza longipes",
        "bandCode6": "MYRLON"
    },
    {
        "bandCode4": "CBAN",
        "commonName": "Chestnut-backed Antbird",
        "scientificName": "Myrmeciza exsul",
        "bandCode6": "MYREXS"
    },
    {
        "bandCode4": "DMAN",
        "commonName": "Dull-mantled Antbird",
        "scientificName": "Myrmeciza laemosticta",
        "bandCode6": "MYRLAE"
    },
    {
        "bandCode4": "IMAN",
        "commonName": "Zeledon's Antbird",
        "scientificName": "Myrmeciza zeledoni",
        "bandCode6": "MYRZEL"
    },
    {
        "bandCode4": "SPAN",
        "commonName": "Spotted Antbird",
        "scientificName": "Hylophylax naevioides",
        "bandCode6": "HYLNAE"
    },
    {
        "bandCode4": "WBAA",
        "bandCode4Conflict": true,
        "commonName": "Wing-banded Antbird",
        "scientificName": "Myrmornis torquata",
        "bandCode6": "MYRTOR"
    },
    {
        "bandCode4": "BIAN",
        "commonName": "Bicolored Antbird",
        "scientificName": "Gymnopithys bicolor",
        "bandCode6": "GYMBIC"
    },
    {
        "bandCode4": "OCAN",
        "commonName": "Ocellated Antbird",
        "scientificName": "Phaenostictus mcleannani",
        "bandCode6": "PHAMCL"
    },
    {
        "bandCode4": "BCAP",
        "bandCode4Conflict": true,
        "commonName": "Black-crowned Antpitta",
        "scientificName": "Pittasoma michleri",
        "bandCode6": "PITMIC"
    },
    {
        "bandCode4": "SCAA",
        "bandCode4Conflict": true,
        "commonName": "Scaled Antpitta",
        "scientificName": "Grallaria guatimalensis",
        "bandCode6": "GRAGUA"
    },
    {
        "bandCode4": "SCHA",
        "bandCode4Conflict": true,
        "commonName": "Streak-chested Antpitta",
        "scientificName": "Hylopezus perspicillatus",
        "bandCode6": "HYLPER"
    },
    {
        "bandCode4": "THAN",
        "commonName": "Thicket Antpitta",
        "scientificName": "Hylopezus dives",
        "bandCode6": "HYLDIV"
    },
    {
        "bandCode4": "OBAN",
        "commonName": "Ochre-breasted Antpitta",
        "scientificName": "Grallaricula flavirostris",
        "bandCode6": "GRAFLA"
    },
    {
        "bandCode4": "TATA",
        "commonName": "Tacarcuna Tapaculo",
        "scientificName": "Scytalopus panamensis",
        "bandCode6": "SCYPAN"
    },
    {
        "bandCode4": "CHOT",
        "bandCode4Conflict": true,
        "commonName": "Choco Tapaculo",
        "scientificName": "Scytalopus chocoensis",
        "bandCode6": "SCYCHO"
    },
    {
        "bandCode4": "SFTA",
        "commonName": "Silvery-fronted Tapaculo",
        "scientificName": "Scytalopus argentifrons",
        "bandCode6": "SCYARG"
    },
    {
        "bandCode4": "BFAN",
        "commonName": "Black-faced Antthrush",
        "scientificName": "Formicarius analis",
        "bandCode6": "FORANA"
    },
    {
        "bandCode4": "BHEA",
        "bandCode4Conflict": true,
        "commonName": "Black-headed Antthrush",
        "scientificName": "Formicarius nigricapillus",
        "bandCode6": "FORNIG"
    },
    {
        "bandCode4": "RBAN",
        "commonName": "Rufous-breasted Antthrush",
        "scientificName": "Formicarius rufipectus",
        "bandCode6": "FORRUF"
    },
    {
        "bandCode4": "TTLE",
        "commonName": "Tawny-throated Leaftosser",
        "scientificName": "Sclerurus mexicanus",
        "bandCode6": "SCLMEX"
    },
    {
        "bandCode4": "GTLE",
        "commonName": "Gray-throated Leaftosser",
        "scientificName": "Sclerurus albigularis",
        "bandCode6": "SCLALB"
    },
    {
        "bandCode4": "STLE",
        "commonName": "Scaly-throated Leaftosser",
        "scientificName": "Sclerurus guatemalensis",
        "bandCode6": "SCLGUA"
    },
    {
        "bandCode4": "OLWO",
        "commonName": "Olivaceous Woodcreeper",
        "scientificName": "Sittasomus griseicapillus",
        "bandCode6": "SITGRI"
    },
    {
        "bandCode4": "LTWO",
        "commonName": "Long-tailed Woodcreeper",
        "scientificName": "Deconychura longicauda",
        "bandCode6": "DECLON"
    },
    {
        "bandCode4": "RUWO",
        "commonName": "Ruddy Woodcreeper",
        "scientificName": "Dendrocincla homochroa",
        "bandCode6": "DENHOM"
    },
    {
        "bandCode4": "TWWO",
        "commonName": "Tawny-winged Woodcreeper",
        "scientificName": "Dendrocincla anabatina",
        "bandCode6": "DENANA"
    },
    {
        "bandCode4": "PBRW",
        "bandCode4Conflict": true,
        "commonName": "Plain-brown Woodcreeper",
        "scientificName": "Dendrocincla fuliginosa",
        "bandCode6": "DENFUA",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "WBWO",
        "commonName": "Wedge-billed Woodcreeper",
        "scientificName": "Glyphorynchus spirurus",
        "bandCode6": "GLYSPI"
    },
    {
        "bandCode4": "NOBW",
        "commonName": "Northern Barred-Woodcreeper",
        "scientificName": "Dendrocolaptes sanctithomae",
        "bandCode6": "DENSAN"
    },
    {
        "bandCode4": "BBNW",
        "bandCode4Conflict": true,
        "commonName": "Black-banded Woodcreeper",
        "scientificName": "Dendrocolaptes picumnus",
        "bandCode6": "DENPIM",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SNBW",
        "bandCode4Conflict": true,
        "commonName": "Strong-billed Woodcreeper",
        "scientificName": "Xiphocolaptes promeropirhynchu",
        "bandCode6": "XIPPRO"
    },
    {
        "bandCode4": "COWO",
        "commonName": "Cocoa Woodcreeper",
        "scientificName": "Xiphorhynchus susurrans",
        "bandCode6": "XIPSUS"
    },
    {
        "bandCode4": "IBIW",
        "bandCode4Conflict": true,
        "commonName": "Ivory-billed Woodcreeper",
        "scientificName": "Xiphorhynchus flavigaster",
        "bandCode6": "XIPFLA"
    },
    {
        "bandCode4": "BSWO",
        "commonName": "Black-striped Woodcreeper",
        "scientificName": "Xiphorhynchus lachrymosus",
        "bandCode6": "XIPLAC"
    },
    {
        "bandCode4": "SPWO",
        "commonName": "Spotted Woodcreeper",
        "scientificName": "Xiphorhynchus erythropygius",
        "bandCode6": "XIPERY"
    },
    {
        "bandCode4": "SGBW",
        "bandCode4Conflict": true,
        "commonName": "Straight-billed Woodcreeper",
        "scientificName": "Dendroplex picus",
        "bandCode6": "DENPIS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "RBSC",
        "commonName": "Red-billed Scythebill",
        "scientificName": "Campylorhamphus trochilirostri",
        "bandCode6": "CAMTRO"
    },
    {
        "bandCode4": "BBSC",
        "commonName": "Brown-billed Scythebill",
        "scientificName": "Campylorhamphus pusillus",
        "bandCode6": "CAMPUS"
    },
    {
        "bandCode4": "WSWO",
        "commonName": "White-striped Woodcreeper",
        "scientificName": "Lepidocolaptes leucogaster",
        "bandCode6": "LEPLEU"
    },
    {
        "bandCode4": "SHWO",
        "commonName": "Streak-headed Woodcreeper",
        "scientificName": "Lepidocolaptes souleyetii",
        "bandCode6": "LEPSOU"
    },
    {
        "bandCode4": "SCRW",
        "bandCode4Conflict": true,
        "commonName": "Spot-crowned Woodcreeper",
        "scientificName": "Lepidocolaptes affinis",
        "bandCode6": "LEPAFF"
    },
    {
        "bandCode4": "PLXE",
        "commonName": "Plain Xenops",
        "scientificName": "Xenops minutus",
        "bandCode6": "XENMIT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "STXE",
        "commonName": "Streaked Xenops",
        "scientificName": "Xenops rutilans",
        "bandCode6": "XENRUT"
    },
    {
        "bandCode4": "BUTU",
        "commonName": "Buffy Tuftedcheek",
        "scientificName": "Pseudocolaptes lawrencii",
        "bandCode6": "PSELAW"
    },
    {
        "bandCode4": "STST",
        "commonName": "Sharp-tailed Streamcreeper",
        "scientificName": "Lochmias nematura",
        "bandCode6": "LOCNEM"
    },
    {
        "bandCode4": "SWFG",
        "commonName": "Slaty-winged Foliage-gleaner",
        "scientificName": "Philydor fuscipenne",
        "bandCode6": "PHIFUS"
    },
    {
        "bandCode4": "BFFG",
        "commonName": "Buff-fronted Foliage-gleaner",
        "scientificName": "Philydor rufum",
        "bandCode6": "PHIRUF"
    },
    {
        "bandCode4": "STFG",
        "commonName": "Scaly-throated Foliage-gleaner",
        "scientificName": "Anabacerthia variegaticeps",
        "bandCode6": "ANAVAR"
    },
    {
        "bandCode4": "LIFG",
        "commonName": "Lineated Foliage-gleaner",
        "scientificName": "Syndactyla subalaris",
        "bandCode6": "SYNSUB"
    },
    {
        "bandCode4": "RUFG",
        "commonName": "Ruddy Foliage-gleaner",
        "scientificName": "Clibanornis rubiginosus",
        "bandCode6": "CLIRUB"
    },
    {
        "bandCode4": "SBTR",
        "commonName": "Streak-breasted Treehunter",
        "scientificName": "Thripadectes rufobrunneus",
        "bandCode6": "THRRUB",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BTFG",
        "commonName": "Buff-throated Foliage-gleaner",
        "scientificName": "Automolus ochrolaemus",
        "bandCode6": "AUTOCH"
    },
    {
        "bandCode4": "STPW",
        "bandCode4Conflict": true,
        "commonName": "Striped Woodhaunter",
        "scientificName": "Automolus subulatus",
        "bandCode6": "AUTSUB"
    },
    {
        "bandCode4": "SPBA",
        "commonName": "Spotted Barbtail",
        "scientificName": "Premnoplex brunnescens",
        "bandCode6": "PREBRU"
    },
    {
        "bandCode4": "BETR",
        "commonName": "Beautiful Treerunner",
        "scientificName": "Margarornis bellulus",
        "bandCode6": "MARBEL"
    },
    {
        "bandCode4": "RUTR",
        "commonName": "Ruddy Treerunner",
        "scientificName": "Margarornis rubiginosus",
        "bandCode6": "MARRUB"
    },
    {
        "bandCode4": "DBGR",
        "commonName": "Double-banded Graytail",
        "scientificName": "Xenerpestes minlosi",
        "bandCode6": "XENMIL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "RFSP",
        "commonName": "Red-faced Spinetail",
        "scientificName": "Cranioleuca erythrops",
        "bandCode6": "CRAERY"
    },
    {
        "bandCode4": "RBAS",
        "bandCode4Conflict": true,
        "commonName": "Rusty-backed Spinetail",
        "scientificName": "Cranioleuca vulpina",
        "bandCode6": "CRAVUL"
    },
    {
        "bandCode4": "PBSP",
        "commonName": "Pale-breasted Spinetail",
        "scientificName": "Synallaxis albescens",
        "bandCode6": "SYNALB"
    },
    {
        "bandCode4": "SLSP",
        "commonName": "Slaty Spinetail",
        "scientificName": "Synallaxis brachyura",
        "bandCode6": "SYNBRA"
    },
    {
        "bandCode4": "RBRS",
        "bandCode4Conflict": true,
        "commonName": "Rufous-breasted Spinetail",
        "scientificName": "Synallaxis erythrothorax",
        "bandCode6": "SYNERY"
    },
    {
        "bandCode4": "YBTY",
        "commonName": "Yellow-bellied Tyrannulet",
        "scientificName": "Ornithion semiflavum",
        "bandCode6": "ORNSEM"
    },
    {
        "bandCode4": "BCTY",
        "commonName": "Brown-capped Tyrannulet",
        "scientificName": "Ornithion brunneicapillus",
        "bandCode6": "ORNBRU"
    },
    {
        "bandCode4": "NOBT",
        "commonName": "Northern Beardless-Tyrannulet",
        "scientificName": "Camptostoma imberbe",
        "bandCode6": "CAMIMB"
    },
    {
        "bandCode4": "SOBT",
        "commonName": "Southern Beardless-Tyrannulet",
        "scientificName": "Camptostoma obsoletum",
        "bandCode6": "CAMOBS"
    },
    {
        "bandCode4": "MCTY",
        "commonName": "Mouse-colored Tyrannulet",
        "scientificName": "Phaeomyias murina",
        "bandCode6": "PHAMUR"
    },
    {
        "bandCode4": "COCF",
        "bandCode4Conflict": true,
        "commonName": "Cocos Flycatcher",
        "scientificName": "Nesotriccus ridgwayi",
        "bandCode6": "NESRID"
    },
    {
        "bandCode4": "YETY",
        "commonName": "Yellow Tyrannulet",
        "scientificName": "Capsiempis flaveola",
        "bandCode6": "CAPFLA"
    },
    {
        "bandCode4": "YCTY",
        "commonName": "Yellow-crowned Tyrannulet",
        "scientificName": "Tyrannulus elatus",
        "bandCode6": "TYRELA"
    },
    {
        "bandCode4": "FOEL",
        "commonName": "Forest Elaenia",
        "scientificName": "Myiopagis gaimardii",
        "bandCode6": "MYIGAI"
    },
    {
        "bandCode4": "GRAE",
        "bandCode4Conflict": true,
        "commonName": "Gray Elaenia",
        "scientificName": "Myiopagis caniceps",
        "bandCode6": "MYICAN"
    },
    {
        "bandCode4": "JAEL",
        "commonName": "Jamaican Elaenia",
        "scientificName": "Myiopagis cotta",
        "bandCode6": "MYICOT"
    },
    {
        "bandCode4": "GREL",
        "commonName": "Greenish Elaenia",
        "scientificName": "Myiopagis viridicata",
        "bandCode6": "MYIVIR"
    },
    {
        "bandCode4": "CAEL",
        "commonName": "Caribbean Elaenia",
        "scientificName": "Elaenia martinica",
        "bandCode6": "ELAMAR"
    },
    {
        "bandCode4": "YBEL",
        "commonName": "Yellow-bellied Elaenia",
        "scientificName": "Elaenia flavogaster",
        "bandCode6": "ELAFLA"
    },
    {
        "bandCode4": "WCEL",
        "commonName": "White-crested Elaenia",
        "scientificName": "Elaenia albiceps",
        "bandCode6": "ELAALB"
    },
    {
        "bandCode4": "LEEL",
        "commonName": "Lesser Elaenia",
        "scientificName": "Elaenia chiriquensis",
        "bandCode6": "ELACHI"
    },
    {
        "bandCode4": "MOEL",
        "commonName": "Mountain Elaenia",
        "scientificName": "Elaenia frantzii",
        "bandCode6": "ELAFRA"
    },
    {
        "bandCode4": "GAEL",
        "commonName": "Greater Antillean Elaenia",
        "scientificName": "Elaenia fallax",
        "bandCode6": "ELAFAL"
    },
    {
        "bandCode4": "TOTY",
        "commonName": "Torrent Tyrannulet",
        "scientificName": "Serpophaga cinerea",
        "bandCode6": "SERCIN"
    },
    {
        "bandCode4": "OSTF",
        "bandCode4Conflict": true,
        "commonName": "Olive-striped Flycatcher",
        "scientificName": "Mionectes olivaceus",
        "bandCode6": "MIOOLI"
    },
    {
        "bandCode4": "OBFL",
        "commonName": "Ochre-bellied Flycatcher",
        "scientificName": "Mionectes oleagineus",
        "bandCode6": "MIOOLE"
    },
    {
        "bandCode4": "SECF",
        "bandCode4Conflict": true,
        "commonName": "Sepia-capped Flycatcher",
        "scientificName": "Leptopogon amaurocephalus",
        "bandCode6": "LEPAMA"
    },
    {
        "bandCode4": "SLCF",
        "bandCode4Conflict": true,
        "commonName": "Slaty-capped Flycatcher",
        "scientificName": "Leptopogon superciliaris",
        "bandCode6": "LEPSUP"
    },
    {
        "bandCode4": "YGTY",
        "commonName": "Yellow-green Tyrannulet",
        "scientificName": "Phylloscartes flavovirens",
        "bandCode6": "PHYFLA"
    },
    {
        "bandCode4": "RBTY",
        "commonName": "Rufous-browed Tyrannulet",
        "scientificName": "Phylloscartes superciliaris",
        "bandCode6": "PHYSUP"
    },
    {
        "bandCode4": "RLTY",
        "commonName": "Rough-legged Tyrannulet",
        "scientificName": "Phyllomyias burmeisteri",
        "bandCode6": "PHYBUR"
    },
    {
        "bandCode4": "SHTY",
        "commonName": "Sooty-headed Tyrannulet",
        "scientificName": "Phyllomyias griseiceps",
        "bandCode6": "PHYGRI"
    },
    {
        "bandCode4": "PATY",
        "commonName": "Paltry Tyrannulet",
        "scientificName": "Zimmerius vilissimus",
        "bandCode6": "ZIMVIL"
    },
    {
        "bandCode4": "NOSF",
        "commonName": "Northern Scrub-Flycatcher",
        "scientificName": "Sublegatus arenarum",
        "bandCode6": "SUBARE"
    },
    {
        "bandCode4": "BOPT",
        "commonName": "Bronze-olive Pygmy-Tyrant",
        "scientificName": "Pseudotriccus pelzelni",
        "bandCode6": "PSEPEL"
    },
    {
        "bandCode4": "BPYT",
        "bandCode4Conflict": true,
        "commonName": "Black-capped Pygmy-Tyrant",
        "scientificName": "Myiornis atricapillus",
        "bandCode6": "MYIATP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SCPT",
        "commonName": "Scale-crested Pygmy-Tyrant",
        "scientificName": "Lophotriccus pileatus",
        "bandCode6": "LOPPIT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PEPT",
        "commonName": "Pale-eyed Pygmy-Tyrant",
        "scientificName": "Lophotriccus pilaris",
        "bandCode6": "LOPPIR",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "NOBE",
        "commonName": "Northern Bentbill",
        "scientificName": "Oncostoma cinereigulare",
        "bandCode6": "ONCCIN"
    },
    {
        "bandCode4": "SOBE",
        "commonName": "Southern Bentbill",
        "scientificName": "Oncostoma olivaceum",
        "bandCode6": "ONCOLI"
    },
    {
        "bandCode4": "SHTF",
        "commonName": "Slate-headed Tody-Flycatcher",
        "scientificName": "Poecilotriccus sylvia",
        "bandCode6": "POESYL"
    },
    {
        "bandCode4": "COTF",
        "commonName": "Common Tody-Flycatcher",
        "scientificName": "Todirostrum cinereum",
        "bandCode6": "TODCIN"
    },
    {
        "bandCode4": "BHTF",
        "commonName": "Black-headed Tody-Flycatcher",
        "scientificName": "Todirostrum nigriceps",
        "bandCode6": "TODNIG"
    },
    {
        "bandCode4": "BRTW",
        "commonName": "Brownish Twistwing",
        "scientificName": "Cnipodectes subbrunneus",
        "bandCode6": "CNISUB"
    },
    {
        "bandCode4": "ERFL",
        "commonName": "Eye-ringed Flatbill",
        "scientificName": "Rhynchocyclus brevirostris",
        "bandCode6": "RHYBRE"
    },
    {
        "bandCode4": "OLFL",
        "commonName": "Olivaceous Flatbill",
        "scientificName": "Rhynchocyclus olivaceus",
        "bandCode6": "RHYOLI"
    },
    {
        "bandCode4": "YOFL",
        "commonName": "Yellow-olive Flycatcher",
        "scientificName": "Tolmomyias sulphurescens",
        "bandCode6": "TOLSUL"
    },
    {
        "bandCode4": "YMFL",
        "commonName": "Yellow-margined Flycatcher",
        "scientificName": "Tolmomyias assimilis",
        "bandCode6": "TOLASS"
    },
    {
        "bandCode4": "YBRF",
        "bandCode4Conflict": true,
        "commonName": "Yellow-breasted Flycatcher",
        "scientificName": "Tolmomyias flaviventris",
        "bandCode6": "TOLFLA"
    },
    {
        "bandCode4": "STTS",
        "bandCode4Conflict": true,
        "commonName": "Stub-tailed Spadebill",
        "scientificName": "Platyrinchus cancrominus",
        "bandCode6": "PLACAN"
    },
    {
        "bandCode4": "WTRS",
        "bandCode4Conflict": true,
        "commonName": "White-throated Spadebill",
        "scientificName": "Platyrinchus mystaceus",
        "bandCode6": "PLAMYS"
    },
    {
        "bandCode4": "GCRS",
        "bandCode4Conflict": true,
        "commonName": "Golden-crowned Spadebill",
        "scientificName": "Platyrinchus coronatus",
        "bandCode6": "PLACOR"
    },
    {
        "bandCode4": "ROFL",
        "commonName": "Royal Flycatcher",
        "scientificName": "Onychorhynchus coronatus",
        "bandCode6": "ONYCOR"
    },
    {
        "bandCode4": "RDTF",
        "bandCode4Conflict": true,
        "commonName": "Ruddy-tailed Flycatcher",
        "scientificName": "Terenotriccus erythrurus",
        "bandCode6": "TERERY"
    },
    {
        "bandCode4": "TBFL",
        "commonName": "Tawny-breasted Flycatcher",
        "scientificName": "Myiobius villosus",
        "bandCode6": "MYIVIL"
    },
    {
        "bandCode4": "SRFL",
        "commonName": "Sulphur-rumped Flycatcher",
        "scientificName": "Myiobius sulphureipygius",
        "bandCode6": "MYISUL"
    },
    {
        "bandCode4": "BTFL",
        "commonName": "Black-tailed Flycatcher",
        "scientificName": "Myiobius atricaudus",
        "bandCode6": "MYIATD",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BCOF",
        "bandCode4Conflict": true,
        "commonName": "Bran-colored Flycatcher",
        "scientificName": "Myiophobus fasciatus",
        "bandCode6": "MYIFAS"
    },
    {
        "bandCode4": "EUFL",
        "commonName": "Euler's Flycatcher",
        "scientificName": "Lathrotriccus euleri",
        "bandCode6": "LATEUL"
    },
    {
        "bandCode4": "TCFL",
        "commonName": "Tawny-chested Flycatcher",
        "scientificName": "Aphanotriccus capitalis",
        "bandCode6": "APHCAP"
    },
    {
        "bandCode4": "BLBF",
        "bandCode4Conflict": true,
        "commonName": "Black-billed Flycatcher",
        "scientificName": "Aphanotriccus audax",
        "bandCode6": "APHAUD"
    },
    {
        "bandCode4": "BEFL",
        "commonName": "Belted Flycatcher",
        "scientificName": "Xenotriccus callizonus",
        "bandCode6": "XENCAL"
    },
    {
        "bandCode4": "PILF",
        "bandCode4Conflict": true,
        "commonName": "Pileated Flycatcher",
        "scientificName": "Xenotriccus mexicanus",
        "bandCode6": "XENMEX"
    },
    {
        "bandCode4": "TUFL",
        "commonName": "Tufted Flycatcher",
        "scientificName": "Mitrephanes phaeocercus",
        "bandCode6": "MITPHA"
    },
    {
        "bandCode4": "OSFL",
        "commonName": "Olive-sided Flycatcher",
        "scientificName": "Contopus cooperi",
        "bandCode6": "CONCOO"
    },
    {
        "bandCode4": "GRPE",
        "commonName": "Greater Pewee",
        "scientificName": "Contopus pertinax",
        "bandCode6": "CONPER"
    },
    {
        "bandCode4": "DAPE",
        "commonName": "Dark Pewee",
        "scientificName": "Contopus lugubris",
        "bandCode6": "CONLUG"
    },
    {
        "bandCode4": "OCPE",
        "commonName": "Ochraceous Pewee",
        "scientificName": "Contopus ochraceus",
        "bandCode6": "CONOCH"
    },
    {
        "bandCode4": "WEWP",
        "commonName": "Western Wood-Pewee",
        "scientificName": "Contopus sordidulus",
        "bandCode6": "CONSOR"
    },
    {
        "bandCode4": "EAWP",
        "commonName": "Eastern Wood-Pewee",
        "scientificName": "Contopus virens",
        "bandCode6": "CONVIR"
    },
    {
        "bandCode4": "TRPE",
        "commonName": "Tropical Pewee",
        "scientificName": "Contopus cinereus",
        "bandCode6": "CONCIN"
    },
    {
        "bandCode4": "CUPE",
        "commonName": "Cuban Pewee",
        "scientificName": "Contopus caribaeus",
        "bandCode6": "CONCAB",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "JAPE",
        "commonName": "Jamaican Pewee",
        "scientificName": "Contopus pallidus",
        "bandCode6": "CONPAL"
    },
    {
        "bandCode4": "HIPE",
        "commonName": "Hispaniolan Pewee",
        "scientificName": "Contopus hispaniolensis",
        "bandCode6": "CONHIS"
    },
    {
        "bandCode4": "LAPE",
        "commonName": "Lesser Antillean Pewee",
        "scientificName": "Contopus latirostris",
        "bandCode6": "CONLAT"
    },
    {
        "bandCode4": "YBFL",
        "commonName": "Yellow-bellied Flycatcher",
        "scientificName": "Empidonax flaviventris",
        "bandCode6": "EMPFLT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "ACFL",
        "commonName": "Acadian Flycatcher",
        "scientificName": "Empidonax virescens",
        "bandCode6": "EMPVIR"
    },
    {
        "bandCode4": "ALFL",
        "commonName": "Alder Flycatcher",
        "scientificName": "Empidonax alnorum",
        "bandCode6": "EMPALN"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "TRFL",
        "commonName": "Traill's Flycatcher",
        "scientificName": "Empidonax alnorum/traillii",
        "bandCode6": "EMPALT"
    },
    {
        "bandCode4": "WIFL",
        "commonName": "Willow Flycatcher",
        "scientificName": "Empidonax traillii",
        "bandCode6": "EMPTRA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SWFL",
        "commonName": "Southwestern Willow Flycatcher",
        "scientificName": "Empidonax t. extimus",
        "bandCode6": "EMPTEX"
    },
    {
        "bandCode4": "WTFL",
        "commonName": "White-throated Flycatcher",
        "scientificName": "Empidonax albigularis",
        "bandCode6": "EMPALB"
    },
    {
        "bandCode4": "LEFL",
        "commonName": "Least Flycatcher",
        "scientificName": "Empidonax minimus",
        "bandCode6": "EMPMIN"
    },
    {
        "bandCode4": "HAFL",
        "commonName": "Hammond's Flycatcher",
        "scientificName": "Empidonax hammondii",
        "bandCode6": "EMPHAM"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "HDFL",
        "commonName": "Hammond's/Dusky Flycatcher",
        "scientificName": "Empidonax hammondii/oberho.",
        "bandCode6": "EMPHAO"
    },
    {
        "bandCode4": "GRFL",
        "commonName": "Gray Flycatcher",
        "scientificName": "Empidonax wrightii",
        "bandCode6": "EMPWRI"
    },
    {
        "bandCode4": "DUFL",
        "commonName": "Dusky Flycatcher",
        "scientificName": "Empidonax oberholseri",
        "bandCode6": "EMPOBE"
    },
    {
        "bandCode4": "PINF",
        "bandCode4Conflict": true,
        "commonName": "Pine Flycatcher",
        "scientificName": "Empidonax affinis",
        "bandCode6": "EMPAFF"
    },
    {
        "bandCode4": "PSFL",
        "commonName": "Pacific-slope Flycatcher",
        "scientificName": "Empidonax difficilis",
        "bandCode6": "EMPDIF"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "WEFL",
        "commonName": "Western Flycatcher",
        "scientificName": "Empidonax difficilis/occid.",
        "bandCode6": "EMPDIO"
    },
    {
        "bandCode4": "COFL",
        "commonName": "Cordilleran Flycatcher",
        "scientificName": "Empidonax occidentalis",
        "bandCode6": "EMPOCC"
    },
    {
        "bandCode4": "YEFL",
        "commonName": "Yellowish Flycatcher",
        "scientificName": "Empidonax flavescens",
        "bandCode6": "EMPFLC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BBFL",
        "commonName": "Buff-breasted Flycatcher",
        "scientificName": "Empidonax fulvifrons",
        "bandCode6": "EMPFUL"
    },
    {
        "bandCode4": "BCAF",
        "bandCode4Conflict": true,
        "commonName": "Black-capped Flycatcher",
        "scientificName": "Empidonax atriceps",
        "bandCode6": "EMPATR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UEFL",
        "commonName": "Unidentified Empidonax Flycatcher",
        "scientificName": "Empidonax (sp)",
        "bandCode6": "EMPSPE"
    },
    {
        "bandCode4": "BLPH",
        "commonName": "Black Phoebe",
        "scientificName": "Sayornis nigricans",
        "bandCode6": "SAYNIG"
    },
    {
        "bandCode4": "EAPH",
        "commonName": "Eastern Phoebe",
        "scientificName": "Sayornis phoebe",
        "bandCode6": "SAYPHO"
    },
    {
        "bandCode4": "SAPH",
        "commonName": "Say's Phoebe",
        "scientificName": "Sayornis saya",
        "bandCode6": "SAYSAY"
    },
    {
        "bandCode4": "VEFL",
        "commonName": "Vermilion Flycatcher",
        "scientificName": "Pyrocephalus rubinus",
        "bandCode6": "PYRRUB"
    },
    {
        "bandCode4": "PIWT",
        "commonName": "Pied Water-Tyrant",
        "scientificName": "Fluvicola pica",
        "bandCode6": "FLUPIC"
    },
    {
        "bandCode4": "LTTY",
        "commonName": "Long-tailed Tyrant",
        "scientificName": "Colonia colonus",
        "bandCode6": "COLCOL"
    },
    {
        "bandCode4": "CATY",
        "commonName": "Cattle Tyrant",
        "scientificName": "Machetornis rixosa",
        "bandCode6": "MACRIX"
    },
    {
        "bandCode4": "BRAT",
        "commonName": "Bright-rumped Attila",
        "scientificName": "Attila spadiceus",
        "bandCode6": "ATTSPA"
    },
    {
        "bandCode4": "SIRY",
        "commonName": "Sirystes",
        "scientificName": "Sirystes sibilator",
        "bandCode6": "SIRSIB"
    },
    {
        "bandCode4": "RMOU",
        "bandCode4Conflict": true,
        "commonName": "Rufous Mourner",
        "scientificName": "Rhytipterna holerythra",
        "bandCode6": "RHYHOL"
    },
    {
        "bandCode4": "YUFL",
        "commonName": "Yucatan Flycatcher",
        "scientificName": "Myiarchus yucatanensis",
        "bandCode6": "MYIYUC"
    },
    {
        "bandCode4": "SAFL",
        "commonName": "Sad Flycatcher",
        "scientificName": "Myiarchus barbirostris",
        "bandCode6": "MYIBAR"
    },
    {
        "bandCode4": "DCFL",
        "commonName": "Dusky-capped Flycatcher",
        "scientificName": "Myiarchus tuberculifer",
        "bandCode6": "MYITUB"
    },
    {
        "bandCode4": "PAFL",
        "commonName": "Panama Flycatcher",
        "scientificName": "Myiarchus panamensis",
        "bandCode6": "MYIPAN"
    },
    {
        "bandCode4": "ATFL",
        "commonName": "Ash-throated Flycatcher",
        "scientificName": "Myiarchus cinerascens",
        "bandCode6": "MYICIN"
    },
    {
        "bandCode4": "NUFL",
        "commonName": "Nutting's Flycatcher",
        "scientificName": "Myiarchus nuttingi",
        "bandCode6": "MYINUT"
    },
    {
        "bandCode4": "GCFL",
        "commonName": "Great Crested Flycatcher",
        "scientificName": "Myiarchus crinitus",
        "bandCode6": "MYICRI"
    },
    {
        "bandCode4": "BCFL",
        "commonName": "Brown-crested Flycatcher",
        "scientificName": "Myiarchus tyrannulus",
        "bandCode6": "MYITYR"
    },
    {
        "bandCode4": "GFLY",
        "bandCode4Conflict": true,
        "commonName": "Grenada Flycatcher",
        "scientificName": "Myiarchus nugator",
        "bandCode6": "MYINUG"
    },
    {
        "bandCode4": "RFTF",
        "bandCode4Conflict": true,
        "commonName": "Rufous-tailed Flycatcher",
        "scientificName": "Myiarchus validus",
        "bandCode6": "MYIVAL"
    },
    {
        "bandCode4": "LSFL",
        "commonName": "La Sagra's Flycatcher",
        "scientificName": "Myiarchus sagrae",
        "bandCode6": "MYISAG"
    },
    {
        "bandCode4": "STOF",
        "bandCode4Conflict": true,
        "commonName": "Stolid Flycatcher",
        "scientificName": "Myiarchus stolidus",
        "bandCode6": "MYISTO"
    },
    {
        "bandCode4": "PRFL",
        "commonName": "Puerto Rican Flycatcher",
        "scientificName": "Myiarchus antillarum",
        "bandCode6": "MYIANT"
    },
    {
        "bandCode4": "LAFL",
        "commonName": "Lesser Antillean Flycatcher",
        "scientificName": "Myiarchus oberi",
        "bandCode6": "MYIOBE"
    },
    {
        "bandCode4": "FLFL",
        "commonName": "Flammulated Flycatcher",
        "scientificName": "Deltarhynchus flammulatus",
        "bandCode6": "DELFLA"
    },
    {
        "bandCode4": "LEKI",
        "commonName": "Lesser Kiskadee",
        "scientificName": "Pitangus lictor",
        "bandCode6": "PITLIC"
    },
    {
        "bandCode4": "GKIS",
        "bandCode4Conflict": true,
        "commonName": "Great Kiskadee",
        "scientificName": "Pitangus sulphuratus",
        "bandCode6": "PITSUL"
    },
    {
        "bandCode4": "BOBF",
        "bandCode4Conflict": true,
        "commonName": "Boat-billed Flycatcher",
        "scientificName": "Megarynchus pitangua",
        "bandCode6": "MEGPIT"
    },
    {
        "bandCode4": "RMFL",
        "commonName": "Rusty-margined Flycatcher",
        "scientificName": "Myiozetetes cayanensis",
        "bandCode6": "MYICAY"
    },
    {
        "bandCode4": "SOFL",
        "commonName": "Social Flycatcher",
        "scientificName": "Myiozetetes similis",
        "bandCode6": "MYISIM"
    },
    {
        "bandCode4": "GCAF",
        "bandCode4Conflict": true,
        "commonName": "Gray-capped Flycatcher",
        "scientificName": "Myiozetetes granadensis",
        "bandCode6": "MYIGRA"
    },
    {
        "bandCode4": "WRFL",
        "commonName": "White-ringed Flycatcher",
        "scientificName": "Conopias albovittatus",
        "bandCode6": "CONALB"
    },
    {
        "bandCode4": "GBFL",
        "commonName": "Golden-bellied Flycatcher",
        "scientificName": "Myiodynastes hemichrysus",
        "bandCode6": "MYIHEM"
    },
    {
        "bandCode4": "GOCF",
        "bandCode4Conflict": true,
        "commonName": "Golden-crowned Flycatcher",
        "scientificName": "Myiodynastes chrysocephalus",
        "bandCode6": "MYICHR"
    },
    {
        "bandCode4": "STRF",
        "bandCode4Conflict": true,
        "commonName": "Streaked Flycatcher",
        "scientificName": "Myiodynastes maculatus",
        "bandCode6": "MYIMAC"
    },
    {
        "bandCode4": "SBFL",
        "commonName": "Sulphur-bellied Flycatcher",
        "scientificName": "Myiodynastes luteiventris",
        "bandCode6": "MYILUT"
    },
    {
        "bandCode4": "PIFL",
        "commonName": "Piratic Flycatcher",
        "scientificName": "Legatus leucophaius",
        "bandCode6": "LEGLEU"
    },
    {
        "bandCode4": "VAFL",
        "commonName": "Variegated Flycatcher",
        "scientificName": "Empidonomus varius",
        "bandCode6": "EMPVAR"
    },
    {
        "bandCode4": "CSFL",
        "commonName": "Crowned Slaty Flycatcher",
        "scientificName": "Empidonomus aurantioatrocrista",
        "bandCode6": "EMPAUR"
    },
    {
        "bandCode4": "TRKI",
        "commonName": "Tropical Kingbird",
        "scientificName": "Tyrannus melancholicus",
        "bandCode6": "TYRMEL"
    },
    {
        "bandCode4": "COKI",
        "commonName": "Couch's Kingbird",
        "scientificName": "Tyrannus couchii",
        "bandCode6": "TYRCOU"
    },
    {
        "bandCode4": "CAKI",
        "commonName": "Cassin's Kingbird",
        "scientificName": "Tyrannus vociferans",
        "bandCode6": "TYRVOC"
    },
    {
        "bandCode4": "TBKI",
        "commonName": "Thick-billed Kingbird",
        "scientificName": "Tyrannus crassirostris",
        "bandCode6": "TYRCRA"
    },
    {
        "bandCode4": "WEKI",
        "commonName": "Western Kingbird",
        "scientificName": "Tyrannus verticalis",
        "bandCode6": "TYRVER"
    },
    {
        "bandCode4": "EAKI",
        "commonName": "Eastern Kingbird",
        "scientificName": "Tyrannus tyrannus",
        "bandCode6": "TYRTYR"
    },
    {
        "bandCode4": "GRAK",
        "bandCode4Conflict": true,
        "commonName": "Gray Kingbird",
        "scientificName": "Tyrannus dominicensis",
        "bandCode6": "TYRDOM"
    },
    {
        "bandCode4": "LOKI",
        "commonName": "Loggerhead Kingbird",
        "scientificName": "Tyrannus caudifasciatus",
        "bandCode6": "TYRCAU"
    },
    {
        "bandCode4": "GIKI",
        "commonName": "Giant Kingbird",
        "scientificName": "Tyrannus cubensis",
        "bandCode6": "TYRCUB"
    },
    {
        "bandCode4": "STFL",
        "commonName": "Scissor-tailed Flycatcher",
        "scientificName": "Tyrannus forficatus",
        "bandCode6": "TYRFOR"
    },
    {
        "bandCode4": "FTFL",
        "commonName": "Fork-tailed Flycatcher",
        "scientificName": "Tyrannus savana",
        "bandCode6": "TYRSAV"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNFL",
        "commonName": "Unidentified Flycatcher",
        "scientificName": "Tyrannidae (gen, sp)",
        "bandCode6": "TYRGEN"
    },
    {
        "bandCode4": "GHPI",
        "commonName": "Gray-headed Piprites",
        "scientificName": "Piprites griseiceps",
        "bandCode6": "PIPGRI"
    },
    {
        "bandCode4": "NOSC",
        "commonName": "Northern Schiffornis",
        "scientificName": "Schiffornis veraepacis",
        "bandCode6": "SCHVER"
    },
    {
        "bandCode4": "RWSC",
        "commonName": "Russet-winged Schiffornis",
        "scientificName": "Schiffornis stenorhyncha",
        "bandCode6": "SCHSTE"
    },
    {
        "bandCode4": "SPMO",
        "commonName": "Speckled Mourner",
        "scientificName": "Laniocera rufescens",
        "bandCode6": "LANRUF"
    },
    {
        "bandCode4": "MATI",
        "commonName": "Masked Tityra",
        "scientificName": "Tityra semifasciata",
        "bandCode6": "TITSEM"
    },
    {
        "bandCode4": "BCRT",
        "bandCode4Conflict": true,
        "commonName": "Black-crowned Tityra",
        "scientificName": "Tityra inquisitor",
        "bandCode6": "TITINQ"
    },
    {
        "bandCode4": "BABE",
        "commonName": "Barred Becard",
        "scientificName": "Pachyramphus versicolor",
        "bandCode6": "PACVER"
    },
    {
        "bandCode4": "CIRB",
        "bandCode4Conflict": true,
        "commonName": "Cinereous Becard",
        "scientificName": "Pachyramphus rufus",
        "bandCode6": "PACRUF"
    },
    {
        "bandCode4": "CIMB",
        "bandCode4Conflict": true,
        "commonName": "Cinnamon Becard",
        "scientificName": "Pachyramphus cinnamomeus",
        "bandCode6": "PACCIN"
    },
    {
        "bandCode4": "WWBE",
        "commonName": "White-winged Becard",
        "scientificName": "Pachyramphus polychopterus",
        "bandCode6": "PACPOL"
    },
    {
        "bandCode4": "BAWB",
        "commonName": "Black-and-white Becard",
        "scientificName": "Pachyramphus albogriseus",
        "bandCode6": "PACALB"
    },
    {
        "bandCode4": "GCBE",
        "commonName": "Gray-collared Becard",
        "scientificName": "Pachyramphus major",
        "bandCode6": "PACMAJ"
    },
    {
        "bandCode4": "RTBE",
        "commonName": "Rose-throated Becard",
        "scientificName": "Pachyramphus aglaiae",
        "bandCode6": "PACAGL"
    },
    {
        "bandCode4": "OCBE",
        "commonName": "One-colored Becard",
        "scientificName": "Pachyramphus homochrous",
        "bandCode6": "PACHOM"
    },
    {
        "bandCode4": "JABE",
        "commonName": "Jamaican Becard",
        "scientificName": "Pachyramphus niger",
        "bandCode6": "PACNIG"
    },
    {
        "bandCode4": "PTFR",
        "commonName": "Purple-throated Fruitcrow",
        "scientificName": "Querula purpurata",
        "bandCode6": "QUEPUR"
    },
    {
        "bandCode4": "BNUM",
        "commonName": "Bare-necked Umbrellabird",
        "scientificName": "Cephalopterus glabricollis",
        "bandCode6": "CEPGLA"
    },
    {
        "bandCode4": "LOCO",
        "commonName": "Lovely Cotinga",
        "scientificName": "Cotinga amabilis",
        "bandCode6": "COTAMA"
    },
    {
        "bandCode4": "TUCO",
        "commonName": "Turquoise Cotinga",
        "scientificName": "Cotinga ridgwayi",
        "bandCode6": "COTRID"
    },
    {
        "bandCode4": "BLCO",
        "commonName": "Blue Cotinga",
        "scientificName": "Cotinga nattererii",
        "bandCode6": "COTNAT"
    },
    {
        "bandCode4": "RUFP",
        "bandCode4Conflict": true,
        "commonName": "Rufous Piha",
        "scientificName": "Lipaugus unirufus",
        "bandCode6": "LIPUNI"
    },
    {
        "bandCode4": "TWBE",
        "commonName": "Three-wattled Bellbird",
        "scientificName": "Procnias tricarunculatus",
        "bandCode6": "PROTRI"
    },
    {
        "bandCode4": "BTCO",
        "commonName": "Black-tipped Cotinga",
        "scientificName": "Carpodectes hopkei",
        "bandCode6": "CARHOP"
    },
    {
        "bandCode4": "YBCO",
        "commonName": "Yellow-billed Cotinga",
        "scientificName": "Carpodectes antoniae",
        "bandCode6": "CARANT"
    },
    {
        "bandCode4": "SNCO",
        "commonName": "Snowy Cotinga",
        "scientificName": "Carpodectes nitidus",
        "bandCode6": "CARNIT"
    },
    {
        "bandCode4": "WRMA",
        "commonName": "White-ruffed Manakin",
        "scientificName": "Corapipo altera",
        "bandCode6": "CORALT"
    },
    {
        "bandCode4": "LATM",
        "bandCode4Conflict": true,
        "commonName": "Lance-tailed Manakin",
        "scientificName": "Chiroxiphia lanceolata",
        "bandCode6": "CHILAN"
    },
    {
        "bandCode4": "LOTM",
        "bandCode4Conflict": true,
        "commonName": "Long-tailed Manakin",
        "scientificName": "Chiroxiphia linearis",
        "bandCode6": "CHILIN"
    },
    {
        "bandCode4": "GMAK",
        "bandCode4Conflict": true,
        "commonName": "Green Manakin",
        "scientificName": "Xenopipo holochlora",
        "bandCode6": "XENHOL"
    },
    {
        "bandCode4": "WCRM",
        "bandCode4Conflict": true,
        "commonName": "White-crowned Manakin",
        "scientificName": "Dixiphia pipra",
        "bandCode6": "DIXPIP"
    },
    {
        "bandCode4": "RCMA",
        "commonName": "Red-capped Manakin",
        "scientificName": "Ceratopipra mentalis",
        "bandCode6": "CERMEN"
    },
    {
        "bandCode4": "GHMA",
        "commonName": "Golden-headed Manakin",
        "scientificName": "Ceratopipra erythrocephala",
        "bandCode6": "CERERY"
    },
    {
        "bandCode4": "WCOM",
        "bandCode4Conflict": true,
        "commonName": "White-collared Manakin",
        "scientificName": "Manacus candei",
        "bandCode6": "MANCAN"
    },
    {
        "bandCode4": "OCMA",
        "commonName": "Orange-collared Manakin",
        "scientificName": "Manacus aurantiacus",
        "bandCode6": "MANAUR"
    },
    {
        "bandCode4": "GCMA",
        "commonName": "Golden-collared Manakin",
        "scientificName": "Manacus vitellinus",
        "bandCode6": "MANVIT"
    },
    {
        "bandCode4": "BCRM",
        "bandCode4Conflict": true,
        "commonName": "Blue-crowned Manakin",
        "scientificName": "Lepidothrix coronata",
        "bandCode6": "LEPCOR"
    },
    {
        "bandCode4": "SHAR",
        "commonName": "Sharpbill",
        "scientificName": "Oxyruncus cristatus",
        "bandCode6": "OXYCRI"
    },
    {
        "bandCode4": "BROS",
        "bandCode4Conflict": true,
        "commonName": "Brown Shrike",
        "scientificName": "Lanius cristatus",
        "bandCode6": "LANCRI"
    },
    {
        "bandCode4": "LOSH",
        "commonName": "Loggerhead Shrike",
        "scientificName": "Lanius ludovicianus",
        "bandCode6": "LANLUD"
    },
    {
        "bandCode4": "NSHR",
        "bandCode4Conflict": true,
        "commonName": "Northern Shrike",
        "scientificName": "Lanius excubitor",
        "bandCode6": "LANEXC"
    },
    {
        "bandCode4": "SLVI",
        "commonName": "Slaty Vireo",
        "scientificName": "Vireo brevipennis",
        "bandCode6": "VIRBRE"
    },
    {
        "bandCode4": "WEVI",
        "commonName": "White-eyed Vireo",
        "scientificName": "Vireo griseus",
        "bandCode6": "VIRGRI"
    },
    {
        "bandCode4": "TBVI",
        "commonName": "Thick-billed Vireo",
        "scientificName": "Vireo crassirostris",
        "bandCode6": "VIRCRA"
    },
    {
        "bandCode4": "MAVI",
        "commonName": "Mangrove Vireo",
        "scientificName": "Vireo pallens",
        "bandCode6": "VIRPAL"
    },
    {
        "bandCode4": "COVI",
        "commonName": "Cozumel Vireo",
        "scientificName": "Vireo bairdi",
        "bandCode6": "VIRBAI"
    },
    {
        "bandCode4": "SAVI",
        "commonName": "San Andres Vireo",
        "scientificName": "Vireo caribaeus",
        "bandCode6": "VIRCAB",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "JAVI",
        "commonName": "Jamaican Vireo",
        "scientificName": "Vireo modestus",
        "bandCode6": "VIRMOD"
    },
    {
        "bandCode4": "CUVI",
        "commonName": "Cuban Vireo",
        "scientificName": "Vireo gundlachii",
        "bandCode6": "VIRGUN"
    },
    {
        "bandCode4": "PRVI",
        "commonName": "Puerto Rican Vireo",
        "scientificName": "Vireo latimeri",
        "bandCode6": "VIRLAT"
    },
    {
        "bandCode4": "FBVI",
        "commonName": "Flat-billed Vireo",
        "scientificName": "Vireo nanus",
        "bandCode6": "VIRNAN"
    },
    {
        "bandCode4": "BEVI",
        "commonName": "Bell's Vireo",
        "scientificName": "Vireo bellii",
        "bandCode6": "VIRBEL"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LBVI",
        "commonName": "Least Bell's Vireo",
        "scientificName": "Vireo b. pusillus",
        "bandCode6": "VIRBPU"
    },
    {
        "bandCode4": "BCVI",
        "commonName": "Black-capped Vireo",
        "scientificName": "Vireo atricapilla",
        "bandCode6": "VIRATR"
    },
    {
        "bandCode4": "DWVI",
        "commonName": "Dwarf Vireo",
        "scientificName": "Vireo nelsoni",
        "bandCode6": "VIRNEL"
    },
    {
        "bandCode4": "GRVI",
        "commonName": "Gray Vireo",
        "scientificName": "Vireo vicinior",
        "bandCode6": "VIRVIC"
    },
    {
        "bandCode4": "BMVI",
        "commonName": "Blue Mountain Vireo",
        "scientificName": "Vireo osburni",
        "bandCode6": "VIROSB"
    },
    {
        "bandCode4": "YTVI",
        "commonName": "Yellow-throated Vireo",
        "scientificName": "Vireo flavifrons",
        "bandCode6": "VIRFLF",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PLVI",
        "commonName": "Plumbeous Vireo",
        "scientificName": "Vireo plumbeus",
        "bandCode6": "VIRPLU"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SOVI",
        "commonName": "Solitary Vireo",
        "scientificName": "Vireo (sp)",
        "bandCode6": "VIRSPE"
    },
    {
        "bandCode4": "CAVI",
        "commonName": "Cassin's Vireo",
        "scientificName": "Vireo cassinii",
        "bandCode6": "VIRCAS"
    },
    {
        "bandCode4": "BHVI",
        "commonName": "Blue-headed Vireo",
        "scientificName": "Vireo solitarius",
        "bandCode6": "VIRSOL"
    },
    {
        "bandCode4": "YWVI",
        "commonName": "Yellow-winged Vireo",
        "scientificName": "Vireo carmioli",
        "bandCode6": "VIRCAM",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "HUVI",
        "commonName": "Hutton's Vireo",
        "scientificName": "Vireo huttoni",
        "bandCode6": "VIRHUT"
    },
    {
        "bandCode4": "GOVI",
        "commonName": "Golden Vireo",
        "scientificName": "Vireo hypochryseus",
        "bandCode6": "VIRHYP"
    },
    {
        "bandCode4": "WAVI",
        "commonName": "Warbling Vireo",
        "scientificName": "Vireo gilvus",
        "bandCode6": "VIRGIL"
    },
    {
        "bandCode4": "BCAV",
        "bandCode4Conflict": true,
        "commonName": "Brown-capped Vireo",
        "scientificName": "Vireo leucophrys",
        "bandCode6": "VIRLEU"
    },
    {
        "bandCode4": "PHVI",
        "commonName": "Philadelphia Vireo",
        "scientificName": "Vireo philadelphicus",
        "bandCode6": "VIRPHI"
    },
    {
        "bandCode4": "REVI",
        "commonName": "Red-eyed Vireo",
        "scientificName": "Vireo olivaceus",
        "bandCode6": "VIROLI"
    },
    {
        "bandCode4": "YGVI",
        "commonName": "Yellow-green Vireo",
        "scientificName": "Vireo flavoviridis",
        "bandCode6": "VIRFLD",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BWVI",
        "commonName": "Black-whiskered Vireo",
        "scientificName": "Vireo altiloquus",
        "bandCode6": "VIRALT"
    },
    {
        "bandCode4": "YUVI",
        "commonName": "Yucatan Vireo",
        "scientificName": "Vireo magister",
        "bandCode6": "VIRMAG"
    },
    {
        "bandCode4": "SCRG",
        "bandCode4Conflict": true,
        "commonName": "Scrub Greenlet",
        "scientificName": "Hylophilus flavipes",
        "bandCode6": "HYLFLA"
    },
    {
        "bandCode4": "TCGR",
        "commonName": "Tawny-crowned Greenlet",
        "scientificName": "Hylophilus ochraceiceps",
        "bandCode6": "HYLOCH"
    },
    {
        "bandCode4": "GFGR",
        "commonName": "Golden-fronted Greenlet",
        "scientificName": "Hylophilus aurantiifrons",
        "bandCode6": "HYLAUR"
    },
    {
        "bandCode4": "LESG",
        "bandCode4Conflict": true,
        "commonName": "Lesser Greenlet",
        "scientificName": "Hylophilus decurtatus",
        "bandCode6": "HYLDEC"
    },
    {
        "bandCode4": "CSSV",
        "commonName": "Chestnut-sided Shrike-Vireo",
        "scientificName": "Vireolanius melitophrys",
        "bandCode6": "VIRMEL"
    },
    {
        "bandCode4": "GRSV",
        "commonName": "Green Shrike-Vireo",
        "scientificName": "Vireolanius pulchellus",
        "bandCode6": "VIRPUL"
    },
    {
        "bandCode4": "YBSV",
        "commonName": "Yellow-browed Shrike-Vireo",
        "scientificName": "Vireolanius eximius",
        "bandCode6": "VIREXI"
    },
    {
        "bandCode4": "RBPE",
        "commonName": "Rufous-browed Peppershrike",
        "scientificName": "Cyclarhis gujanensis",
        "bandCode6": "CYCGUJ"
    },
    {
        "bandCode4": "GRAJ",
        "bandCode4Conflict": true,
        "commonName": "Gray Jay",
        "scientificName": "Perisoreus canadensis",
        "bandCode6": "PERCAN"
    },
    {
        "bandCode4": "WTJA",
        "commonName": "White-throated Jay",
        "scientificName": "Cyanolyca mirabilis",
        "bandCode6": "CYAMIR"
    },
    {
        "bandCode4": "DWJA",
        "commonName": "Dwarf Jay",
        "scientificName": "Cyanolyca nana",
        "bandCode6": "CYANAN"
    },
    {
        "bandCode4": "BTJA",
        "commonName": "Black-throated Jay",
        "scientificName": "Cyanolyca pumilo",
        "bandCode6": "CYAPUM"
    },
    {
        "bandCode4": "STHJ",
        "bandCode4Conflict": true,
        "commonName": "Silvery-throated Jay",
        "scientificName": "Cyanolyca argentigula",
        "bandCode6": "CYAARG"
    },
    {
        "bandCode4": "AHJA",
        "commonName": "Azure-hooded Jay",
        "scientificName": "Cyanolyca cucullata",
        "bandCode6": "CYACUC"
    },
    {
        "bandCode4": "BTMJ",
        "commonName": "Black-throated Magpie-Jay",
        "scientificName": "Calocitta colliei",
        "bandCode6": "CALCOL"
    },
    {
        "bandCode4": "WTMJ",
        "commonName": "White-throated Magpie-Jay",
        "scientificName": "Calocitta formosa",
        "bandCode6": "CALFOR"
    },
    {
        "bandCode4": "BRJA",
        "commonName": "Brown Jay",
        "scientificName": "Psilorhinus morio",
        "bandCode6": "PSIMOR"
    },
    {
        "bandCode4": "TUJA",
        "commonName": "Tufted Jay",
        "scientificName": "Cyanocorax dickeyi",
        "bandCode6": "CYADIC"
    },
    {
        "bandCode4": "BCHJ",
        "bandCode4Conflict": true,
        "commonName": "Black-chested Jay",
        "scientificName": "Cyanocorax affinis",
        "bandCode6": "CYAAFF"
    },
    {
        "bandCode4": "GREJ",
        "bandCode4Conflict": true,
        "commonName": "Green Jay",
        "scientificName": "Cyanocorax yncas",
        "bandCode6": "CYAYNC"
    },
    {
        "bandCode4": "BCRJ",
        "bandCode4Conflict": true,
        "commonName": "Bushy-crested Jay",
        "scientificName": "Cyanocorax melanocyaneus",
        "bandCode6": "CYAMEL"
    },
    {
        "bandCode4": "SBJA",
        "commonName": "San Blas Jay",
        "scientificName": "Cyanocorax sanblasianus",
        "bandCode6": "CYASAN"
    },
    {
        "bandCode4": "YUJA",
        "commonName": "Yucatan Jay",
        "scientificName": "Cyanocorax yucatanicus",
        "bandCode6": "CYAYUC"
    },
    {
        "bandCode4": "PBJA",
        "commonName": "Purplish-backed Jay",
        "scientificName": "Cyanocorax beecheii",
        "bandCode6": "CYABEE"
    },
    {
        "bandCode4": "PIJA",
        "commonName": "Pinyon Jay",
        "scientificName": "Gymnorhinus cyanocephalus",
        "bandCode6": "GYMCYA"
    },
    {
        "bandCode4": "STJA",
        "commonName": "Steller's Jay",
        "scientificName": "Cyanocitta stelleri",
        "bandCode6": "CYASTE"
    },
    {
        "bandCode4": "BLJA",
        "commonName": "Blue Jay",
        "scientificName": "Cyanocitta cristata",
        "bandCode6": "CYACRI"
    },
    {
        "bandCode4": "FLSJ",
        "commonName": "Florida Scrub-Jay",
        "scientificName": "Aphelocoma coerulescens",
        "bandCode6": "APHCOE"
    },
    {
        "bandCode4": "ISSJ",
        "commonName": "Island Scrub-Jay",
        "scientificName": "Aphelocoma insularis",
        "bandCode6": "APHINS"
    },
    {
        "bandCode4": "WESJ",
        "commonName": "Western Scrub-Jay",
        "scientificName": "Aphelocoma californica",
        "bandCode6": "APHCAL"
    },
    {
        "bandCode4": "TRJA",
        "commonName": "Transvolcanic Jay",
        "scientificName": "Aphelocoma ultramarina",
        "bandCode6": "APHULT"
    },
    {
        "bandCode4": "MEJA",
        "commonName": "Mexican Jay",
        "scientificName": "Aphelocoma wollweberi",
        "bandCode6": "APHWOL"
    },
    {
        "bandCode4": "UNJA",
        "commonName": "Unicolored Jay",
        "scientificName": "Aphelocoma unicolor",
        "bandCode6": "APHUNI"
    },
    {
        "bandCode4": "CLNU",
        "commonName": "Clark's Nutcracker",
        "scientificName": "Nucifraga columbiana",
        "bandCode6": "NUCCOL"
    },
    {
        "bandCode4": "BBMA",
        "commonName": "Black-billed Magpie",
        "scientificName": "Pica hudsonia",
        "bandCode6": "PICHUD"
    },
    {
        "bandCode4": "YBMA",
        "commonName": "Yellow-billed Magpie",
        "scientificName": "Pica nuttalli",
        "bandCode6": "PIANUT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "EUJA",
        "commonName": "Eurasian Jackdaw",
        "scientificName": "Corvus monedula",
        "bandCode6": "CORMON"
    },
    {
        "bandCode4": "AMCR",
        "commonName": "American Crow",
        "scientificName": "Corvus brachyrhynchos",
        "bandCode6": "CORBRA"
    },
    {
        "bandCode4": "NOCR",
        "commonName": "Northwestern Crow",
        "scientificName": "Corvus caurinus",
        "bandCode6": "CORCAU"
    },
    {
        "bandCode4": "PACR",
        "commonName": "Palm Crow",
        "scientificName": "Corvus palmarum",
        "bandCode6": "CORPAL"
    },
    {
        "bandCode4": "CUCR",
        "commonName": "Cuban Crow",
        "scientificName": "Corvus nasicus",
        "bandCode6": "CORNAS"
    },
    {
        "bandCode4": "WNCR",
        "commonName": "White-necked Crow",
        "scientificName": "Corvus leucognaphalus",
        "bandCode6": "CORLEU"
    },
    {
        "bandCode4": "JACR",
        "commonName": "Jamaican Crow",
        "scientificName": "Corvus jamaicensis",
        "bandCode6": "CORJAM"
    },
    {
        "bandCode4": "TACR",
        "commonName": "Tamaulipas Crow",
        "scientificName": "Corvus imparatus",
        "bandCode6": "CORIMP"
    },
    {
        "bandCode4": "SICR",
        "commonName": "Sinaloa Crow",
        "scientificName": "Corvus sinaloae",
        "bandCode6": "CORSIN"
    },
    {
        "bandCode4": "FICR",
        "commonName": "Fish Crow",
        "scientificName": "Corvus ossifragus",
        "bandCode6": "COROSS"
    },
    {
        "bandCode4": "HCRO",
        "bandCode4Conflict": true,
        "commonName": "Hawaiian Crow",
        "scientificName": "Corvus hawaiiensis",
        "bandCode6": "CORHAW"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNCR",
        "commonName": "Unidentified Crow",
        "scientificName": "Corvus (sp)",
        "bandCode6": "CORSPE"
    },
    {
        "bandCode4": "CHRA",
        "commonName": "Chihuahuan Raven",
        "scientificName": "Corvus cryptoleucus",
        "bandCode6": "CORCRY"
    },
    {
        "bandCode4": "CORA",
        "commonName": "Common Raven",
        "scientificName": "Corvus corax",
        "bandCode6": "CORCOR"
    },
    {
        "bandCode4": "KAEL",
        "commonName": "Kauai Elepaio",
        "scientificName": "Chasiempis sclateri",
        "bandCode6": "CHASCL"
    },
    {
        "bandCode4": "OAEL",
        "commonName": "Oahu Elepaio",
        "scientificName": "Chasiempis ibidis",
        "bandCode6": "CHAIBI"
    },
    {
        "bandCode4": "HAEL",
        "commonName": "Hawaii Elepaio",
        "scientificName": "Chasiempis sandwichensis",
        "bandCode6": "CHASAN"
    },
    {
        "bandCode4": "SKLA",
        "commonName": "Sky Lark",
        "scientificName": "Alauda arvensis",
        "bandCode6": "ALAARV"
    },
    {
        "bandCode4": "HOLA",
        "commonName": "Horned Lark",
        "scientificName": "Eremophila alpestris",
        "bandCode6": "EREALP"
    },
    {
        "bandCode4": "PUMA",
        "commonName": "Purple Martin",
        "scientificName": "Progne subis",
        "bandCode6": "PROSUB"
    },
    {
        "bandCode4": "CUMA",
        "commonName": "Cuban Martin",
        "scientificName": "Progne cryptoleuca",
        "bandCode6": "PROCRY"
    },
    {
        "bandCode4": "CAMA",
        "commonName": "Caribbean Martin",
        "scientificName": "Progne dominicensis",
        "bandCode6": "PRODOM"
    },
    {
        "bandCode4": "SIMA",
        "commonName": "Sinaloa Martin",
        "scientificName": "Progne sinaloae",
        "bandCode6": "PROSIN"
    },
    {
        "bandCode4": "GYBM",
        "bandCode4Conflict": true,
        "commonName": "Gray-breasted Martin",
        "scientificName": "Progne chalybea",
        "bandCode6": "PROCHA"
    },
    {
        "bandCode4": "SOMA",
        "commonName": "Southern Martin",
        "scientificName": "Progne elegans",
        "bandCode6": "PROELE"
    },
    {
        "bandCode4": "BCMA",
        "commonName": "Brown-chested Martin",
        "scientificName": "Progne tapera",
        "bandCode6": "PROTAP"
    },
    {
        "bandCode4": "TRES",
        "bandCode4Conflict": true,
        "commonName": "Tree Swallow",
        "scientificName": "Tachycineta bicolor",
        "bandCode6": "TACBIC"
    },
    {
        "bandCode4": "MANS",
        "bandCode4Conflict": true,
        "commonName": "Mangrove Swallow",
        "scientificName": "Tachycineta albilinea",
        "bandCode6": "TACALB"
    },
    {
        "bandCode4": "GOSW",
        "commonName": "Golden Swallow",
        "scientificName": "Tachycineta euchrysea",
        "bandCode6": "TACEUC"
    },
    {
        "bandCode4": "VGSW",
        "commonName": "Violet-green Swallow",
        "scientificName": "Tachycineta thalassina",
        "bandCode6": "TACTHA"
    },
    {
        "bandCode4": "BAHS",
        "bandCode4Conflict": true,
        "commonName": "Bahama Swallow",
        "scientificName": "Tachycineta cyaneoviridis",
        "bandCode6": "TACCYA"
    },
    {
        "bandCode4": "BAWS",
        "commonName": "Blue-and-white Swallow",
        "scientificName": "Pygochelidon cyanoleuca",
        "bandCode6": "PYGCYA"
    },
    {
        "bandCode4": "BCSW",
        "commonName": "Black-capped Swallow",
        "scientificName": "Notiochelidon pileata",
        "bandCode6": "NOTPIL"
    },
    {
        "bandCode4": "WTGS",
        "bandCode4Conflict": true,
        "commonName": "White-thighed Swallow",
        "scientificName": "Neochelidon tibialis",
        "bandCode6": "NEOTIB"
    },
    {
        "bandCode4": "NRWS",
        "commonName": "Northern Rough-winged Swallow",
        "scientificName": "Stelgidopteryx serripennis",
        "bandCode6": "STESER"
    },
    {
        "bandCode4": "SRWS",
        "commonName": "Southern Rough-winged Swallow",
        "scientificName": "Stelgidopteryx ruficollis",
        "bandCode6": "STERUF"
    },
    {
        "bandCode4": "BANS",
        "bandCode4Conflict": true,
        "commonName": "Bank Swallow",
        "scientificName": "Riparia riparia",
        "bandCode6": "RIPRIP"
    },
    {
        "bandCode4": "CLSW",
        "commonName": "Cliff Swallow",
        "scientificName": "Petrochelidon pyrrhonota",
        "bandCode6": "PETPYR"
    },
    {
        "bandCode4": "CASW",
        "commonName": "Cave Swallow",
        "scientificName": "Petrochelidon fulva",
        "bandCode6": "PETFUL"
    },
    {
        "bandCode4": "BARS",
        "bandCode4Conflict": true,
        "commonName": "Barn Swallow",
        "scientificName": "Hirundo rustica",
        "bandCode6": "HIRRUS"
    },
    {
        "bandCode4": "COHM",
        "commonName": "Common House-Martin",
        "scientificName": "Delichon urbicum",
        "bandCode6": "DELURB"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNSW",
        "commonName": "Unidentified Swallow",
        "scientificName": "Hirundidae (gen, sp)",
        "bandCode6": "HIRGSP"
    },
    {
        "bandCode4": "CACH",
        "commonName": "Carolina Chickadee",
        "scientificName": "Poecile carolinensis",
        "bandCode6": "POECAR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "CBCC",
        "bandCode4Conflict": true,
        "commonName": "Carolina X Black-c. Chickadee Hybrid",
        "scientificName": "Poecile caroli. x atrica.",
        "bandCode6": "POECAA"
    },
    {
        "bandCode4": "BCCH",
        "commonName": "Black-capped Chickadee",
        "scientificName": "Poecile atricapillus",
        "bandCode6": "POEATR"
    },
    {
        "bandCode4": "MOCH",
        "commonName": "Mountain Chickadee",
        "scientificName": "Poecile gambeli",
        "bandCode6": "POEGAM"
    },
    {
        "bandCode4": "MECH",
        "commonName": "Mexican Chickadee",
        "scientificName": "Poecile sclateri",
        "bandCode6": "POESCL"
    },
    {
        "bandCode4": "CBCH",
        "commonName": "Chestnut-backed Chickadee",
        "scientificName": "Poecile rufescens",
        "bandCode6": "POERUF"
    },
    {
        "bandCode4": "BOCH",
        "commonName": "Boreal Chickadee",
        "scientificName": "Poecile hudsonicus",
        "bandCode6": "POEHUD"
    },
    {
        "bandCode4": "GHCH",
        "commonName": "Gray-headed Chickadee",
        "scientificName": "Poecile cinctus",
        "bandCode6": "POECIN"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UPCH",
        "commonName": "Unidentified Poecile Chickadee",
        "scientificName": "Poecile (sp)",
        "bandCode6": "POESPE"
    },
    {
        "bandCode4": "BRTI",
        "commonName": "Bridled Titmouse",
        "scientificName": "Baeolophus wollweberi",
        "bandCode6": "BAEWOL"
    },
    {
        "bandCode4": "OATI",
        "commonName": "Oak Titmouse",
        "scientificName": "Baeolophus inornatus",
        "bandCode6": "BAEINO"
    },
    {
        "bandCode4": "JUTI",
        "commonName": "Juniper Titmouse",
        "scientificName": "Baeolophus ridgwayi",
        "bandCode6": "BAERID"
    },
    {
        "bandCode4": "TUTI",
        "commonName": "Tufted Titmouse",
        "scientificName": "Baeolophus bicolor",
        "bandCode6": "BAEBIC"
    },
    {
        "bandCode4": "BCTI",
        "commonName": "Black-crested Titmouse",
        "scientificName": "Baeolophus atricristatus",
        "bandCode6": "BAEATR"
    },
    {
        "bandCode4": "VERD",
        "commonName": "Verdin",
        "scientificName": "Auriparus flaviceps",
        "bandCode6": "AURFLA"
    },
    {
        "bandCode4": "BUSH",
        "commonName": "Bushtit",
        "scientificName": "Psaltriparus minimus",
        "bandCode6": "PSAMIN"
    },
    {
        "bandCode4": "RBNU",
        "commonName": "Red-breasted Nuthatch",
        "scientificName": "Sitta canadensis",
        "bandCode6": "SITCAN"
    },
    {
        "bandCode4": "WBNU",
        "commonName": "White-breasted Nuthatch",
        "scientificName": "Sitta carolinensis",
        "bandCode6": "SITCAR"
    },
    {
        "bandCode4": "PYNU",
        "commonName": "Pygmy Nuthatch",
        "scientificName": "Sitta pygmaea",
        "bandCode6": "SITPYG"
    },
    {
        "bandCode4": "BHNU",
        "commonName": "Brown-headed Nuthatch",
        "scientificName": "Sitta pusilla",
        "bandCode6": "SITPUS"
    },
    {
        "bandCode4": "BRCR",
        "commonName": "Brown Creeper",
        "scientificName": "Certhia americana",
        "bandCode6": "CERAME"
    },
    {
        "bandCode4": "ROWR",
        "commonName": "Rock Wren",
        "scientificName": "Salpinctes obsoletus",
        "bandCode6": "SALOBS"
    },
    {
        "bandCode4": "NIWR",
        "commonName": "Nightingale Wren",
        "scientificName": "Microcerculus philomela",
        "bandCode6": "MICPHI"
    },
    {
        "bandCode4": "SCBW",
        "bandCode4Conflict": true,
        "commonName": "Scaly-breasted Wren",
        "scientificName": "Microcerculus marginatus",
        "bandCode6": "MICMAR"
    },
    {
        "bandCode4": "CANW",
        "bandCode4Conflict": true,
        "commonName": "Canyon Wren",
        "scientificName": "Catherpes mexicanus",
        "bandCode6": "CAPMEX",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SUWR",
        "commonName": "Sumichrast's Wren",
        "scientificName": "Hylorchilus sumichrasti",
        "bandCode6": "HYLSUM"
    },
    {
        "bandCode4": "NAWR",
        "commonName": "Nava's Wren",
        "scientificName": "Hylorchilus navai",
        "bandCode6": "HYLNAV"
    },
    {
        "bandCode4": "ZAWR",
        "commonName": "Zapata Wren",
        "scientificName": "Ferminia cerverai",
        "bandCode6": "FERCER"
    },
    {
        "bandCode4": "HOWR",
        "commonName": "House Wren",
        "scientificName": "Troglodytes aedon",
        "bandCode6": "TROAED"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SOHW",
        "commonName": "Southern House-Wren",
        "scientificName": "Troglodytes a. musculus",
        "bandCode6": "TROAMU"
    },
    {
        "bandCode4": "SOCW",
        "bandCode4Conflict": true,
        "commonName": "Socorro Wren",
        "scientificName": "Troglodytes sissonii",
        "bandCode6": "TROSIS"
    },
    {
        "bandCode4": "CLWR",
        "commonName": "Clarion Wren",
        "scientificName": "Troglodytes tanneri",
        "bandCode6": "TROTAN"
    },
    {
        "bandCode4": "RBWW",
        "bandCode4Conflict": true,
        "commonName": "Rufous-browed Wren",
        "scientificName": "Troglodytes rufociliatus",
        "bandCode6": "TRORUC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "OCWR",
        "commonName": "Ochraceous Wren",
        "scientificName": "Troglodytes ochraceus",
        "bandCode6": "TROOCH"
    },
    {
        "bandCode4": "PAWR",
        "commonName": "Pacific Wren",
        "scientificName": "Troglodytes pacificus",
        "bandCode6": "TROPAC"
    },
    {
        "bandCode4": "WIWR",
        "commonName": "Winter Wren",
        "scientificName": "Troglodytes hiemalis",
        "bandCode6": "TROHIE"
    },
    {
        "bandCode4": "TIWR",
        "commonName": "Timberline Wren",
        "scientificName": "Thryorchilus browni",
        "bandCode6": "THRBRO"
    },
    {
        "bandCode4": "SEWR",
        "commonName": "Sedge Wren",
        "scientificName": "Cistothorus platensis",
        "bandCode6": "CISPLA"
    },
    {
        "bandCode4": "MAWR",
        "commonName": "Marsh Wren",
        "scientificName": "Cistothorus palustris",
        "bandCode6": "CISPAL"
    },
    {
        "bandCode4": "CARW",
        "bandCode4Conflict": true,
        "commonName": "Carolina Wren",
        "scientificName": "Thryothorus ludovicianus",
        "bandCode6": "THRLUD"
    },
    {
        "bandCode4": "BEWR",
        "commonName": "Bewick's Wren",
        "scientificName": "Thryomanes bewickii",
        "bandCode6": "THRBEW"
    },
    {
        "bandCode4": "WHWR",
        "commonName": "White-headed Wren",
        "scientificName": "Campylorhynchus albobrunneus",
        "bandCode6": "CAMALB"
    },
    {
        "bandCode4": "BABW",
        "bandCode4Conflict": true,
        "commonName": "Band-backed Wren",
        "scientificName": "Campylorhynchus zonatus",
        "bandCode6": "CAMZON"
    },
    {
        "bandCode4": "GBWR",
        "commonName": "Gray-barred Wren",
        "scientificName": "Campylorhynchus megalopterus",
        "bandCode6": "CAMMEG"
    },
    {
        "bandCode4": "GIWR",
        "commonName": "Giant Wren",
        "scientificName": "Campylorhynchus chiapensis",
        "bandCode6": "CAMCHI"
    },
    {
        "bandCode4": "RNAW",
        "bandCode4Conflict": true,
        "commonName": "Rufous-naped Wren",
        "scientificName": "Campylorhynchus rufinucha",
        "bandCode6": "CAMRUN",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SPWR",
        "commonName": "Spotted Wren",
        "scientificName": "Campylorhynchus gularis",
        "bandCode6": "CAMGUL"
    },
    {
        "bandCode4": "BOWR",
        "commonName": "Boucard's Wren",
        "scientificName": "Campylorhynchus jocosus",
        "bandCode6": "CAMJOC"
    },
    {
        "bandCode4": "YUWR",
        "commonName": "Yucatan Wren",
        "scientificName": "Campylorhynchus yucatanicus",
        "bandCode6": "CAMYUC"
    },
    {
        "bandCode4": "CACW",
        "bandCode4Conflict": true,
        "commonName": "Cactus Wren",
        "scientificName": "Campylorhynchus brunneicapillu",
        "bandCode6": "CAMBRU"
    },
    {
        "bandCode4": "SHWR",
        "commonName": "Sooty-headed Wren",
        "scientificName": "Pheugopedius spadix",
        "bandCode6": "PHESPA"
    },
    {
        "bandCode4": "BTWR",
        "commonName": "Black-throated Wren",
        "scientificName": "Pheugopedius atrogularis",
        "bandCode6": "PHEATR"
    },
    {
        "bandCode4": "RBSW",
        "bandCode4Conflict": true,
        "commonName": "Rufous-breasted Wren",
        "scientificName": "Pheugopedius rutilus",
        "bandCode6": "PHERUT"
    },
    {
        "bandCode4": "SBSW",
        "bandCode4Conflict": true,
        "commonName": "Spot-breasted Wren",
        "scientificName": "Pheugopedius maculipectus",
        "bandCode6": "PHEMAC"
    },
    {
        "bandCode4": "HAWR",
        "commonName": "Happy Wren",
        "scientificName": "Pheugopedius felix",
        "bandCode6": "PHEFEL"
    },
    {
        "bandCode4": "BBEW",
        "bandCode4Conflict": true,
        "commonName": "Black-bellied Wren",
        "scientificName": "Pheugopedius fasciatoventris",
        "bandCode6": "PHEFAS"
    },
    {
        "bandCode4": "RAWW",
        "commonName": "Rufous-and-white Wren",
        "scientificName": "Thryophilus rufalbus",
        "bandCode6": "THRRUL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SIWR",
        "commonName": "Sinaloa Wren",
        "scientificName": "Thryophilus sinaloa",
        "bandCode6": "THRSIN"
    },
    {
        "bandCode4": "BANW",
        "bandCode4Conflict": true,
        "commonName": "Banded Wren",
        "scientificName": "Thryophilus pleurostictus",
        "bandCode6": "THRPLE"
    },
    {
        "bandCode4": "STWR",
        "commonName": "Stripe-throated Wren",
        "scientificName": "Cantorchilus leucopogon",
        "bandCode6": "CANLEP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SIBW",
        "bandCode4Conflict": true,
        "commonName": "Stripe-breasted Wren",
        "scientificName": "Cantorchilus thoracicus",
        "bandCode6": "CANTHO"
    },
    {
        "bandCode4": "PLWR",
        "commonName": "Plain Wren",
        "scientificName": "Cantorchilus modestus",
        "bandCode6": "CANMOD"
    },
    {
        "bandCode4": "BAYW",
        "bandCode4Conflict": true,
        "commonName": "Bay Wren",
        "scientificName": "Cantorchilus nigricapillus",
        "bandCode6": "CANNIG"
    },
    {
        "bandCode4": "RIWR",
        "commonName": "Riverside Wren",
        "scientificName": "Cantorchilus semibadius",
        "bandCode6": "CANSEM"
    },
    {
        "bandCode4": "BBRW",
        "bandCode4Conflict": true,
        "commonName": "Buff-breasted Wren",
        "scientificName": "Cantorchilus leucotis",
        "bandCode6": "CANLET",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "WBWR",
        "commonName": "White-bellied Wren",
        "scientificName": "Uropsila leucogastra",
        "bandCode6": "UROLEU"
    },
    {
        "bandCode4": "WBWW",
        "commonName": "White-breasted Wood-Wren",
        "scientificName": "Henicorhina leucosticta",
        "bandCode6": "HENLES",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GBWW",
        "commonName": "Gray-breasted Wood-Wren",
        "scientificName": "Henicorhina leucophrys",
        "bandCode6": "HENLEP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SONW",
        "bandCode4Conflict": true,
        "commonName": "Song Wren",
        "scientificName": "Cyphorhinus phaeocephalus",
        "bandCode6": "CYPPHA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNWR",
        "commonName": "Unidentified Wren",
        "scientificName": "Troglodytidae (gen, sp)",
        "bandCode6": "TRGGSP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "TFGN",
        "commonName": "Tawny-faced Gnatwren",
        "scientificName": "Microbates cinereiventris",
        "bandCode6": "MICCIN"
    },
    {
        "bandCode4": "LBGN",
        "commonName": "Long-billed Gnatwren",
        "scientificName": "Ramphocaenus melanurus",
        "bandCode6": "RAMMEL"
    },
    {
        "bandCode4": "BGGN",
        "commonName": "Blue-gray Gnatcatcher",
        "scientificName": "Polioptila caerulea",
        "bandCode6": "POLCAE"
    },
    {
        "bandCode4": "CUGN",
        "commonName": "Cuban Gnatcatcher",
        "scientificName": "Polioptila lembeyei",
        "bandCode6": "POLLEM"
    },
    {
        "bandCode4": "CAGN",
        "commonName": "California Gnatcatcher",
        "scientificName": "Polioptila californica",
        "bandCode6": "POLCAL"
    },
    {
        "bandCode4": "BTGN",
        "commonName": "Black-tailed Gnatcatcher",
        "scientificName": "Polioptila melanura",
        "bandCode6": "POLMEL"
    },
    {
        "bandCode4": "BCGN",
        "commonName": "Black-capped Gnatcatcher",
        "scientificName": "Polioptila nigriceps",
        "bandCode6": "POLNIG"
    },
    {
        "bandCode4": "WLGN",
        "commonName": "White-lored Gnatcatcher",
        "scientificName": "Polioptila albiloris",
        "bandCode6": "POLALB"
    },
    {
        "bandCode4": "TRGN",
        "commonName": "Tropical Gnatcatcher",
        "scientificName": "Polioptila plumbea",
        "bandCode6": "POLPLU"
    },
    {
        "bandCode4": "STGN",
        "commonName": "Slate-throated Gnatcatcher",
        "scientificName": "Polioptila schistaceigula",
        "bandCode6": "POLSCH"
    },
    {
        "bandCode4": "AMDI",
        "commonName": "American Dipper",
        "scientificName": "Cinclus mexicanus",
        "bandCode6": "CINMEX"
    },
    {
        "bandCode4": "RVBU",
        "commonName": "Red-vented Bulbul",
        "scientificName": "Pycnonotus cafer",
        "bandCode6": "PYCCAF"
    },
    {
        "bandCode4": "RWBU",
        "commonName": "Red-whiskered Bulbul",
        "scientificName": "Pycnonotus jocosus",
        "bandCode6": "PYCJOC"
    },
    {
        "bandCode4": "GCKI",
        "commonName": "Golden-crowned Kinglet",
        "scientificName": "Regulus satrapa",
        "bandCode6": "REGSAT"
    },
    {
        "bandCode4": "RCKI",
        "commonName": "Ruby-crowned Kinglet",
        "scientificName": "Regulus calendula",
        "bandCode6": "REGCAL"
    },
    {
        "bandCode4": "JABW",
        "commonName": "Japanese Bush-Warbler",
        "scientificName": "Cettia diphone",
        "bandCode6": "CETDIP"
    },
    {
        "bandCode4": "WILW",
        "bandCode4Conflict": true,
        "commonName": "Willow Warbler",
        "scientificName": "Phylloscopus trochilus",
        "bandCode6": "PHYTRO"
    },
    {
        "bandCode4": "CCHI",
        "bandCode4Conflict": true,
        "commonName": "Common Chiffchaff",
        "scientificName": "Phylloscopus collybita",
        "bandCode6": "PHYCOL"
    },
    {
        "bandCode4": "WOWA",
        "commonName": "Wood Warbler",
        "scientificName": "Phylloscopus sibilatrix",
        "bandCode6": "PHYSIB"
    },
    {
        "bandCode4": "DUWA",
        "commonName": "Dusky Warbler",
        "scientificName": "Phylloscopus fuscatus",
        "bandCode6": "PHYFUS"
    },
    {
        "bandCode4": "PLEW",
        "bandCode4Conflict": true,
        "commonName": "Pallas's Leaf Warbler",
        "scientificName": "Phylloscopus proregulus",
        "bandCode6": "PHYPRO"
    },
    {
        "bandCode4": "YBWA",
        "commonName": "Yellow-browed Warbler",
        "scientificName": "Phylloscopus inornatus",
        "bandCode6": "PHYINO"
    },
    {
        "bandCode4": "ARWA",
        "commonName": "Arctic Warbler",
        "scientificName": "Phylloscopus borealis",
        "bandCode6": "PHYBOR"
    },
    {
        "bandCode4": "KLWA",
        "commonName": "Kamchatka Leaf Warbler",
        "scientificName": "Phylloscopus examinandus",
        "bandCode6": "PHYEXA"
    },
    {
        "bandCode4": "LEWH",
        "commonName": "Lesser Whitethroat",
        "scientificName": "Sylvia curruca",
        "bandCode6": "SYLCUR"
    },
    {
        "bandCode4": "WREN",
        "commonName": "Wrentit",
        "scientificName": "Chamaea fasciata",
        "bandCode6": "CHAFAS"
    },
    {
        "bandCode4": "JAWE",
        "commonName": "Japanese White-eye",
        "scientificName": "Zosterops japonicus",
        "bandCode6": "ZOSJAP"
    },
    {
        "bandCode4": "GNLA",
        "commonName": "Greater Necklaced Laughingthrush",
        "scientificName": "Garrulax pectoralis",
        "bandCode6": "GARPEC"
    },
    {
        "bandCode4": "HWAM",
        "commonName": "Hwamei",
        "scientificName": "Garrulax canorus",
        "bandCode6": "GARCAN"
    },
    {
        "bandCode4": "RBLE",
        "commonName": "Red-billed Leiothrix",
        "scientificName": "Leiothrix lutea",
        "bandCode6": "LEILUT"
    },
    {
        "bandCode4": "MILL",
        "commonName": "Millerbird",
        "scientificName": "Acrocephalus familiaris",
        "bandCode6": "ACRFAM"
    },
    {
        "bandCode4": "SEWA",
        "commonName": "Sedge Warbler",
        "scientificName": "Acrocephalus schoenobaenus",
        "bandCode6": "ACRSCH"
    },
    {
        "bandCode4": "BCDO",
        "commonName": "Black-capped Donacobius",
        "scientificName": "Donacobius atricapilla",
        "bandCode6": "DONATR"
    },
    {
        "bandCode4": "MIGW",
        "commonName": "Middendorff's Grasshopper-Warbler",
        "scientificName": "Locustella ochotensis",
        "bandCode6": "LOCOCH"
    },
    {
        "bandCode4": "LANW",
        "bandCode4Conflict": true,
        "commonName": "Lanceolated Warbler",
        "scientificName": "Locustella lanceolata",
        "bandCode6": "LOCLAN"
    },
    {
        "bandCode4": "GSFL",
        "commonName": "Gray-streaked Flycatcher",
        "scientificName": "Muscicapa griseisticta",
        "bandCode6": "MUSGRI"
    },
    {
        "bandCode4": "ABFL",
        "commonName": "Asian Brown Flycatcher",
        "scientificName": "Muscicapa dauurica",
        "bandCode6": "MUSDAU"
    },
    {
        "bandCode4": "SPFL",
        "commonName": "Spotted Flycatcher",
        "scientificName": "Muscicapa striata",
        "bandCode6": "MUSSTR"
    },
    {
        "bandCode4": "DSFL",
        "commonName": "Dark-sided Flycatcher",
        "scientificName": "Muscicapa sibirica",
        "bandCode6": "MUSSIB"
    },
    {
        "bandCode4": "WRSH",
        "commonName": "White-rumped Shama",
        "scientificName": "Copsychus malabaricus",
        "bandCode6": "COPMAL"
    },
    {
        "bandCode4": "RTRO",
        "commonName": "Rufous-tailed Robin",
        "scientificName": "Luscinia sibilans",
        "bandCode6": "LUSSIB"
    },
    {
        "bandCode4": "SIRU",
        "commonName": "Siberian Rubythroat",
        "scientificName": "Luscinia calliope",
        "bandCode6": "LUSCAL"
    },
    {
        "bandCode4": "BLUE",
        "commonName": "Bluethroat",
        "scientificName": "Luscinia svecica",
        "bandCode6": "LUSSVE"
    },
    {
        "bandCode4": "SBRO",
        "commonName": "Siberian Blue Robin",
        "scientificName": "Luscinia cyane",
        "bandCode6": "LUSCYA"
    },
    {
        "bandCode4": "RFBL",
        "commonName": "Red-flanked Bluetail",
        "scientificName": "Tarsiger cyanurus",
        "bandCode6": "TARCYA"
    },
    {
        "bandCode4": "NAFL",
        "commonName": "Narcissus Flycatcher",
        "scientificName": "Ficedula narcissina",
        "bandCode6": "FICNAR"
    },
    {
        "bandCode4": "MUFL",
        "commonName": "Mugimaki Flycatcher",
        "scientificName": "Ficedula mugimaki",
        "bandCode6": "FICMUG"
    },
    {
        "bandCode4": "TAFL",
        "commonName": "Taiga Flycatcher",
        "scientificName": "Ficedula albicilla",
        "bandCode6": "FICALB"
    },
    {
        "bandCode4": "NOWH",
        "commonName": "Northern Wheatear",
        "scientificName": "Oenanthe oenanthe",
        "bandCode6": "OENOEN"
    },
    {
        "bandCode4": "STON",
        "commonName": "Stonechat",
        "scientificName": "Saxicola torquatus",
        "bandCode6": "SAXTOR"
    },
    {
        "bandCode4": "EABL",
        "commonName": "Eastern Bluebird",
        "scientificName": "Sialia sialis",
        "bandCode6": "SIASIA"
    },
    {
        "bandCode4": "WEBL",
        "commonName": "Western Bluebird",
        "scientificName": "Sialia mexicana",
        "bandCode6": "SIAMEX"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "WMBH",
        "commonName": "Western X Mountain Bluebird Hybrid",
        "scientificName": "Sialia mex. x currucoid.",
        "bandCode6": "SIAMEC"
    },
    {
        "bandCode4": "MOBL",
        "commonName": "Mountain Bluebird",
        "scientificName": "Sialia currucoides",
        "bandCode6": "SIACUR"
    },
    {
        "bandCode4": "TOSO",
        "commonName": "Townsend's Solitaire",
        "scientificName": "Myadestes townsendi",
        "bandCode6": "MYATOW"
    },
    {
        "bandCode4": "BBSO",
        "commonName": "Brown-backed Solitaire",
        "scientificName": "Myadestes occidentalis",
        "bandCode6": "MYAOCC"
    },
    {
        "bandCode4": "CUSO",
        "commonName": "Cuban Solitaire",
        "scientificName": "Myadestes elisabeth",
        "bandCode6": "MYAELI"
    },
    {
        "bandCode4": "RTSO",
        "commonName": "Rufous-throated Solitaire",
        "scientificName": "Myadestes genibarbis",
        "bandCode6": "MYAGEN"
    },
    {
        "bandCode4": "BFSO",
        "commonName": "Black-faced Solitaire",
        "scientificName": "Myadestes melanops",
        "bandCode6": "MYAMEL"
    },
    {
        "bandCode4": "VASO",
        "commonName": "Varied Solitaire",
        "scientificName": "Myadestes coloratus",
        "bandCode6": "MYACOL"
    },
    {
        "bandCode4": "SCSO",
        "commonName": "Slate-colored Solitaire",
        "scientificName": "Myadestes unicolor",
        "bandCode6": "MYAUNI"
    },
    {
        "bandCode4": "KAMA",
        "commonName": "Kamao",
        "scientificName": "Myadestes myadestinus",
        "bandCode6": "MYAMYA"
    },
    {
        "bandCode4": "AMAU",
        "commonName": "Amaui",
        "scientificName": "Myadestes woahensis",
        "bandCode6": "MYAWOA"
    },
    {
        "bandCode4": "OLOM",
        "commonName": "Olomao",
        "scientificName": "Myadestes lanaiensis",
        "bandCode6": "MYALAN"
    },
    {
        "bandCode4": "OMAO",
        "commonName": "Omao",
        "scientificName": "Myadestes obscurus",
        "bandCode6": "MYAOBS"
    },
    {
        "bandCode4": "PUAI",
        "commonName": "Puaiohi",
        "scientificName": "Myadestes palmeri",
        "bandCode6": "MYAPAL"
    },
    {
        "bandCode4": "BBNT",
        "commonName": "Black-billed Nightingale-Thrush",
        "scientificName": "Catharus gracilirostris",
        "bandCode6": "CATGRA"
    },
    {
        "bandCode4": "OBNT",
        "commonName": "Orange-billed Nightingale-Thrush",
        "scientificName": "Catharus aurantiirostris",
        "bandCode6": "CATAUN",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SBNT",
        "commonName": "Slaty-backed Nightingale-Thrush",
        "scientificName": "Catharus fuscater",
        "bandCode6": "CATFUT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "RUNT",
        "commonName": "Russet Nightingale-Thrush",
        "scientificName": "Catharus occidentalis",
        "bandCode6": "CATOCC"
    },
    {
        "bandCode4": "RCNT",
        "commonName": "Ruddy-capped Nightingale-Thrush",
        "scientificName": "Catharus frantzii",
        "bandCode6": "CATFRA"
    },
    {
        "bandCode4": "BHNT",
        "commonName": "Black-headed Nightingale-Thrush",
        "scientificName": "Catharus mexicanus",
        "bandCode6": "CASMEX",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SPNT",
        "commonName": "Spotted Nightingale-Thrush",
        "scientificName": "Catharus dryas",
        "bandCode6": "CATDRY"
    },
    {
        "bandCode4": "VEER",
        "commonName": "Veery",
        "scientificName": "Catharus fuscescens",
        "bandCode6": "CATFUN",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "GCTH",
        "commonName": "Gray-cheeked Thrush",
        "scientificName": "Catharus minimus",
        "bandCode6": "CATMIN"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "GCBT",
        "commonName": "Gray-cheeked/Bicknell's Thrush",
        "scientificName": "Catharus minimus x bickn.",
        "bandCode6": "CATMIB"
    },
    {
        "bandCode4": "BITH",
        "commonName": "Bicknell's Thrush",
        "scientificName": "Catharus bicknelli",
        "bandCode6": "CATBIC"
    },
    {
        "bandCode4": "SWTH",
        "commonName": "Swainson's Thrush",
        "scientificName": "Catharus ustulatus",
        "bandCode6": "CATUST"
    },
    {
        "bandCode4": "HETH",
        "commonName": "Hermit Thrush",
        "scientificName": "Catharus guttatus",
        "bandCode6": "CATGUT"
    },
    {
        "bandCode4": "WOTH",
        "commonName": "Wood Thrush",
        "scientificName": "Hylocichla mustelina",
        "bandCode6": "HYLMUS"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNTH",
        "commonName": "Unidentified Thrush",
        "scientificName": "Turdidae (gen, sp)",
        "bandCode6": "TURGSP"
    },
    {
        "bandCode4": "EUBL",
        "commonName": "Eurasian Blackbird",
        "scientificName": "Turdus merula",
        "bandCode6": "TURMER"
    },
    {
        "bandCode4": "EYTH",
        "commonName": "Eyebrowed Thrush",
        "scientificName": "Turdus obscurus",
        "bandCode6": "TUROBC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "DUTH",
        "commonName": "Dusky Thrush",
        "scientificName": "Turdus naumanni",
        "bandCode6": "TURNAU"
    },
    {
        "bandCode4": "FIEL",
        "commonName": "Fieldfare",
        "scientificName": "Turdus pilaris",
        "bandCode6": "TURPIL"
    },
    {
        "bandCode4": "REDW",
        "commonName": "Redwing",
        "scientificName": "Turdus iliacus",
        "bandCode6": "TURILI"
    },
    {
        "bandCode4": "SOTH",
        "bandCode4Conflict": true,
        "commonName": "Song Thrush",
        "scientificName": "Turdus philomelos",
        "bandCode6": "TURPHI"
    },
    {
        "bandCode4": "SOOT",
        "bandCode4Conflict": true,
        "commonName": "Sooty Thrush",
        "scientificName": "Turdus nigrescens",
        "bandCode6": "TURNIG"
    },
    {
        "bandCode4": "BLTH",
        "commonName": "Black Thrush",
        "scientificName": "Turdus infuscatus",
        "bandCode6": "TURINF"
    },
    {
        "bandCode4": "MOTH",
        "commonName": "Mountain Thrush",
        "scientificName": "Turdus plebejus",
        "bandCode6": "TURPLE"
    },
    {
        "bandCode4": "COCT",
        "bandCode4Conflict": true,
        "commonName": "Cocoa Thrush",
        "scientificName": "Turdus fumigatus",
        "bandCode6": "TURFUM"
    },
    {
        "bandCode4": "PVTH",
        "commonName": "Pale-vented Thrush",
        "scientificName": "Turdus obsoletus",
        "bandCode6": "TUROBL",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "CCTH",
        "commonName": "Clay-colored Thrush",
        "scientificName": "Turdus grayi",
        "bandCode6": "TURGRA"
    },
    {
        "bandCode4": "SPTH",
        "commonName": "Spectacled Thrush",
        "scientificName": "Turdus nudigenis",
        "bandCode6": "TURNUD"
    },
    {
        "bandCode4": "WETH",
        "commonName": "White-eyed Thrush",
        "scientificName": "Turdus jamaicensis",
        "bandCode6": "TURJAM"
    },
    {
        "bandCode4": "WTTH",
        "commonName": "White-throated Thrush",
        "scientificName": "Turdus assimilis",
        "bandCode6": "TURASS"
    },
    {
        "bandCode4": "RBRO",
        "commonName": "Rufous-backed Robin",
        "scientificName": "Turdus rufopalliatus",
        "bandCode6": "TURRUP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "RCRO",
        "commonName": "Rufous-collared Robin",
        "scientificName": "Turdus rufitorques",
        "bandCode6": "TURRUT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "AMRO",
        "commonName": "American Robin",
        "scientificName": "Turdus migratorius",
        "bandCode6": "TURMIG"
    },
    {
        "bandCode4": "LSTH",
        "commonName": "La Selle Thrush",
        "scientificName": "Turdus swalesi",
        "bandCode6": "TURSWA"
    },
    {
        "bandCode4": "WCTH",
        "commonName": "White-chinned Thrush",
        "scientificName": "Turdus aurantius",
        "bandCode6": "TURAUR"
    },
    {
        "bandCode4": "GCAT",
        "bandCode4Conflict": true,
        "commonName": "Grand Cayman Thrush",
        "scientificName": "Turdus ravidus",
        "bandCode6": "TURRAV"
    },
    {
        "bandCode4": "RLTH",
        "commonName": "Red-legged Thrush",
        "scientificName": "Turdus plumbeus",
        "bandCode6": "TURPLU"
    },
    {
        "bandCode4": "FOTH",
        "commonName": "Forest Thrush",
        "scientificName": "Turdus lherminieri",
        "bandCode6": "TURLHE"
    },
    {
        "bandCode4": "VATH",
        "commonName": "Varied Thrush",
        "scientificName": "Ixoreus naevius",
        "bandCode6": "IXONAE"
    },
    {
        "bandCode4": "AZTH",
        "commonName": "Aztec Thrush",
        "scientificName": "Ridgwayia pinicola",
        "bandCode6": "RIDPIN"
    },
    {
        "bandCode4": "BLMO",
        "commonName": "Blue Mockingbird",
        "scientificName": "Melanotis caerulescens",
        "bandCode6": "MELCAE"
    },
    {
        "bandCode4": "BAWM",
        "commonName": "Blue-and-white Mockingbird",
        "scientificName": "Melanotis hypoleucus",
        "bandCode6": "MELHYC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BLCA",
        "commonName": "Black Catbird",
        "scientificName": "Melanoptila glabrirostris",
        "bandCode6": "MELGLA"
    },
    {
        "bandCode4": "GRCA",
        "commonName": "Gray Catbird",
        "scientificName": "Dumetella carolinensis",
        "bandCode6": "DUMCAR"
    },
    {
        "bandCode4": "WBTH",
        "commonName": "White-breasted Thrasher",
        "scientificName": "Ramphocinclus brachyurus",
        "bandCode6": "RAMBRA"
    },
    {
        "bandCode4": "SBTH",
        "commonName": "Scaly-breasted Thrasher",
        "scientificName": "Allenia fusca",
        "bandCode6": "ALLFUC"
    },
    {
        "bandCode4": "PETH",
        "commonName": "Pearly-eyed Thrasher",
        "scientificName": "Margarops fuscatus",
        "bandCode6": "MARFUS"
    },
    {
        "bandCode4": "BRTR",
        "commonName": "Brown Trembler",
        "scientificName": "Cinclocerthia ruficauda",
        "bandCode6": "CINRUF"
    },
    {
        "bandCode4": "GRTR",
        "commonName": "Gray Trembler",
        "scientificName": "Cinclocerthia gutturalis",
        "bandCode6": "CINGUT"
    },
    {
        "bandCode4": "CBTH",
        "commonName": "Curve-billed Thrasher",
        "scientificName": "Toxostoma curvirostre",
        "bandCode6": "TOXCUR"
    },
    {
        "bandCode4": "OCTH",
        "commonName": "Ocellated Thrasher",
        "scientificName": "Toxostoma ocellatum",
        "bandCode6": "TOXOCE"
    },
    {
        "bandCode4": "BRTH",
        "commonName": "Brown Thrasher",
        "scientificName": "Toxostoma rufum",
        "bandCode6": "TOXRUF"
    },
    {
        "bandCode4": "LBTH",
        "commonName": "Long-billed Thrasher",
        "scientificName": "Toxostoma longirostre",
        "bandCode6": "TOXLON"
    },
    {
        "bandCode4": "COZT",
        "bandCode4Conflict": true,
        "commonName": "Cozumel Thrasher",
        "scientificName": "Toxostoma guttatum",
        "bandCode6": "TOXGUT"
    },
    {
        "bandCode4": "BETH",
        "commonName": "Bendire's Thrasher",
        "scientificName": "Toxostoma bendirei",
        "bandCode6": "TOXBEN"
    },
    {
        "bandCode4": "GRAT",
        "bandCode4Conflict": true,
        "commonName": "Gray Thrasher",
        "scientificName": "Toxostoma cinereum",
        "bandCode6": "TOXCIN"
    },
    {
        "bandCode4": "CATH",
        "commonName": "California Thrasher",
        "scientificName": "Toxostoma redivivum",
        "bandCode6": "TOXRED"
    },
    {
        "bandCode4": "LCTH",
        "commonName": "Le Conte's Thrasher",
        "scientificName": "Toxostoma lecontei",
        "bandCode6": "TOXLEC"
    },
    {
        "bandCode4": "CRTH",
        "commonName": "Crissal Thrasher",
        "scientificName": "Toxostoma crissale",
        "bandCode6": "TOXCRI"
    },
    {
        "bandCode4": "SATH",
        "commonName": "Sage Thrasher",
        "scientificName": "Oreoscoptes montanus",
        "bandCode6": "OREMON"
    },
    {
        "bandCode4": "BAMO",
        "commonName": "Bahama Mockingbird",
        "scientificName": "Mimus gundlachii",
        "bandCode6": "MIMGUN"
    },
    {
        "bandCode4": "SOMO",
        "commonName": "Socorro Mockingbird",
        "scientificName": "Mimus graysoni",
        "bandCode6": "MIMGRA"
    },
    {
        "bandCode4": "TRMO",
        "commonName": "Tropical Mockingbird",
        "scientificName": "Mimus gilvus",
        "bandCode6": "MIMGIL"
    },
    {
        "bandCode4": "NOMO",
        "commonName": "Northern Mockingbird",
        "scientificName": "Mimus polyglottos",
        "bandCode6": "MIMPOL"
    },
    {
        "bandCode4": "EUST",
        "commonName": "European Starling",
        "scientificName": "Sturnus vulgaris",
        "bandCode6": "STUVUL"
    },
    {
        "bandCode4": "COMY",
        "commonName": "Common Myna",
        "scientificName": "Acridotheres tristis",
        "bandCode6": "ACRTRI"
    },
    {
        "bandCode4": "HIMY",
        "commonName": "Hill Myna",
        "scientificName": "Gracula religiosa",
        "bandCode6": "GRAREL"
    },
    {
        "bandCode4": "SIAC",
        "commonName": "Siberian Accentor",
        "scientificName": "Prunella montanella",
        "bandCode6": "PRUMON"
    },
    {
        "bandCode4": "EYWA",
        "commonName": "Eastern Yellow Wagtail",
        "scientificName": "Motacilla tschutschensis",
        "bandCode6": "MOTTSC"
    },
    {
        "bandCode4": "CIWA",
        "commonName": "Citrine Wagtail",
        "scientificName": "Motacilla citreola",
        "bandCode6": "MOTCIT"
    },
    {
        "bandCode4": "GRAW",
        "bandCode4Conflict": true,
        "commonName": "Gray Wagtail",
        "scientificName": "Motacilla cinerea",
        "bandCode6": "MOTCIN"
    },
    {
        "bandCode4": "WHWA",
        "commonName": "White Wagtail",
        "scientificName": "Motacilla alba",
        "bandCode6": "MOTALB"
    },
    {
        "bandCode4": "TRPI",
        "commonName": "Tree Pipit",
        "scientificName": "Anthus trivialis",
        "bandCode6": "ANTTRI"
    },
    {
        "bandCode4": "OBPI",
        "commonName": "Olive-backed Pipit",
        "scientificName": "Anthus hodgsoni",
        "bandCode6": "ANTHOD"
    },
    {
        "bandCode4": "PEPI",
        "commonName": "Pechora Pipit",
        "scientificName": "Anthus gustavi",
        "bandCode6": "ANTGUS"
    },
    {
        "bandCode4": "RTPI",
        "commonName": "Red-throated Pipit",
        "scientificName": "Anthus cervinus",
        "bandCode6": "ANTCER"
    },
    {
        "bandCode4": "AMPI",
        "commonName": "American Pipit",
        "scientificName": "Anthus rubescens",
        "bandCode6": "ANTRUB"
    },
    {
        "bandCode4": "SPPI",
        "commonName": "Sprague's Pipit",
        "scientificName": "Anthus spragueii",
        "bandCode6": "ANTSPR"
    },
    {
        "bandCode4": "YEPI",
        "commonName": "Yellowish Pipit",
        "scientificName": "Anthus lutescens",
        "bandCode6": "ANTLUT"
    },
    {
        "bandCode4": "BOWA",
        "commonName": "Bohemian Waxwing",
        "scientificName": "Bombycilla garrulus",
        "bandCode6": "BOMGAR"
    },
    {
        "bandCode4": "CEDW",
        "bandCode4Conflict": true,
        "commonName": "Cedar Waxwing",
        "scientificName": "Bombycilla cedrorum",
        "bandCode6": "BOMCED"
    },
    {
        "bandCode4": "KAOO",
        "commonName": "Kauai Oo",
        "scientificName": "Moho braccatus",
        "bandCode6": "MOHBRA"
    },
    {
        "bandCode4": "OAOO",
        "commonName": "Oahu Oo",
        "scientificName": "Moho apicalis",
        "bandCode6": "MOHAPI"
    },
    {
        "bandCode4": "BIOO",
        "commonName": "Bishop's Oo",
        "scientificName": "Moho bishopi",
        "bandCode6": "MOHBIS"
    },
    {
        "bandCode4": "HAOO",
        "commonName": "Hawaii Oo",
        "scientificName": "Moho nobilis",
        "bandCode6": "MOHNOB"
    },
    {
        "bandCode4": "KIOE",
        "commonName": "Kioea",
        "scientificName": "Chaetoptila angustipluma",
        "bandCode6": "CHAANG"
    },
    {
        "bandCode4": "BAYS",
        "commonName": "Black-and-yellow Silky-flycatcher",
        "scientificName": "Phainoptila melanoxantha",
        "bandCode6": "PHAMEL"
    },
    {
        "bandCode4": "GRSF",
        "commonName": "Gray Silky-flycatcher",
        "scientificName": "Ptiliogonys cinereus",
        "bandCode6": "PTICIN"
    },
    {
        "bandCode4": "LTSF",
        "commonName": "Long-tailed Silky-flycatcher",
        "scientificName": "Ptiliogonys caudatus",
        "bandCode6": "PTICAU"
    },
    {
        "bandCode4": "PHAI",
        "commonName": "Phainopepla",
        "scientificName": "Phainopepla nitens",
        "bandCode6": "PHANIT"
    },
    {
        "bandCode4": "PALM",
        "commonName": "Palmchat",
        "scientificName": "Dulus dominicus",
        "bandCode6": "DULDOM"
    },
    {
        "bandCode4": "OLWA",
        "commonName": "Olive Warbler",
        "scientificName": "Peucedramus taeniatus",
        "bandCode6": "PEUTAE"
    },
    {
        "bandCode4": "LALO",
        "commonName": "Lapland Longspur",
        "scientificName": "Calcarius lapponicus",
        "bandCode6": "CALLAP"
    },
    {
        "bandCode4": "CCLO",
        "commonName": "Chestnut-collared Longspur",
        "scientificName": "Calcarius ornatus",
        "bandCode6": "CALORN"
    },
    {
        "bandCode4": "SMLO",
        "commonName": "Smith's Longspur",
        "scientificName": "Calcarius pictus",
        "bandCode6": "CALPIC"
    },
    {
        "bandCode4": "MCLO",
        "commonName": "McCown's Longspur",
        "scientificName": "Rhynchophanes mccownii",
        "bandCode6": "RHYMCC"
    },
    {
        "bandCode4": "SNBU",
        "commonName": "Snow Bunting",
        "scientificName": "Plectrophenax nivalis",
        "bandCode6": "PLENIV"
    },
    {
        "bandCode4": "MKBU",
        "commonName": "McKay's Bunting",
        "scientificName": "Plectrophenax hyperboreus",
        "bandCode6": "PLEHYP"
    },
    {
        "bandCode4": "OVEN",
        "commonName": "Ovenbird",
        "scientificName": "Seiurus aurocapilla",
        "bandCode6": "SEIAUR"
    },
    {
        "bandCode4": "WEWA",
        "commonName": "Worm-eating Warbler",
        "scientificName": "Helmitheros vermivorum",
        "bandCode6": "HELVER"
    },
    {
        "bandCode4": "LOWA",
        "commonName": "Louisiana Waterthrush",
        "scientificName": "Parkesia motacilla",
        "bandCode6": "PARMOT"
    },
    {
        "bandCode4": "NOWA",
        "commonName": "Northern Waterthrush",
        "scientificName": "Parkesia noveboracensis",
        "bandCode6": "PARNOV"
    },
    {
        "bandCode4": "BAWA",
        "commonName": "Bachman's Warbler",
        "scientificName": "Vermivora bachmanii",
        "bandCode6": "VERBAC"
    },
    {
        "bandCode4": "GWWA",
        "commonName": "Golden-winged Warbler",
        "scientificName": "Vermivora chrysoptera",
        "bandCode6": "VERCHR"
    },
    {
        "bandCode4": "BWWA",
        "commonName": "Blue-winged Warbler",
        "scientificName": "Vermivora cyanoptera",
        "bandCode6": "VERCYA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "BRWA",
        "commonName": "Brewster's Warbler",
        "scientificName": "Vermivora chrysoptera x cyanop",
        "bandCode6": "VERCCY"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LAWA",
        "commonName": "Lawrence's Warbler",
        "scientificName": "Vermivora cyanoptera x chrysop",
        "bandCode6": "VERCCH"
    },
    {
        "bandCode4": "BAWW",
        "commonName": "Black-and-white Warbler",
        "scientificName": "Mniotilta varia",
        "bandCode6": "MNIVAR"
    },
    {
        "bandCode4": "PROW",
        "bandCode4Conflict": true,
        "commonName": "Prothonotary Warbler",
        "scientificName": "Protonotaria citrea",
        "bandCode6": "PROCIT"
    },
    {
        "bandCode4": "SWWA",
        "commonName": "Swainson's Warbler",
        "scientificName": "Limnothlypis swainsonii",
        "bandCode6": "LIMSWA"
    },
    {
        "bandCode4": "CCWA",
        "commonName": "Crescent-chested Warbler",
        "scientificName": "Oreothlypis superciliosa",
        "bandCode6": "ORESUP"
    },
    {
        "bandCode4": "FTHW",
        "bandCode4Conflict": true,
        "commonName": "Flame-throated Warbler",
        "scientificName": "Oreothlypis gutturalis",
        "bandCode6": "OREGUT"
    },
    {
        "bandCode4": "TEWA",
        "commonName": "Tennessee Warbler",
        "scientificName": "Oreothlypis peregrina",
        "bandCode6": "OREPER"
    },
    {
        "bandCode4": "OCWA",
        "commonName": "Orange-crowned Warbler",
        "scientificName": "Oreothlypis celata",
        "bandCode6": "ORECEL"
    },
    {
        "bandCode4": "COLW",
        "bandCode4Conflict": true,
        "commonName": "Colima Warbler",
        "scientificName": "Oreothlypis crissalis",
        "bandCode6": "ORECRI"
    },
    {
        "bandCode4": "LUWA",
        "commonName": "Lucy's Warbler",
        "scientificName": "Oreothlypis luciae",
        "bandCode6": "ORELUC"
    },
    {
        "bandCode4": "NAWA",
        "commonName": "Nashville Warbler",
        "scientificName": "Oreothlypis ruficapilla",
        "bandCode6": "ORERUF"
    },
    {
        "bandCode4": "VIWA",
        "commonName": "Virginia's Warbler",
        "scientificName": "Oreothlypis virginiae",
        "bandCode6": "OREVIR"
    },
    {
        "bandCode4": "SEMW",
        "bandCode4Conflict": true,
        "commonName": "Semper's Warbler",
        "scientificName": "Leucopeza semperi",
        "bandCode6": "LEUSER",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "CONW",
        "bandCode4Conflict": true,
        "commonName": "Connecticut Warbler",
        "scientificName": "Oporornis agilis",
        "bandCode6": "OPOAGI"
    },
    {
        "bandCode4": "GCYE",
        "commonName": "Gray-crowned Yellowthroat",
        "scientificName": "Geothlypis poliocephala",
        "bandCode6": "GEOPOL"
    },
    {
        "bandCode4": "MAYE",
        "commonName": "Masked Yellowthroat",
        "scientificName": "Geothlypis aequinoctialis",
        "bandCode6": "GEOAEQ"
    },
    {
        "bandCode4": "MGWA",
        "commonName": "MacGillivray's Warbler",
        "scientificName": "Geothlypis tolmiei",
        "bandCode6": "GEOTOL"
    },
    {
        "bandCode4": "MOWA",
        "commonName": "Mourning Warbler",
        "scientificName": "Geothlypis philadelphia",
        "bandCode6": "GEOPHI"
    },
    {
        "bandCode4": "KEWA",
        "commonName": "Kentucky Warbler",
        "scientificName": "Geothlypis formosa",
        "bandCode6": "GEOFOR"
    },
    {
        "bandCode4": "OCYE",
        "commonName": "Olive-crowned Yellowthroat",
        "scientificName": "Geothlypis semiflava",
        "bandCode6": "GEOSEM"
    },
    {
        "bandCode4": "BPYE",
        "commonName": "Black-polled Yellowthroat",
        "scientificName": "Geothlypis speciosa",
        "bandCode6": "GEOSPE"
    },
    {
        "bandCode4": "BEYE",
        "commonName": "Belding's Yellowthroat",
        "scientificName": "Geothlypis beldingi",
        "bandCode6": "GEOBEL"
    },
    {
        "bandCode4": "BAYE",
        "commonName": "Bahama Yellowthroat",
        "scientificName": "Geothlypis rostrata",
        "bandCode6": "GEOROS"
    },
    {
        "bandCode4": "ALYE",
        "commonName": "Altamira Yellowthroat",
        "scientificName": "Geothlypis flavovelata",
        "bandCode6": "GEOFLA"
    },
    {
        "bandCode4": "COYE",
        "commonName": "Common Yellowthroat",
        "scientificName": "Geothlypis trichas",
        "bandCode6": "GEOTRI"
    },
    {
        "bandCode4": "HOYE",
        "commonName": "Hooded Yellowthroat",
        "scientificName": "Geothlypis nelsoni",
        "bandCode6": "GEONEL"
    },
    {
        "bandCode4": "WHIW",
        "bandCode4Conflict": true,
        "commonName": "Whistling Warbler",
        "scientificName": "Catharopeza bishopi",
        "bandCode6": "CATBIS"
    },
    {
        "bandCode4": "PLUW",
        "bandCode4Conflict": true,
        "commonName": "Plumbeous Warbler",
        "scientificName": "Setophaga plumbea",
        "bandCode6": "SETPLU"
    },
    {
        "bandCode4": "EWWA",
        "commonName": "Elfin-woods Warbler",
        "scientificName": "Setophaga angelae",
        "bandCode6": "SETANG"
    },
    {
        "bandCode4": "ARRW",
        "bandCode4Conflict": true,
        "commonName": "Arrowhead Warbler",
        "scientificName": "Setophaga pharetra",
        "bandCode6": "SETPHA"
    },
    {
        "bandCode4": "HOWA",
        "commonName": "Hooded Warbler",
        "scientificName": "Setophaga citrina",
        "bandCode6": "SETCIT"
    },
    {
        "bandCode4": "AMRE",
        "commonName": "American Redstart",
        "scientificName": "Setophaga ruticilla",
        "bandCode6": "SETRUT"
    },
    {
        "bandCode4": "KIWA",
        "commonName": "Kirtland's Warbler",
        "scientificName": "Setophaga kirtlandii",
        "bandCode6": "SETKIR"
    },
    {
        "bandCode4": "CMWA",
        "commonName": "Cape May Warbler",
        "scientificName": "Setophaga tigrina",
        "bandCode6": "SETTIG"
    },
    {
        "bandCode4": "CERW",
        "bandCode4Conflict": true,
        "commonName": "Cerulean Warbler",
        "scientificName": "Setophaga cerulea",
        "bandCode6": "SETCER"
    },
    {
        "bandCode4": "NOPA",
        "commonName": "Northern Parula",
        "scientificName": "Setophaga americana",
        "bandCode6": "SETAME"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SUWA",
        "commonName": "Sutton's Warbler",
        "scientificName": "Setophaga americana x dominica",
        "bandCode6": "SETAMD"
    },
    {
        "bandCode4": "TRPA",
        "commonName": "Tropical Parula",
        "scientificName": "Setophaga pitiayumi",
        "bandCode6": "SETPIM",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "MAWA",
        "commonName": "Magnolia Warbler",
        "scientificName": "Setophaga magnolia",
        "bandCode6": "SETMAG"
    },
    {
        "bandCode4": "BBWA",
        "commonName": "Bay-breasted Warbler",
        "scientificName": "Setophaga castanea",
        "bandCode6": "SETCAS"
    },
    {
        "bandCode4": "BLBW",
        "bandCode4Conflict": true,
        "commonName": "Blackburnian Warbler",
        "scientificName": "Setophaga fusca",
        "bandCode6": "SETFUS"
    },
    {
        "bandCode4": "YEWA",
        "commonName": "Yellow Warbler",
        "scientificName": "Setophaga petechia",
        "bandCode6": "SETPET"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "MANW",
        "bandCode4Conflict": true,
        "commonName": "Mangrove Warbler",
        "scientificName": "Setophaga petechia erithachori",
        "bandCode6": "SETPER"
    },
    {
        "bandCode4": "CSWA",
        "commonName": "Chestnut-sided Warbler",
        "scientificName": "Setophaga pensylvanica",
        "bandCode6": "SETPEN"
    },
    {
        "bandCode4": "BLPW",
        "bandCode4Conflict": true,
        "commonName": "Blackpoll Warbler",
        "scientificName": "Setophaga striata",
        "bandCode6": "SETSTR"
    },
    {
        "bandCode4": "BTBW",
        "commonName": "Black-throated Blue Warbler",
        "scientificName": "Setophaga caerulescens",
        "bandCode6": "SETCAE"
    },
    {
        "bandCode4": "PAWA",
        "commonName": "Palm Warbler",
        "scientificName": "Setophaga palmarum",
        "bandCode6": "SETPAL"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "WPWA",
        "commonName": "Western Palm Warbler",
        "scientificName": "Setophaga palmarum palmarum",
        "bandCode6": "SETPPA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "YPWA",
        "commonName": "Yellow Palm Warbler",
        "scientificName": "Setophaga palmarum hypochrysea",
        "bandCode6": "SETPHY"
    },
    {
        "bandCode4": "OCAW",
        "bandCode4Conflict": true,
        "commonName": "Olive-capped Warbler",
        "scientificName": "Setophaga pityophila",
        "bandCode6": "SETPIP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PIWA",
        "commonName": "Pine Warbler",
        "scientificName": "Setophaga pinus",
        "bandCode6": "SETPIN"
    },
    {
        "bandCode4": "YRWA",
        "commonName": "Yellow-rumped Warbler",
        "scientificName": "Setophaga coronata",
        "bandCode6": "SETCOR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "MYWA",
        "commonName": "Myrtle Warbler",
        "scientificName": "Setophaga coronata coronata",
        "bandCode6": "SETCCO"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "AUWA",
        "commonName": "Audubon's Warbler",
        "scientificName": "Setophaga coronata auduboni",
        "bandCode6": "SETCAU"
    },
    {
        "bandCode4": "YTWA",
        "commonName": "Yellow-throated Warbler",
        "scientificName": "Setophaga dominica",
        "bandCode6": "SETDOM"
    },
    {
        "bandCode4": "BAHW",
        "bandCode4Conflict": true,
        "commonName": "Bahama Warbler",
        "scientificName": "Setophaga flavescens",
        "bandCode6": "SETFLA"
    },
    {
        "bandCode4": "VITW",
        "bandCode4Conflict": true,
        "commonName": "Vitelline Warbler",
        "scientificName": "Setophaga vitellina",
        "bandCode6": "SETVIT"
    },
    {
        "bandCode4": "PRAW",
        "bandCode4Conflict": true,
        "commonName": "Prairie Warbler",
        "scientificName": "Setophaga discolor",
        "bandCode6": "SETDIS"
    },
    {
        "bandCode4": "ADWA",
        "commonName": "Adelaide's Warbler",
        "scientificName": "Setophaga adelaidae",
        "bandCode6": "SETADE"
    },
    {
        "bandCode4": "BARW",
        "bandCode4Conflict": true,
        "commonName": "Barbuda Warbler",
        "scientificName": "Setophaga subita",
        "bandCode6": "SETSUB"
    },
    {
        "bandCode4": "SLWA",
        "commonName": "St. Lucia Warbler",
        "scientificName": "Setophaga delicata",
        "bandCode6": "SETDEL"
    },
    {
        "bandCode4": "GRWA",
        "commonName": "Grace's Warbler",
        "scientificName": "Setophaga graciae",
        "bandCode6": "SETGRA"
    },
    {
        "bandCode4": "BTYW",
        "bandCode4Conflict": true,
        "commonName": "Black-throated Gray Warbler",
        "scientificName": "Setophaga nigrescens",
        "bandCode6": "SETNIG"
    },
    {
        "bandCode4": "TOWA",
        "commonName": "Townsend's Warbler",
        "scientificName": "Setophaga townsendi",
        "bandCode6": "SETTOW"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "THWH",
        "commonName": "Townsend's x Hermit Warbler Hybrid",
        "scientificName": "Setophaga townsendi x occident",
        "bandCode6": "SETTOO"
    },
    {
        "bandCode4": "HEWA",
        "commonName": "Hermit Warbler",
        "scientificName": "Setophaga occidentalis",
        "bandCode6": "SETOCC"
    },
    {
        "bandCode4": "GCWA",
        "commonName": "Golden-cheeked Warbler",
        "scientificName": "Setophaga chrysoparia",
        "bandCode6": "SETCHR"
    },
    {
        "bandCode4": "BTNW",
        "bandCode4Conflict": true,
        "commonName": "Black-throated Green Warbler",
        "scientificName": "Setophaga virens",
        "bandCode6": "SETVIR"
    },
    {
        "bandCode4": "BURW",
        "bandCode4Conflict": true,
        "commonName": "Buff-rumped Warbler",
        "scientificName": "Myiothlypis fulvicauda",
        "bandCode6": "MYIFUL"
    },
    {
        "bandCode4": "FTWA",
        "commonName": "Fan-tailed Warbler",
        "scientificName": "Basileuterus lachrymosus",
        "bandCode6": "BASLAC"
    },
    {
        "bandCode4": "RCWA",
        "commonName": "Rufous-capped Warbler",
        "scientificName": "Basileuterus rufifrons",
        "bandCode6": "BASRUF"
    },
    {
        "bandCode4": "BCWA",
        "commonName": "Black-cheeked Warbler",
        "scientificName": "Basileuterus melanogenys",
        "bandCode6": "BASMEL"
    },
    {
        "bandCode4": "PIRW",
        "bandCode4Conflict": true,
        "commonName": "Pirre Warbler",
        "scientificName": "Basileuterus ignotus",
        "bandCode6": "BASIGN"
    },
    {
        "bandCode4": "GBWA",
        "commonName": "Golden-browed Warbler",
        "scientificName": "Basileuterus belli",
        "bandCode6": "BASBEL"
    },
    {
        "bandCode4": "GCRW",
        "bandCode4Conflict": true,
        "commonName": "Golden-crowned Warbler",
        "scientificName": "Basileuterus culicivorus",
        "bandCode6": "BASCUL"
    },
    {
        "bandCode4": "TSWA",
        "commonName": "Three-striped Warbler",
        "scientificName": "Basileuterus tristriatus",
        "bandCode6": "BASTRI"
    },
    {
        "bandCode4": "CAWA",
        "commonName": "Canada Warbler",
        "scientificName": "Cardellina canadensis",
        "bandCode6": "CADCAN"
    },
    {
        "bandCode4": "WIWA",
        "commonName": "Wilson's Warbler",
        "scientificName": "Cardellina pusilla",
        "bandCode6": "CARPUS"
    },
    {
        "bandCode4": "RFWA",
        "commonName": "Red-faced Warbler",
        "scientificName": "Cardellina rubrifrons",
        "bandCode6": "CARRUF",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "REWA",
        "commonName": "Red Warbler",
        "scientificName": "Cardellina rubra",
        "bandCode6": "CARRUA",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PHWA",
        "commonName": "Pink-headed Warbler",
        "scientificName": "Cardellina versicolor",
        "bandCode6": "CARVER"
    },
    {
        "bandCode4": "PARE",
        "commonName": "Painted Redstart",
        "scientificName": "Myioborus pictus",
        "bandCode6": "MYIPIC"
    },
    {
        "bandCode4": "STRE",
        "commonName": "Slate-throated Redstart",
        "scientificName": "Myioborus miniatus",
        "bandCode6": "MYIMIN"
    },
    {
        "bandCode4": "COLR",
        "bandCode4Conflict": true,
        "commonName": "Collared Redstart",
        "scientificName": "Myioborus torquatus",
        "bandCode6": "MYITOR"
    },
    {
        "bandCode4": "WRET",
        "bandCode4Conflict": true,
        "commonName": "Wrenthrush",
        "scientificName": "Zeledonia coronata",
        "bandCode6": "ZELCOR"
    },
    {
        "bandCode4": "YBCH",
        "commonName": "Yellow-breasted Chat",
        "scientificName": "Icteria virens",
        "bandCode6": "ICTVIR"
    },
    {
        "bandCode4": "WWWA",
        "commonName": "White-winged Warbler",
        "scientificName": "Xenoligea montana",
        "bandCode6": "XENMON"
    },
    {
        "bandCode4": "GTWA",
        "commonName": "Green-tailed Warbler",
        "scientificName": "Microligea palustris",
        "bandCode6": "MICPAL"
    },
    {
        "bandCode4": "YHWA",
        "commonName": "Yellow-headed Warbler",
        "scientificName": "Teretistris fernandinae",
        "bandCode6": "TERFER"
    },
    {
        "bandCode4": "ORWA",
        "commonName": "Oriente Warbler",
        "scientificName": "Teretistris fornsi",
        "bandCode6": "TERFOR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNWA",
        "commonName": "Unidentified Warbler",
        "scientificName": "Parulidae (gen, sp)",
        "bandCode6": "PARGSP"
    },
    {
        "bandCode4": "BANA",
        "commonName": "Bananaquit",
        "scientificName": "Coereba flaveola",
        "bandCode6": "COEFLA"
    },
    {
        "bandCode4": "RCCA",
        "commonName": "Red-crested Cardinal",
        "scientificName": "Paroaria coronata",
        "bandCode6": "PARCOR"
    },
    {
        "bandCode4": "YBCA",
        "commonName": "Yellow-billed Cardinal",
        "scientificName": "Paroaria capitata",
        "bandCode6": "PARCAP"
    },
    {
        "bandCode4": "WECO",
        "commonName": "White-eared Conebill",
        "scientificName": "Conirostrum leucogenys",
        "bandCode6": "CONLEU"
    },
    {
        "bandCode4": "PRTA",
        "commonName": "Puerto Rican Tanager",
        "scientificName": "Nesospingus speculiferus",
        "bandCode6": "NESSPE"
    },
    {
        "bandCode4": "YBTA",
        "commonName": "Yellow-backed Tanager",
        "scientificName": "Hemithraupis flavicollis",
        "bandCode6": "HEMFLC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BAYT",
        "commonName": "Black-and-yellow Tanager",
        "scientificName": "Chrysothlypis chrysomelas",
        "bandCode6": "CHRCHR"
    },
    {
        "bandCode4": "BPLT",
        "bandCode4Conflict": true,
        "commonName": "Black-crowned Palm-Tanager",
        "scientificName": "Phaenicophilus palmarum",
        "bandCode6": "PHAPAL"
    },
    {
        "bandCode4": "GCPT",
        "commonName": "Gray-crowned Palm-Tanager",
        "scientificName": "Phaenicophilus poliocephalus",
        "bandCode6": "PHAPOL"
    },
    {
        "bandCode4": "WECT",
        "commonName": "Western Chat-Tanager",
        "scientificName": "Calyptophilus tertius",
        "bandCode6": "CALTER"
    },
    {
        "bandCode4": "EACT",
        "commonName": "Eastern Chat-Tanager",
        "scientificName": "Calyptophilus frugivorus",
        "bandCode6": "CALFRU"
    },
    {
        "bandCode4": "ROTT",
        "commonName": "Rosy Thrush-Tanager",
        "scientificName": "Rhodinocichla rosea",
        "bandCode6": "RHNROS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "DFTA",
        "commonName": "Dusky-faced Tanager",
        "scientificName": "Mitrospingus cassinii",
        "bandCode6": "MITCAS"
    },
    {
        "bandCode4": "GHET",
        "bandCode4Conflict": true,
        "commonName": "Gray-headed Tanager",
        "scientificName": "Eucometis penicillata",
        "bandCode6": "EUCPEN"
    },
    {
        "bandCode4": "BTST",
        "commonName": "Black-throated Shrike-Tanager",
        "scientificName": "Lanio aurantius",
        "bandCode6": "LANAUR"
    },
    {
        "bandCode4": "WTST",
        "commonName": "White-throated Shrike-Tanager",
        "scientificName": "Lanio leucothorax",
        "bandCode6": "LANLEU"
    },
    {
        "bandCode4": "SRTA",
        "commonName": "Sulphur-rumped Tanager",
        "scientificName": "Heterospingus rubrifrons",
        "bandCode6": "HETRUB"
    },
    {
        "bandCode4": "SBTA",
        "commonName": "Scarlet-browed Tanager",
        "scientificName": "Heterospingus xanthopygius",
        "bandCode6": "HETXAN"
    },
    {
        "bandCode4": "WSTA",
        "commonName": "White-shouldered Tanager",
        "scientificName": "Tachyphonus luctuosus",
        "bandCode6": "TACLUC"
    },
    {
        "bandCode4": "TCTA",
        "commonName": "Tawny-crested Tanager",
        "scientificName": "Tachyphonus delatrii",
        "bandCode6": "TACDEL"
    },
    {
        "bandCode4": "WLTA",
        "commonName": "White-lined Tanager",
        "scientificName": "Tachyphonus rufus",
        "bandCode6": "TACRUF"
    },
    {
        "bandCode4": "CCTA",
        "commonName": "Crimson-collared Tanager",
        "scientificName": "Ramphocelus sanguinolentus",
        "bandCode6": "RAMSAN"
    },
    {
        "bandCode4": "CBTA",
        "commonName": "Crimson-backed Tanager",
        "scientificName": "Ramphocelus dimidiatus",
        "bandCode6": "RAMDIM"
    },
    {
        "bandCode4": "PAST",
        "bandCode4Conflict": true,
        "commonName": "Passerini's Tanager",
        "scientificName": "Ramphocelus passerinii",
        "bandCode6": "RAMPAS"
    },
    {
        "bandCode4": "CHET",
        "bandCode4Conflict": true,
        "commonName": "Cherrie's Tanager",
        "scientificName": "Ramphocelus costaricensis",
        "bandCode6": "RAMCOS"
    },
    {
        "bandCode4": "FRTA",
        "commonName": "Flame-rumped Tanager",
        "scientificName": "Ramphocelus flammigerus",
        "bandCode6": "RAMFLA"
    },
    {
        "bandCode4": "WESP",
        "commonName": "Western Spindalis",
        "scientificName": "Spindalis zena",
        "bandCode6": "SPIZEN"
    },
    {
        "bandCode4": "JAMS",
        "bandCode4Conflict": true,
        "commonName": "Jamaican Spindalis",
        "scientificName": "Spindalis nigricephala",
        "bandCode6": "SPINIG"
    },
    {
        "bandCode4": "HISP",
        "commonName": "Hispaniolan Spindalis",
        "scientificName": "Spindalis dominicensis",
        "bandCode6": "SPDDOM",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PRSP",
        "commonName": "Puerto Rican Spindalis",
        "scientificName": "Spindalis portoricensis",
        "bandCode6": "SPIPOR"
    },
    {
        "bandCode4": "BGTA",
        "commonName": "Blue-gray Tanager",
        "scientificName": "Thraupis episcopus",
        "bandCode6": "THREPI"
    },
    {
        "bandCode4": "YWTA",
        "commonName": "Yellow-winged Tanager",
        "scientificName": "Thraupis abbas",
        "bandCode6": "THRABB"
    },
    {
        "bandCode4": "PALT",
        "bandCode4Conflict": true,
        "commonName": "Palm Tanager",
        "scientificName": "Thraupis palmarum",
        "bandCode6": "THRPAL"
    },
    {
        "bandCode4": "BAGT",
        "commonName": "Blue-and-gold Tanager",
        "scientificName": "Bangsia arcaei",
        "bandCode6": "BANARC"
    },
    {
        "bandCode4": "GAGT",
        "commonName": "Gray-and-gold Tanager",
        "scientificName": "Tangara palmeri",
        "bandCode6": "TANPAL"
    },
    {
        "bandCode4": "ARTA",
        "commonName": "Azure-rumped Tanager",
        "scientificName": "Tangara cabanisi",
        "bandCode6": "TANCAB"
    },
    {
        "bandCode4": "LATA",
        "commonName": "Lesser Antillean Tanager",
        "scientificName": "Tangara cucullata",
        "bandCode6": "TANCUC"
    },
    {
        "bandCode4": "GHOT",
        "bandCode4Conflict": true,
        "commonName": "Golden-hooded Tanager",
        "scientificName": "Tangara larvata",
        "bandCode6": "TANLAR"
    },
    {
        "bandCode4": "SPTA",
        "commonName": "Speckled Tanager",
        "scientificName": "Tangara guttata",
        "bandCode6": "TANGUT"
    },
    {
        "bandCode4": "GNTA",
        "commonName": "Green-naped Tanager",
        "scientificName": "Tangara fucosa",
        "bandCode6": "TANFUC"
    },
    {
        "bandCode4": "SCHT",
        "bandCode4Conflict": true,
        "commonName": "Spangle-cheeked Tanager",
        "scientificName": "Tangara dowii",
        "bandCode6": "TANDOW"
    },
    {
        "bandCode4": "PCTA",
        "commonName": "Plain-colored Tanager",
        "scientificName": "Tangara inornata",
        "bandCode6": "TANINO"
    },
    {
        "bandCode4": "RWTA",
        "commonName": "Rufous-winged Tanager",
        "scientificName": "Tangara lavinia",
        "bandCode6": "TANLAV"
    },
    {
        "bandCode4": "BHTA",
        "commonName": "Bay-headed Tanager",
        "scientificName": "Tangara gyrola",
        "bandCode6": "TANGYR"
    },
    {
        "bandCode4": "EMTA",
        "commonName": "Emerald Tanager",
        "scientificName": "Tangara florida",
        "bandCode6": "TANFLO"
    },
    {
        "bandCode4": "STTA",
        "commonName": "Silver-throated Tanager",
        "scientificName": "Tangara icterocephala",
        "bandCode6": "TANICT"
    },
    {
        "bandCode4": "STDA",
        "commonName": "Scarlet-thighed Dacnis",
        "scientificName": "Dacnis venusta",
        "bandCode6": "DACVEN"
    },
    {
        "bandCode4": "BLDA",
        "commonName": "Blue Dacnis",
        "scientificName": "Dacnis cayana",
        "bandCode6": "DACCAY"
    },
    {
        "bandCode4": "VIDA",
        "commonName": "Viridian Dacnis",
        "scientificName": "Dacnis viguieri",
        "bandCode6": "DACVIG"
    },
    {
        "bandCode4": "GRHO",
        "commonName": "Green Honeycreeper",
        "scientificName": "Chlorophanes spiza",
        "bandCode6": "CHLSPI"
    },
    {
        "bandCode4": "SHHO",
        "commonName": "Shining Honeycreeper",
        "scientificName": "Cyanerpes lucidus",
        "bandCode6": "CYALUC"
    },
    {
        "bandCode4": "PUHO",
        "commonName": "Purple Honeycreeper",
        "scientificName": "Cyanerpes caeruleus",
        "bandCode6": "CYACAE"
    },
    {
        "bandCode4": "RLHO",
        "commonName": "Red-legged Honeycreeper",
        "scientificName": "Cyanerpes cyaneus",
        "bandCode6": "CYACYU",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SWTA",
        "commonName": "Swallow Tanager",
        "scientificName": "Tersina viridis",
        "bandCode6": "TERVIR"
    },
    {
        "bandCode4": "BHSA",
        "commonName": "Black-headed Saltator",
        "scientificName": "Saltator atriceps",
        "bandCode6": "SALATR"
    },
    {
        "bandCode4": "BTSA",
        "commonName": "Buff-throated Saltator",
        "scientificName": "Saltator maximus",
        "bandCode6": "SALMAX"
    },
    {
        "bandCode4": "SCOG",
        "bandCode4Conflict": true,
        "commonName": "Slate-colored Grosbeak",
        "scientificName": "Saltator grossus",
        "bandCode6": "SALGRO"
    },
    {
        "bandCode4": "LASA",
        "commonName": "Lesser Antillean Saltator",
        "scientificName": "Saltator albicollis",
        "bandCode6": "SALALB"
    },
    {
        "bandCode4": "GRAS",
        "bandCode4Conflict": true,
        "commonName": "Grayish Saltator",
        "scientificName": "Saltator coerulescens",
        "bandCode6": "SALCOE"
    },
    {
        "bandCode4": "SSAL",
        "bandCode4Conflict": true,
        "commonName": "Streaked Saltator",
        "scientificName": "Saltator striatipectus",
        "bandCode6": "SALSTR"
    },
    {
        "bandCode4": "BGRA",
        "bandCode4Conflict": true,
        "commonName": "Blue-black Grassquit",
        "scientificName": "Volatinia jacarina",
        "bandCode6": "VOLJAC"
    },
    {
        "bandCode4": "RBSE",
        "commonName": "Ruddy-breasted Seedeater",
        "scientificName": "Sporophila minuta",
        "bandCode6": "SPOMIN"
    },
    {
        "bandCode4": "TBSF",
        "commonName": "Thick-billed Seed-Finch",
        "scientificName": "Sporophila funerea",
        "bandCode6": "SPOFUN"
    },
    {
        "bandCode4": "NISF",
        "commonName": "Nicaraguan Seed-Finch",
        "scientificName": "Sporophila nuttingi",
        "bandCode6": "SPONUT"
    },
    {
        "bandCode4": "LBSF",
        "commonName": "Large-billed Seed-Finch",
        "scientificName": "Sporophila crassirostris",
        "bandCode6": "SPOCRA"
    },
    {
        "bandCode4": "VASE",
        "commonName": "Variable Seedeater",
        "scientificName": "Sporophila corvina",
        "bandCode6": "SPOCOR"
    },
    {
        "bandCode4": "WCSE",
        "commonName": "White-collared Seedeater",
        "scientificName": "Sporophila torqueola",
        "bandCode6": "SPOTOR"
    },
    {
        "bandCode4": "YBSE",
        "commonName": "Yellow-bellied Seedeater",
        "scientificName": "Sporophila nigricollis",
        "bandCode6": "SPONIG"
    },
    {
        "bandCode4": "LISE",
        "commonName": "Lined Seedeater",
        "scientificName": "Sporophila lineola",
        "bandCode6": "SPOLIN"
    },
    {
        "bandCode4": "SCSE",
        "commonName": "Slate-colored Seedeater",
        "scientificName": "Sporophila schistacea",
        "bandCode6": "SPOSCH"
    },
    {
        "bandCode4": "CUBU",
        "commonName": "Cuban Bullfinch",
        "scientificName": "Melopyrrha nigra",
        "bandCode6": "MELNIG"
    },
    {
        "bandCode4": "CUGR",
        "commonName": "Cuban Grassquit",
        "scientificName": "Tiaris canorus",
        "bandCode6": "TIACAN"
    },
    {
        "bandCode4": "YFGR",
        "commonName": "Yellow-faced Grassquit",
        "scientificName": "Tiaris olivaceus",
        "bandCode6": "TIAOLI"
    },
    {
        "bandCode4": "BFGR",
        "commonName": "Black-faced Grassquit",
        "scientificName": "Tiaris bicolor",
        "bandCode6": "TIABIC"
    },
    {
        "bandCode4": "YSGR",
        "commonName": "Yellow-shouldered Grassquit",
        "scientificName": "Loxipasser anoxanthus",
        "bandCode6": "LOXANO"
    },
    {
        "bandCode4": "PRBU",
        "commonName": "Puerto Rican Bullfinch",
        "scientificName": "Loxigilla portoricensis",
        "bandCode6": "LOXPOR"
    },
    {
        "bandCode4": "GABU",
        "commonName": "Greater Antillean Bullfinch",
        "scientificName": "Loxigilla violacea",
        "bandCode6": "LOXVIO"
    },
    {
        "bandCode4": "LANB",
        "bandCode4Conflict": true,
        "commonName": "Lesser Antillean Bullfinch",
        "scientificName": "Loxigilla noctis",
        "bandCode6": "LOXNOC"
    },
    {
        "bandCode4": "BABU",
        "commonName": "Barbados Bullfinch",
        "scientificName": "Loxigilla barbadensis",
        "bandCode6": "LOXBAD"
    },
    {
        "bandCode4": "ORAN",
        "commonName": "Orangequit",
        "scientificName": "Euneornis campestris",
        "bandCode6": "EUNCAM"
    },
    {
        "bandCode4": "SLBF",
        "commonName": "St. Lucia Black Finch",
        "scientificName": "Melanospiza richardsoni",
        "bandCode6": "MELRIC"
    },
    {
        "bandCode4": "COFI",
        "commonName": "Cocos Finch",
        "scientificName": "Pinaroloxias inornata",
        "bandCode6": "PININO"
    },
    {
        "bandCode4": "SLFI",
        "commonName": "Slaty Finch",
        "scientificName": "Haplospiza rustica",
        "bandCode6": "HAPRUS"
    },
    {
        "bandCode4": "PBFI",
        "commonName": "Peg-billed Finch",
        "scientificName": "Acanthidops bairdi",
        "bandCode6": "ACABAI"
    },
    {
        "bandCode4": "CBFL",
        "commonName": "Cinnamon-bellied Flowerpiercer",
        "scientificName": "Diglossa baritula",
        "bandCode6": "DIGBAR"
    },
    {
        "bandCode4": "SLFL",
        "commonName": "Slaty Flowerpiercer",
        "scientificName": "Diglossa plumbea",
        "bandCode6": "DIGPLU"
    },
    {
        "bandCode4": "SAFI",
        "commonName": "Saffron Finch",
        "scientificName": "Sicalis flaveola",
        "bandCode6": "SICFLA"
    },
    {
        "bandCode4": "GRYF",
        "commonName": "Grassland Yellow-Finch",
        "scientificName": "Sicalis luteola",
        "bandCode6": "SICLUT"
    },
    {
        "bandCode4": "WTGF",
        "commonName": "Wedge-tailed Grass-Finch",
        "scientificName": "Emberizoides herbicola",
        "bandCode6": "EMBHER"
    },
    {
        "bandCode4": "YTFI",
        "commonName": "Yellow-thighed Finch",
        "scientificName": "Pselliophorus tibialis",
        "bandCode6": "PSETIB"
    },
    {
        "bandCode4": "YGFI",
        "commonName": "Yellow-green Finch",
        "scientificName": "Pselliophorus luteoviridis",
        "bandCode6": "PSELUT"
    },
    {
        "bandCode4": "LFFI",
        "commonName": "Large-footed Finch",
        "scientificName": "Pezopetes capitalis",
        "bandCode6": "PEZCAP"
    },
    {
        "bandCode4": "OBSP",
        "commonName": "Orange-billed Sparrow",
        "scientificName": "Arremon aurantiirostris",
        "bandCode6": "ARRAUR"
    },
    {
        "bandCode4": "SFFI",
        "commonName": "Sooty-faced Finch",
        "scientificName": "Arremon crassirostris",
        "bandCode6": "ARRCRA"
    },
    {
        "bandCode4": "CCBF",
        "commonName": "Chestnut-capped Brush-Finch",
        "scientificName": "Arremon brunneinucha",
        "bandCode6": "ARRBRU"
    },
    {
        "bandCode4": "GSBF",
        "commonName": "Green-striped Brush-Finch",
        "scientificName": "Arremon virenticeps",
        "bandCode6": "ARRVIR"
    },
    {
        "bandCode4": "CRBF",
        "commonName": "Costa Rican Brush-Finch",
        "scientificName": "Arremon costaricensis",
        "bandCode6": "ARRCOS"
    },
    {
        "bandCode4": "BHBF",
        "commonName": "Black-headed Brush-Finch",
        "scientificName": "Arremon atricapillus",
        "bandCode6": "ARRATR"
    },
    {
        "bandCode4": "OLSP",
        "commonName": "Olive Sparrow",
        "scientificName": "Arremonops rufivirgatus",
        "bandCode6": "ARRRUF"
    },
    {
        "bandCode4": "GBSP",
        "commonName": "Green-backed Sparrow",
        "scientificName": "Arremonops chloronotus",
        "bandCode6": "ARRCHL"
    },
    {
        "bandCode4": "BSTS",
        "bandCode4Conflict": true,
        "commonName": "Black-striped Sparrow",
        "scientificName": "Arremonops conirostris",
        "bandCode6": "ARRCON"
    },
    {
        "bandCode4": "WNBF",
        "commonName": "White-naped Brush-Finch",
        "scientificName": "Atlapetes albinucha",
        "bandCode6": "ATLALB"
    },
    {
        "bandCode4": "RCBF",
        "commonName": "Rufous-capped Brush-Finch",
        "scientificName": "Atlapetes pileatus",
        "bandCode6": "ATLPIL"
    },
    {
        "bandCode4": "COTO",
        "commonName": "Collared Towhee",
        "scientificName": "Pipilo ocai",
        "bandCode6": "PIPOCA"
    },
    {
        "bandCode4": "GTTO",
        "commonName": "Green-tailed Towhee",
        "scientificName": "Pipilo chlorurus",
        "bandCode6": "PIPCHL"
    },
    {
        "bandCode4": "SPTO",
        "commonName": "Spotted Towhee",
        "scientificName": "Pipilo maculatus",
        "bandCode6": "PIPMAC"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "RSTO",
        "commonName": "Rufous-sided Towhee",
        "scientificName": "Pipilo maculatus/erythr.",
        "bandCode6": "PIPMAE"
    },
    {
        "bandCode4": "EATO",
        "commonName": "Eastern Towhee",
        "scientificName": "Pipilo erythrophthalmus",
        "bandCode6": "PIPERY"
    },
    {
        "bandCode4": "RUSP",
        "commonName": "Rusty Sparrow",
        "scientificName": "Aimophila rufescens",
        "bandCode6": "AIMRUS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "RCSP",
        "commonName": "Rufous-crowned Sparrow",
        "scientificName": "Aimophila ruficeps",
        "bandCode6": "AIMRUP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "OASP",
        "commonName": "Oaxaca Sparrow",
        "scientificName": "Aimophila notosticta",
        "bandCode6": "AIMNOT"
    },
    {
        "bandCode4": "WEGS",
        "commonName": "White-eared Ground-Sparrow",
        "scientificName": "Melozone leucotis",
        "bandCode6": "MELLEU"
    },
    {
        "bandCode4": "PRGS",
        "commonName": "Prevost's Ground-Sparrow",
        "scientificName": "Melozone biarcuata",
        "bandCode6": "MELBIA"
    },
    {
        "bandCode4": "RCGS",
        "commonName": "Rusty-crowned Ground-Sparrow",
        "scientificName": "Melozone kieneri",
        "bandCode6": "MELKIE"
    },
    {
        "bandCode4": "CANT",
        "bandCode4Conflict": true,
        "commonName": "Canyon Towhee",
        "scientificName": "Melozone fusca",
        "bandCode6": "MEZFUS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "WTTO",
        "commonName": "White-throated Towhee",
        "scientificName": "Melozone albicollis",
        "bandCode6": "MELALB"
    },
    {
        "bandCode4": "CALT",
        "bandCode4Conflict": true,
        "commonName": "California Towhee",
        "scientificName": "Melozone crissalis",
        "bandCode6": "MELCRI"
    },
    {
        "bandCode4": "ABTO",
        "commonName": "Abert's Towhee",
        "scientificName": "Melozone aberti",
        "bandCode6": "MELABE"
    },
    {
        "bandCode4": "CTSP",
        "commonName": "Cinnamon-tailed Sparrow",
        "scientificName": "Peucaea sumichrasti",
        "bandCode6": "PEUSUM"
    },
    {
        "bandCode4": "RWSP",
        "commonName": "Rufous-winged Sparrow",
        "scientificName": "Peucaea carpalis",
        "bandCode6": "PEUCAR"
    },
    {
        "bandCode4": "SHSP",
        "commonName": "Stripe-headed Sparrow",
        "scientificName": "Peucaea ruficauda",
        "bandCode6": "PEURUF"
    },
    {
        "bandCode4": "BCHS",
        "bandCode4Conflict": true,
        "commonName": "Black-chested Sparrow",
        "scientificName": "Peucaea humeralis",
        "bandCode6": "PEUHUM"
    },
    {
        "bandCode4": "BRIS",
        "bandCode4Conflict": true,
        "commonName": "Bridled Sparrow",
        "scientificName": "Peucaea mystacalis",
        "bandCode6": "PEUMYS"
    },
    {
        "bandCode4": "BOSP",
        "commonName": "Botteri's Sparrow",
        "scientificName": "Peucaea botterii",
        "bandCode6": "PEUBOT"
    },
    {
        "bandCode4": "CASP",
        "commonName": "Cassin's Sparrow",
        "scientificName": "Peucaea cassinii",
        "bandCode6": "PEUCAS"
    },
    {
        "bandCode4": "BACS",
        "bandCode4Conflict": true,
        "commonName": "Bachman's Sparrow",
        "scientificName": "Peucaea aestivalis",
        "bandCode6": "PEUAES"
    },
    {
        "bandCode4": "SSPA",
        "bandCode4Conflict": true,
        "commonName": "Striped Sparrow",
        "scientificName": "Oriturus superciliosus",
        "bandCode6": "ORISUP"
    },
    {
        "bandCode4": "ZASP",
        "commonName": "Zapata Sparrow",
        "scientificName": "Torreornis inexpectata",
        "bandCode6": "TORINE"
    },
    {
        "bandCode4": "ATSP",
        "commonName": "American Tree Sparrow",
        "scientificName": "Spizella arborea",
        "bandCode6": "SPIARB"
    },
    {
        "bandCode4": "CHSP",
        "commonName": "Chipping Sparrow",
        "scientificName": "Spizella passerina",
        "bandCode6": "SPIPAS"
    },
    {
        "bandCode4": "CCSP",
        "commonName": "Clay-colored Sparrow",
        "scientificName": "Spizella pallida",
        "bandCode6": "SPIPAL"
    },
    {
        "bandCode4": "BRSP",
        "commonName": "Brewer's Sparrow",
        "scientificName": "Spizella breweri",
        "bandCode6": "SPIBRE"
    },
    {
        "bandCode4": "FISP",
        "commonName": "Field Sparrow",
        "scientificName": "Spizella pusilla",
        "bandCode6": "SPIPUS"
    },
    {
        "bandCode4": "WOSP",
        "commonName": "Worthen's Sparrow",
        "scientificName": "Spizella wortheni",
        "bandCode6": "SPIWOR"
    },
    {
        "bandCode4": "BCSP",
        "commonName": "Black-chinned Sparrow",
        "scientificName": "Spizella atrogularis",
        "bandCode6": "SPIATG",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "VESP",
        "commonName": "Vesper Sparrow",
        "scientificName": "Pooecetes gramineus",
        "bandCode6": "POOGRA"
    },
    {
        "bandCode4": "LASP",
        "commonName": "Lark Sparrow",
        "scientificName": "Chondestes grammacus",
        "bandCode6": "CHOGRA"
    },
    {
        "bandCode4": "FSSP",
        "commonName": "Five-striped Sparrow",
        "scientificName": "Amphispiza quinquestriata",
        "bandCode6": "AMPQUI"
    },
    {
        "bandCode4": "BTSP",
        "commonName": "Black-throated Sparrow",
        "scientificName": "Amphispiza bilineata",
        "bandCode6": "AMPBIL"
    },
    {
        "bandCode4": "SABS",
        "bandCode4Conflict": true,
        "commonName": "Sagebrush Sparrow",
        "scientificName": "Artemisiospiza nevadensis",
        "bandCode6": "ARTNEV"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SAGS",
        "bandCode4Conflict": true,
        "commonName": "Sage Sparrow",
        "scientificName": "Artemisiospiza nevadensis/bell",
        "bandCode6": "ARTNEB"
    },
    {
        "bandCode4": "BESP",
        "bandCode4Conflict": true,
        "commonName": "Bell's Sparrow",
        "scientificName": "Artemisiospiza belli",
        "bandCode6": "ARTBEL"
    },
    {
        "bandCode4": "LARB",
        "bandCode4Conflict": true,
        "commonName": "Lark Bunting",
        "scientificName": "Calamospiza melanocorys",
        "bandCode6": "CALMEC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "SAVS",
        "bandCode4Conflict": true,
        "commonName": "Savannah Sparrow",
        "scientificName": "Passerculus sandwichensis",
        "bandCode6": "PASSAN"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "IPSP",
        "commonName": "Ipswich Sparrow",
        "scientificName": "Passerculus s. princeps",
        "bandCode6": "PASSPR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "BSSP",
        "commonName": "Belding's Savannah Sparrow",
        "scientificName": "Passerculus s. beldingi",
        "bandCode6": "PASSBE"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LBSP",
        "commonName": "Large-billed Sparrow",
        "scientificName": "Passerculus s. rostratus",
        "bandCode6": "PASSRO"
    },
    {
        "bandCode4": "GRSP",
        "commonName": "Grasshopper Sparrow",
        "scientificName": "Ammodramus savannarum",
        "bandCode6": "AMMSAV"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "FGSP",
        "commonName": "Florida Grasshopper Sparrow",
        "scientificName": "Ammodramus s. floridanus",
        "bandCode6": "AMMSFL"
    },
    {
        "bandCode4": "BAIS",
        "bandCode4Conflict": true,
        "commonName": "Baird's Sparrow",
        "scientificName": "Ammodramus bairdii",
        "bandCode6": "AMMBAI"
    },
    {
        "bandCode4": "HESP",
        "commonName": "Henslow's Sparrow",
        "scientificName": "Ammodramus henslowii",
        "bandCode6": "AMMHEN"
    },
    {
        "bandCode4": "LCSP",
        "commonName": "Le Conte's Sparrow",
        "scientificName": "Ammodramus leconteii",
        "bandCode6": "AMMLEC"
    },
    {
        "bandCode4": "NESP",
        "commonName": "Nelson's Sparrow",
        "scientificName": "Ammodramus nelsoni",
        "bandCode6": "AMMNEL"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "STSP",
        "commonName": "Sharp-tailed Sparrow",
        "scientificName": "Ammodramus nelsoni/caudacut.",
        "bandCode6": "AMMNEC"
    },
    {
        "bandCode4": "SALS",
        "bandCode4Conflict": true,
        "commonName": "Saltmarsh Sparrow",
        "scientificName": "Ammodramus caudacutus",
        "bandCode6": "AMMCAU"
    },
    {
        "bandCode4": "SESP",
        "commonName": "Seaside Sparrow",
        "scientificName": "Ammodramus maritimus",
        "bandCode6": "AMMMAR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "DUSS",
        "commonName": "Dusky Seaside-Sparrow",
        "scientificName": "Ammodramus m. nigrescens",
        "bandCode6": "AMMMNI"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "CSSS",
        "commonName": "Cape Sable Seaside-Sparrow",
        "scientificName": "Ammodramus m. mirabilis",
        "bandCode6": "AMMMMI"
    },
    {
        "bandCode4": "SMSP",
        "commonName": "Sierra Madre Sparrow",
        "scientificName": "Xenospiza baileyi",
        "bandCode6": "XENBAI"
    },
    {
        "bandCode4": "FOSP",
        "commonName": "Fox Sparrow",
        "scientificName": "Passerella iliaca",
        "bandCode6": "PASILI"
    },
    {
        "bandCode4": "SOSP",
        "commonName": "Song Sparrow",
        "scientificName": "Melospiza melodia",
        "bandCode6": "MELMEL"
    },
    {
        "bandCode4": "LISP",
        "commonName": "Lincoln's Sparrow",
        "scientificName": "Melospiza lincolnii",
        "bandCode6": "MELLIN"
    },
    {
        "bandCode4": "SWSP",
        "commonName": "Swamp Sparrow",
        "scientificName": "Melospiza georgiana",
        "bandCode6": "MELGEO"
    },
    {
        "bandCode4": "RCOS",
        "bandCode4Conflict": true,
        "commonName": "Rufous-collared Sparrow",
        "scientificName": "Zonotrichia capensis",
        "bandCode6": "ZONCAP"
    },
    {
        "bandCode4": "WTSP",
        "commonName": "White-throated Sparrow",
        "scientificName": "Zonotrichia albicollis",
        "bandCode6": "ZONALB"
    },
    {
        "bandCode4": "HASP",
        "commonName": "Harris's Sparrow",
        "scientificName": "Zonotrichia querula",
        "bandCode6": "ZONQUE"
    },
    {
        "bandCode4": "WCSP",
        "commonName": "White-crowned Sparrow",
        "scientificName": "Zonotrichia leucophrys",
        "bandCode6": "ZONLEU"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "EWCS",
        "commonName": "Eastern White-crowned Sparrow",
        "scientificName": "Zonotrichia l. leucophrys",
        "bandCode6": "ZONLLE"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "MWCS",
        "commonName": "Mountain White-crowned Sparrow",
        "scientificName": "Zonotrichia l. oriantha",
        "bandCode6": "ZONLOR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "GWCS",
        "commonName": "Gambel's White-crowned Sparrow",
        "scientificName": "Zonotrichia l. gambelii",
        "bandCode6": "ZONLGA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "PSWS",
        "commonName": "Puget Sound White-crowned Sparrow",
        "scientificName": "Zonotrichia l. pugetensis",
        "bandCode6": "ZONLPU"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "NWCS",
        "commonName": "Nuttall's White-crowned Sparrow",
        "scientificName": "Zonotrichia l. nuttalli",
        "bandCode6": "ZONLNU"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "WGSH",
        "commonName": "White-cr. X Golden-cr. Sparrow Hybrid",
        "scientificName": "Zonotrichia leuc. x atricap.",
        "bandCode6": "ZONLEA"
    },
    {
        "bandCode4": "GCSP",
        "commonName": "Golden-crowned Sparrow",
        "scientificName": "Zonotrichia atricapilla",
        "bandCode6": "ZONATR"
    },
    {
        "bandCode4": "VOJU",
        "commonName": "Volcano Junco",
        "scientificName": "Junco vulcani",
        "bandCode6": "JUNVUL"
    },
    {
        "bandCode4": "DEJU",
        "commonName": "Dark-eyed Junco",
        "scientificName": "Junco hyemalis",
        "bandCode6": "JUNHYE"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "SCJU",
        "commonName": "Slate-colored Junco",
        "scientificName": "Junco h. hyemalis",
        "bandCode6": "JUNHHY"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "WWJU",
        "commonName": "White-winged Junco",
        "scientificName": "Junco h. aikeni",
        "bandCode6": "JUNHAI"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "ORJU",
        "commonName": "Oregon Junco",
        "scientificName": "Junco h. oregonus",
        "bandCode6": "JUNHOR"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "GHJU",
        "commonName": "Gray-headed Junco",
        "scientificName": "Junco h. caniceps",
        "bandCode6": "JUNNCA"
    },
    {
        "bandCode4": "GUJU",
        "commonName": "Guadalupe Junco",
        "scientificName": "Junco insularis",
        "bandCode6": "JUNINS"
    },
    {
        "bandCode4": "YEJU",
        "commonName": "Yellow-eyed Junco",
        "scientificName": "Junco phaeonotus",
        "bandCode6": "JUNPHA"
    },
    {
        "bandCode4": "COCL",
        "bandCode4Conflict": true,
        "commonName": "Common Chlorospingus",
        "scientificName": "Chlorospingus flavopectus",
        "bandCode6": "CHLFLP",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "TACH",
        "commonName": "Tacarcuna Chlorospingus",
        "scientificName": "Chlorospingus tacarcunae",
        "bandCode6": "CHLTAC"
    },
    {
        "bandCode4": "PICH",
        "commonName": "Pirre Chlorospingus",
        "scientificName": "Chlorospingus inornatus",
        "bandCode6": "CHLINO"
    },
    {
        "bandCode4": "SCCH",
        "commonName": "Sooty-capped Chlorospingus",
        "scientificName": "Chlorospingus pileatus",
        "bandCode6": "CHLPIL"
    },
    {
        "bandCode4": "YTCH",
        "commonName": "Yellow-throated Chlorospingus",
        "scientificName": "Chlorospingus flavigularis",
        "bandCode6": "CHLFLG",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "ATCH",
        "commonName": "Ashy-throated Chlorospingus",
        "scientificName": "Chlorospingus canigularis",
        "bandCode6": "CHLCAG",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PIBU",
        "commonName": "Pine Bunting",
        "scientificName": "Emberiza leucocephalos",
        "bandCode6": "EMBLEU"
    },
    {
        "bandCode4": "YBWB",
        "bandCode4Conflict": true,
        "commonName": "Yellow-browed Bunting",
        "scientificName": "Emberiza chrysophrys",
        "bandCode6": "EMBCHR"
    },
    {
        "bandCode4": "LIBU",
        "commonName": "Little Bunting",
        "scientificName": "Emberiza pusilla",
        "bandCode6": "EMBPUS"
    },
    {
        "bandCode4": "RUBU",
        "commonName": "Rustic Bunting",
        "scientificName": "Emberiza rustica",
        "bandCode6": "EMBRUS"
    },
    {
        "bandCode4": "YTBU",
        "commonName": "Yellow-throated Bunting",
        "scientificName": "Emberiza elegans",
        "bandCode6": "EMBELE"
    },
    {
        "bandCode4": "YBSB",
        "bandCode4Conflict": true,
        "commonName": "Yellow-breasted Bunting",
        "scientificName": "Emberiza aureola",
        "bandCode6": "EMBAUR"
    },
    {
        "bandCode4": "GRBU",
        "commonName": "Gray Bunting",
        "scientificName": "Emberiza variabilis",
        "bandCode6": "EMBVAR"
    },
    {
        "bandCode4": "PALB",
        "bandCode4Conflict": true,
        "commonName": "Pallas's Bunting",
        "scientificName": "Emberiza pallasi",
        "bandCode6": "EMBPAL"
    },
    {
        "bandCode4": "REBU",
        "commonName": "Reed Bunting",
        "scientificName": "Emberiza schoeniclus",
        "bandCode6": "EMBSCH"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNSP",
        "commonName": "Unidentified Sparrow",
        "scientificName": "Emberizidae (gen, sp)",
        "bandCode6": "EMBGSP"
    },
    {
        "bandCode4": "RTTA",
        "commonName": "Rose-throated Tanager",
        "scientificName": "Piranga roseogularis",
        "bandCode6": "PIRROS"
    },
    {
        "bandCode4": "HETA",
        "commonName": "Hepatic Tanager",
        "scientificName": "Piranga flava",
        "bandCode6": "PIRFLA"
    },
    {
        "bandCode4": "SUTA",
        "commonName": "Summer Tanager",
        "scientificName": "Piranga rubra",
        "bandCode6": "PIRRUB"
    },
    {
        "bandCode4": "SCTA",
        "commonName": "Scarlet Tanager",
        "scientificName": "Piranga olivacea",
        "bandCode6": "PIROLI"
    },
    {
        "bandCode4": "WETA",
        "commonName": "Western Tanager",
        "scientificName": "Piranga ludoviciana",
        "bandCode6": "PIRLUD"
    },
    {
        "bandCode4": "FCTA",
        "commonName": "Flame-colored Tanager",
        "scientificName": "Piranga bidentata",
        "bandCode6": "PIRBID"
    },
    {
        "bandCode4": "WWTA",
        "commonName": "White-winged Tanager",
        "scientificName": "Piranga leucoptera",
        "bandCode6": "PIRLEU"
    },
    {
        "bandCode4": "RHTA",
        "commonName": "Red-headed Tanager",
        "scientificName": "Piranga erythrocephala",
        "bandCode6": "PIRERY"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UPTA",
        "commonName": "Unidentified Piranga Tanager",
        "scientificName": "Piranga (sp)",
        "bandCode6": "PIRSPE"
    },
    {
        "bandCode4": "RCAT",
        "commonName": "Red-crowned Ant-Tanager",
        "scientificName": "Habia rubica",
        "bandCode6": "HABRUB"
    },
    {
        "bandCode4": "RTAT",
        "commonName": "Red-throated Ant-Tanager",
        "scientificName": "Habia fuscicauda",
        "bandCode6": "HABFUS"
    },
    {
        "bandCode4": "BCAT",
        "commonName": "Black-cheeked Ant-Tanager",
        "scientificName": "Habia atrimaxillaris",
        "bandCode6": "HABATR"
    },
    {
        "bandCode4": "CATA",
        "commonName": "Carmiol's Tanager",
        "scientificName": "Chlorothraupis carmioli",
        "bandCode6": "CHLCAR"
    },
    {
        "bandCode4": "LSTA",
        "commonName": "Lemon-spectacled Tanager",
        "scientificName": "Chlorothraupis olivacea",
        "bandCode6": "CHLOLI"
    },
    {
        "bandCode4": "BFAG",
        "bandCode4Conflict": true,
        "commonName": "Black-faced Grosbeak",
        "scientificName": "Caryothraustes poliogaster",
        "bandCode6": "CARPOL"
    },
    {
        "bandCode4": "YGGR",
        "commonName": "Yellow-green Grosbeak",
        "scientificName": "Caryothraustes canadensis",
        "bandCode6": "CATCAN"
    },
    {
        "bandCode4": "CCGR",
        "commonName": "Crimson-collared Grosbeak",
        "scientificName": "Rhodothraupis celaeno",
        "bandCode6": "RHOCEL"
    },
    {
        "bandCode4": "NOCA",
        "commonName": "Northern Cardinal",
        "scientificName": "Cardinalis cardinalis",
        "bandCode6": "CARCAI",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "PYRR",
        "commonName": "Pyrrhuloxia",
        "scientificName": "Cardinalis sinuatus",
        "bandCode6": "CARSIN"
    },
    {
        "bandCode4": "YEGR",
        "commonName": "Yellow Grosbeak",
        "scientificName": "Pheucticus chrysopeplus",
        "bandCode6": "PHECHR"
    },
    {
        "bandCode4": "BTGG",
        "bandCode4Conflict": true,
        "commonName": "Black-thighed Grosbeak",
        "scientificName": "Pheucticus tibialis",
        "bandCode6": "PHETIB"
    },
    {
        "bandCode4": "RBGR",
        "commonName": "Rose-breasted Grosbeak",
        "scientificName": "Pheucticus ludovicianus",
        "bandCode6": "PHELUD"
    },
    {
        "bandCode4": "BHGR",
        "commonName": "Black-headed Grosbeak",
        "scientificName": "Pheucticus melanocephalus",
        "bandCode6": "PHEMEL"
    },
    {
        "bandCode4": "RBRC",
        "bandCode4Conflict": true,
        "commonName": "Red-breasted Chat",
        "scientificName": "Granatellus venustus",
        "bandCode6": "GRAVEN"
    },
    {
        "bandCode4": "GTCH",
        "commonName": "Gray-throated Chat",
        "scientificName": "Granatellus sallaei",
        "bandCode6": "GRASAL"
    },
    {
        "bandCode4": "BLSE",
        "commonName": "Blue Seedeater",
        "scientificName": "Amaurospiza concolor",
        "bandCode6": "AMSCON",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BGRO",
        "bandCode4Conflict": true,
        "commonName": "Blue-black Grosbeak",
        "scientificName": "Cyanocompsa cyanoides",
        "bandCode6": "CYACYD",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BLBU",
        "commonName": "Blue Bunting",
        "scientificName": "Cyanocompsa parellina",
        "bandCode6": "CYAPAR"
    },
    {
        "bandCode4": "BLGR",
        "commonName": "Blue Grosbeak",
        "scientificName": "Passerina caerulea",
        "bandCode6": "PASCAE"
    },
    {
        "bandCode4": "LAZB",
        "bandCode4Conflict": true,
        "commonName": "Lazuli Bunting",
        "scientificName": "Passerina amoena",
        "bandCode6": "PASAMO"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "LIBH",
        "commonName": "Lazuli x Indigo Bunting Hybrid",
        "scientificName": "Passerina amoena x cyanea",
        "bandCode6": "PASAMC"
    },
    {
        "bandCode4": "INBU",
        "commonName": "Indigo Bunting",
        "scientificName": "Passerina cyanea",
        "bandCode6": "PASCYA"
    },
    {
        "bandCode4": "RBBU",
        "commonName": "Rose-bellied Bunting",
        "scientificName": "Passerina rositae",
        "bandCode6": "PASROS"
    },
    {
        "bandCode4": "OBBU",
        "commonName": "Orange-breasted Bunting",
        "scientificName": "Passerina leclancherii",
        "bandCode6": "PASLEC"
    },
    {
        "bandCode4": "VABU",
        "commonName": "Varied Bunting",
        "scientificName": "Passerina versicolor",
        "bandCode6": "PASVER"
    },
    {
        "bandCode4": "PABU",
        "commonName": "Painted Bunting",
        "scientificName": "Passerina ciris",
        "bandCode6": "PASCIR"
    },
    {
        "bandCode4": "DICK",
        "commonName": "Dickcissel",
        "scientificName": "Spiza americana",
        "bandCode6": "SPIAME"
    },
    {
        "bandCode4": "BOBO",
        "commonName": "Bobolink",
        "scientificName": "Dolichonyx oryzivorus",
        "bandCode6": "DOLORY"
    },
    {
        "bandCode4": "RWBL",
        "commonName": "Red-winged Blackbird",
        "scientificName": "Agelaius phoeniceus",
        "bandCode6": "AGEPHO"
    },
    {
        "bandCode4": "RSBL",
        "commonName": "Red-shouldered Blackbird",
        "scientificName": "Agelaius assimilis",
        "bandCode6": "AGEASS"
    },
    {
        "bandCode4": "TRBL",
        "commonName": "Tricolored Blackbird",
        "scientificName": "Agelaius tricolor",
        "bandCode6": "AGETRI"
    },
    {
        "bandCode4": "TSBL",
        "commonName": "Tawny-shouldered Blackbird",
        "scientificName": "Agelaius humeralis",
        "bandCode6": "AGEHUM"
    },
    {
        "bandCode4": "YSBL",
        "commonName": "Yellow-shouldered Blackbird",
        "scientificName": "Agelaius xanthomus",
        "bandCode6": "AGEXAN"
    },
    {
        "bandCode4": "JABL",
        "commonName": "Jamaican Blackbird",
        "scientificName": "Nesopsar nigerrimus",
        "bandCode6": "NESNIG"
    },
    {
        "bandCode4": "YHOB",
        "bandCode4Conflict": true,
        "commonName": "Yellow-hooded Blackbird",
        "scientificName": "Chrysomus icterocephalus",
        "bandCode6": "CHRICT"
    },
    {
        "bandCode4": "RBBL",
        "commonName": "Red-breasted Blackbird",
        "scientificName": "Sturnella militaris",
        "bandCode6": "STUMIL"
    },
    {
        "bandCode4": "EAME",
        "commonName": "Eastern Meadowlark",
        "scientificName": "Sturnella magna",
        "bandCode6": "STUMAG"
    },
    {
        "bandCode4": "WEME",
        "commonName": "Western Meadowlark",
        "scientificName": "Sturnella neglecta",
        "bandCode6": "STUNEG"
    },
    {
        "bandCode4": "YHBL",
        "commonName": "Yellow-headed Blackbird",
        "scientificName": "Xanthocephalus xanthocephalus",
        "bandCode6": "XANXAN"
    },
    {
        "bandCode4": "MEBL",
        "commonName": "Melodious Blackbird",
        "scientificName": "Dives dives",
        "bandCode6": "DIVDIV"
    },
    {
        "bandCode4": "CUBL",
        "commonName": "Cuban Blackbird",
        "scientificName": "Dives atroviolaceus",
        "bandCode6": "DIVATR"
    },
    {
        "bandCode4": "RUBL",
        "commonName": "Rusty Blackbird",
        "scientificName": "Euphagus carolinus",
        "bandCode6": "EUPCAR"
    },
    {
        "bandCode4": "BRBL",
        "commonName": "Brewer's Blackbird",
        "scientificName": "Euphagus cyanocephalus",
        "bandCode6": "EUPCYC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "COGR",
        "commonName": "Common Grackle",
        "scientificName": "Quiscalus quiscula",
        "bandCode6": "QUIQUI"
    },
    {
        "bandCode4": "BTGR",
        "commonName": "Boat-tailed Grackle",
        "scientificName": "Quiscalus major",
        "bandCode6": "QUIMAJ"
    },
    {
        "bandCode4": "GTGR",
        "commonName": "Great-tailed Grackle",
        "scientificName": "Quiscalus mexicanus",
        "bandCode6": "QUIMEX"
    },
    {
        "bandCode4": "SBGR",
        "commonName": "Slender-billed Grackle",
        "scientificName": "Quiscalus palustris",
        "bandCode6": "QUIPAL"
    },
    {
        "bandCode4": "NIGR",
        "commonName": "Nicaraguan Grackle",
        "scientificName": "Quiscalus nicaraguensis",
        "bandCode6": "QUINIC"
    },
    {
        "bandCode4": "GAGR",
        "commonName": "Greater Antillean Grackle",
        "scientificName": "Quiscalus niger",
        "bandCode6": "QUINIG"
    },
    {
        "bandCode4": "CAGR",
        "commonName": "Carib Grackle",
        "scientificName": "Quiscalus lugubris",
        "bandCode6": "QUILUG"
    },
    {
        "bandCode4": "SHCO",
        "commonName": "Shiny Cowbird",
        "scientificName": "Molothrus bonariensis",
        "bandCode6": "MOLBON"
    },
    {
        "bandCode4": "BROC",
        "bandCode4Conflict": true,
        "commonName": "Bronzed Cowbird",
        "scientificName": "Molothrus aeneus",
        "bandCode6": "MOLAEN"
    },
    {
        "bandCode4": "BHCO",
        "commonName": "Brown-headed Cowbird",
        "scientificName": "Molothrus ater",
        "bandCode6": "MOLATE"
    },
    {
        "bandCode4": "GICO",
        "commonName": "Giant Cowbird",
        "scientificName": "Molothrus oryzivorus",
        "bandCode6": "MOLORY"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UNBL",
        "commonName": "Unidentified Blackbird",
        "scientificName": "Icteridae (gen, sp)",
        "bandCode6": "ICTGSP"
    },
    {
        "bandCode4": "BAHO",
        "commonName": "Bahama Oriole",
        "scientificName": "Icterus northropi",
        "bandCode6": "ICTNOR"
    },
    {
        "bandCode4": "CUOR",
        "commonName": "Cuban Oriole",
        "scientificName": "Icterus melanopsis",
        "bandCode6": "ICTMEL"
    },
    {
        "bandCode4": "HIOR",
        "commonName": "Hispaniolan Oriole",
        "scientificName": "Icterus dominicensis",
        "bandCode6": "ICTDOM"
    },
    {
        "bandCode4": "PROR",
        "commonName": "Puerto Rican Oriole",
        "scientificName": "Icterus portoricensis",
        "bandCode6": "ICTPOR"
    },
    {
        "bandCode4": "SLOR",
        "commonName": "St. Lucia Oriole",
        "scientificName": "Icterus laudabilis",
        "bandCode6": "ICTLAU"
    },
    {
        "bandCode4": "MORI",
        "bandCode4Conflict": true,
        "commonName": "Montserrat Oriole",
        "scientificName": "Icterus oberi",
        "bandCode6": "ICTOBE"
    },
    {
        "bandCode4": "MAOR",
        "commonName": "Martinique Oriole",
        "scientificName": "Icterus bonana",
        "bandCode6": "ICTBON"
    },
    {
        "bandCode4": "BVOR",
        "commonName": "Black-vented Oriole",
        "scientificName": "Icterus wagleri",
        "bandCode6": "ICTWAG"
    },
    {
        "bandCode4": "BWOR",
        "commonName": "Bar-winged Oriole",
        "scientificName": "Icterus maculialatus",
        "bandCode6": "ICTMAC"
    },
    {
        "bandCode4": "BCOR",
        "commonName": "Black-cowled Oriole",
        "scientificName": "Icterus prosthemelas",
        "bandCode6": "ICTPRO"
    },
    {
        "bandCode4": "OROR",
        "commonName": "Orchard Oriole",
        "scientificName": "Icterus spurius",
        "bandCode6": "ICTSPU"
    },
    {
        "bandCode4": "HOOR",
        "commonName": "Hooded Oriole",
        "scientificName": "Icterus cucullatus",
        "bandCode6": "ICTCUC"
    },
    {
        "bandCode4": "YBOR",
        "commonName": "Yellow-backed Oriole",
        "scientificName": "Icterus chrysater",
        "bandCode6": "ICTCHR"
    },
    {
        "bandCode4": "OCOR",
        "commonName": "Orange-crowned Oriole",
        "scientificName": "Icterus auricapillus",
        "bandCode6": "ICTAUC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "YTOR",
        "commonName": "Yellow-tailed Oriole",
        "scientificName": "Icterus mesomelas",
        "bandCode6": "ICTMES"
    },
    {
        "bandCode4": "VETR",
        "commonName": "Venezuelan Troupial",
        "scientificName": "Icterus icterus",
        "bandCode6": "ICTICT"
    },
    {
        "bandCode4": "SBAO",
        "bandCode4Conflict": true,
        "commonName": "Streak-backed Oriole",
        "scientificName": "Icterus pustulatus",
        "bandCode6": "ICTPUS"
    },
    {
        "bandCode4": "BUOR",
        "commonName": "Bullock's Oriole",
        "scientificName": "Icterus bullockii",
        "bandCode6": "ICTBUL"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "BBOH",
        "commonName": "Bullock's x Baltimore Oriole Hybrid",
        "scientificName": "Icterus bullockii x galb.",
        "bandCode6": "ICTBUG"
    },
    {
        "bandCode4": "ORAO",
        "bandCode4Conflict": true,
        "commonName": "Orange Oriole",
        "scientificName": "Icterus auratus",
        "bandCode6": "ICTAUT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "JAOR",
        "commonName": "Jamaican Oriole",
        "scientificName": "Icterus leucopteryx",
        "bandCode6": "ICTLEU"
    },
    {
        "bandCode4": "SBOR",
        "commonName": "Spot-breasted Oriole",
        "scientificName": "Icterus pectoralis",
        "bandCode6": "ICTPEC"
    },
    {
        "bandCode4": "ALOR",
        "commonName": "Altamira Oriole",
        "scientificName": "Icterus gularis",
        "bandCode6": "ICTGUL"
    },
    {
        "bandCode4": "AUOR",
        "commonName": "Audubon's Oriole",
        "scientificName": "Icterus graduacauda",
        "bandCode6": "ICTGRA"
    },
    {
        "bandCode4": "BAOR",
        "commonName": "Baltimore Oriole",
        "scientificName": "Icterus galbula",
        "bandCode6": "ICTGAL"
    },
    {
        "bandCode4": "BBOR",
        "commonName": "Black-backed Oriole",
        "scientificName": "Icterus abeillei",
        "bandCode6": "ICTABE"
    },
    {
        "bandCode4": "SCOR",
        "commonName": "Scott's Oriole",
        "scientificName": "Icterus parisorum",
        "bandCode6": "ICTPAR"
    },
    {
        "bandCode4": "YBIC",
        "bandCode4Conflict": true,
        "commonName": "Yellow-billed Cacique",
        "scientificName": "Amblycercus holosericeus",
        "bandCode6": "AMBHOL"
    },
    {
        "bandCode4": "YWCA",
        "commonName": "Yellow-winged Cacique",
        "scientificName": "Cassiculus melanicterus",
        "bandCode6": "CASMEL"
    },
    {
        "bandCode4": "SRCA",
        "commonName": "Scarlet-rumped Cacique",
        "scientificName": "Cacicus uropygialis",
        "bandCode6": "CACURO"
    },
    {
        "bandCode4": "YRCA",
        "commonName": "Yellow-rumped Cacique",
        "scientificName": "Cacicus cela",
        "bandCode6": "CACCEL"
    },
    {
        "bandCode4": "CROR",
        "commonName": "Crested Oropendola",
        "scientificName": "Psarocolius decumanus",
        "bandCode6": "PSADEC"
    },
    {
        "bandCode4": "CHOR",
        "commonName": "Chestnut-headed Oropendola",
        "scientificName": "Psarocolius wagleri",
        "bandCode6": "PSAWAG"
    },
    {
        "bandCode4": "MORO",
        "bandCode4Conflict": true,
        "commonName": "Montezuma Oropendola",
        "scientificName": "Psarocolius montezuma",
        "bandCode6": "PSAMON"
    },
    {
        "bandCode4": "BLOR",
        "commonName": "Black Oropendola",
        "scientificName": "Psarocolius guatimozinus",
        "bandCode6": "PSAGUA"
    },
    {
        "bandCode4": "CCHA",
        "bandCode4Conflict": true,
        "commonName": "Common Chaffinch",
        "scientificName": "Fringilla coelebs",
        "bandCode6": "FRICOE"
    },
    {
        "bandCode4": "BRAM",
        "commonName": "Brambling",
        "scientificName": "Fringilla montifringilla",
        "bandCode6": "FRIMON"
    },
    {
        "bandCode4": "JAEU",
        "commonName": "Jamaican Euphonia",
        "scientificName": "Euphonia jamaica",
        "bandCode6": "EUPJAM"
    },
    {
        "bandCode4": "SEUP",
        "bandCode4Conflict": true,
        "commonName": "Scrub Euphonia",
        "scientificName": "Euphonia affinis",
        "bandCode6": "EUPAFF"
    },
    {
        "bandCode4": "YCEU",
        "commonName": "Yellow-crowned Euphonia",
        "scientificName": "Euphonia luteicapilla",
        "bandCode6": "EUPLUT"
    },
    {
        "bandCode4": "TBEU",
        "commonName": "Thick-billed Euphonia",
        "scientificName": "Euphonia laniirostris",
        "bandCode6": "EUPLAN"
    },
    {
        "bandCode4": "YTEU",
        "commonName": "Yellow-throated Euphonia",
        "scientificName": "Euphonia hirundinacea",
        "bandCode6": "EUPHIR"
    },
    {
        "bandCode4": "ANEU",
        "commonName": "Antillean Euphonia",
        "scientificName": "Euphonia musica",
        "bandCode6": "EUPMUS"
    },
    {
        "bandCode4": "ELEU",
        "commonName": "Elegant Euphonia",
        "scientificName": "Euphonia elegantissima",
        "bandCode6": "EUPELE"
    },
    {
        "bandCode4": "FVEU",
        "commonName": "Fulvous-vented Euphonia",
        "scientificName": "Euphonia fulvicrissa",
        "bandCode6": "EUPFUL"
    },
    {
        "bandCode4": "SPCE",
        "bandCode4Conflict": true,
        "commonName": "Spot-crowned Euphonia",
        "scientificName": "Euphonia imitans",
        "bandCode6": "EUPIMI"
    },
    {
        "bandCode4": "OBAE",
        "bandCode4Conflict": true,
        "commonName": "Olive-backed Euphonia",
        "scientificName": "Euphonia gouldi",
        "bandCode6": "EUPGOU"
    },
    {
        "bandCode4": "WVEU",
        "commonName": "White-vented Euphonia",
        "scientificName": "Euphonia minuta",
        "bandCode6": "EUPMIN"
    },
    {
        "bandCode4": "TCEU",
        "commonName": "Tawny-capped Euphonia",
        "scientificName": "Euphonia anneae",
        "bandCode6": "EUPANN"
    },
    {
        "bandCode4": "OBEE",
        "bandCode4Conflict": true,
        "commonName": "Orange-bellied Euphonia",
        "scientificName": "Euphonia xanthogaster",
        "bandCode6": "EUPXAN"
    },
    {
        "bandCode4": "YCCH",
        "commonName": "Yellow-collared Chlorophonia",
        "scientificName": "Chlorophonia flavirostris",
        "bandCode6": "CHPFLA",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BCRC",
        "bandCode4Conflict": true,
        "commonName": "Blue-crowned Chlorophonia",
        "scientificName": "Chlorophonia occipitalis",
        "bandCode6": "CHLOCC"
    },
    {
        "bandCode4": "GBCH",
        "commonName": "Golden-browed Chlorophonia",
        "scientificName": "Chlorophonia callophrys",
        "bandCode6": "CHLCAL"
    },
    {
        "bandCode4": "ASRF",
        "commonName": "Asian Rosy-Finch",
        "scientificName": "Leucosticte arctoa",
        "bandCode6": "LEUARC"
    },
    {
        "bandCode4": "GCRF",
        "commonName": "Gray-crowned Rosy-Finch",
        "scientificName": "Leucosticte tephrocotis",
        "bandCode6": "LEUTEP"
    },
    {
        "bandCode4": "BLRF",
        "commonName": "Black Rosy-Finch",
        "scientificName": "Leucosticte atrata",
        "bandCode6": "LEUATT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BCRF",
        "commonName": "Brown-capped Rosy-Finch",
        "scientificName": "Leucosticte australis",
        "bandCode6": "LEUAUS"
    },
    {
        "bandCode4": "PIGR",
        "commonName": "Pine Grosbeak",
        "scientificName": "Pinicola enucleator",
        "bandCode6": "PINENU"
    },
    {
        "bandCode4": "EUBU",
        "commonName": "Eurasian Bullfinch",
        "scientificName": "Pyrrhula pyrrhula",
        "bandCode6": "PYRPYH",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "LAFI",
        "commonName": "Laysan Finch",
        "scientificName": "Telespiza cantans",
        "bandCode6": "TELCAN"
    },
    {
        "bandCode4": "NIFI",
        "commonName": "Nihoa Finch",
        "scientificName": "Telespiza ultima",
        "bandCode6": "TELULT"
    },
    {
        "bandCode4": "OU",
        "commonName": "Ou",
        "scientificName": "Psittirostra psittacea",
        "bandCode6": "PSIPSI"
    },
    {
        "bandCode4": "LAHO",
        "commonName": "Lanai Hookbill",
        "scientificName": "Dysmorodrepanis munroi",
        "bandCode6": "DYSMUN"
    },
    {
        "bandCode4": "PALI",
        "commonName": "Palila",
        "scientificName": "Loxioides bailleui",
        "bandCode6": "LOXBAI"
    },
    {
        "bandCode4": "MAPA",
        "commonName": "Maui Parrotbill",
        "scientificName": "Pseudonestor xanthophrys",
        "bandCode6": "PSEXAN"
    },
    {
        "bandCode4": "LEKF",
        "commonName": "Lesser Koa-Finch",
        "scientificName": "Rhodacanthis flaviceps",
        "bandCode6": "RHOFLA"
    },
    {
        "bandCode4": "GRKF",
        "commonName": "Greater Koa-Finch",
        "scientificName": "Rhodacanthis palmeri",
        "bandCode6": "RHOPAL"
    },
    {
        "bandCode4": "KOGR",
        "commonName": "Kona Grosbeak",
        "scientificName": "Chloridops kona",
        "bandCode6": "CHLKON"
    },
    {
        "bandCode4": "HAAM",
        "commonName": "Hawaii Amakihi",
        "scientificName": "Hemignathus virens",
        "bandCode6": "HEMVIR"
    },
    {
        "bandCode4": "OAAM",
        "commonName": "Oahu Amakihi",
        "scientificName": "Hemignathus flavus",
        "bandCode6": "HEMFLS",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "KAAM",
        "commonName": "Kauai Amakihi",
        "scientificName": "Hemignathus kauaiensis",
        "bandCode6": "HEMKAU"
    },
    {
        "bandCode4": "GRAM",
        "commonName": "Greater Amakihi",
        "scientificName": "Hemignathus sagittirostris",
        "bandCode6": "HEMSAG"
    },
    {
        "bandCode4": "LEAK",
        "commonName": "Lesser Akialoa",
        "scientificName": "Hemignathus obscurus",
        "bandCode6": "HEMOBS"
    },
    {
        "bandCode4": "GAKI",
        "bandCode4Conflict": true,
        "commonName": "Greater Akialoa",
        "scientificName": "Hemignathus ellisianus",
        "bandCode6": "HEMELL"
    },
    {
        "bandCode4": "NUKU",
        "commonName": "Nukupuu",
        "scientificName": "Hemignathus lucidus",
        "bandCode6": "HEMLUC"
    },
    {
        "bandCode4": "AKIA",
        "commonName": "Akiapolaau",
        "scientificName": "Hemignathus munroi",
        "bandCode6": "HEMMUN"
    },
    {
        "bandCode4": "ANIA",
        "commonName": "Anianiau",
        "scientificName": "Magumma parva",
        "bandCode6": "MAGPAR"
    },
    {
        "bandCode4": "AKIK",
        "commonName": "Akikiki",
        "scientificName": "Oreomystis bairdi",
        "bandCode6": "OREBAI"
    },
    {
        "bandCode4": "OAAL",
        "commonName": "Oahu Alauahio",
        "scientificName": "Paroreomyza maculata",
        "bandCode6": "PAMMAC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "KAKA",
        "commonName": "Kakawahie",
        "scientificName": "Paroreomyza flammea",
        "bandCode6": "PARFLA"
    },
    {
        "bandCode4": "MAAL",
        "commonName": "Maui Alauahio",
        "scientificName": "Paroreomyza montana",
        "bandCode6": "PARMON"
    },
    {
        "bandCode4": "HCRE",
        "bandCode4Conflict": true,
        "commonName": "Hawaii Creeper",
        "scientificName": "Loxops mana",
        "bandCode6": "LOXMAN"
    },
    {
        "bandCode4": "AKEK",
        "commonName": "Akekee",
        "scientificName": "Loxops caeruleirostris",
        "bandCode6": "LOXCAE"
    },
    {
        "bandCode4": "AKEP",
        "commonName": "Akepa",
        "scientificName": "Loxops coccineus",
        "bandCode6": "LOXCOC"
    },
    {
        "bandCode4": "UAIH",
        "bandCode4Conflict": true,
        "commonName": "Ula-ai-hawane",
        "scientificName": "Ciridops anna",
        "bandCode6": "CIRANN"
    },
    {
        "bandCode4": "IIWI",
        "commonName": "Iiwi",
        "scientificName": "Vestiaria coccinea",
        "bandCode6": "VESCOC"
    },
    {
        "bandCode4": "HAMA",
        "commonName": "Hawaii Mamo",
        "scientificName": "Drepanis pacifica",
        "bandCode6": "DREPAC"
    },
    {
        "bandCode4": "BLMA",
        "commonName": "Black Mamo",
        "scientificName": "Drepanis funerea",
        "bandCode6": "DREFUN"
    },
    {
        "bandCode4": "AKOH",
        "commonName": "Akohekohe",
        "scientificName": "Palmeria dolei",
        "bandCode6": "PALDOL"
    },
    {
        "bandCode4": "APAP",
        "commonName": "Apapane",
        "scientificName": "Himatione sanguinea",
        "bandCode6": "HIMSAN"
    },
    {
        "bandCode4": "POUL",
        "commonName": "Poo-uli",
        "scientificName": "Melamprosops phaeosoma",
        "bandCode6": "MELPHA"
    },
    {
        "bandCode4": "CORO",
        "commonName": "Common Rosefinch",
        "scientificName": "Carpodacus erythrinus",
        "bandCode6": "CARERY"
    },
    {
        "bandCode4": "HOFI",
        "commonName": "House Finch",
        "scientificName": "Haemorhous mexicanus",
        "bandCode6": "HAEMEX"
    },
    {
        "bandCode4": "PUFI",
        "commonName": "Purple Finch",
        "scientificName": "Haemorhous purpureus",
        "bandCode6": "HAEPUR"
    },
    {
        "bandCode4": "CAFI",
        "commonName": "Cassin's Finch",
        "scientificName": "Haemorhous cassinii",
        "bandCode6": "HAECAS"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "UHFI",
        "commonName": "Unidentified HaemorhousFinch",
        "scientificName": "Haemorhous (sp)",
        "bandCode6": "HAESPE"
    },
    {
        "bandCode4": "RECR",
        "commonName": "Red Crossbill",
        "scientificName": "Loxia curvirostra",
        "bandCode6": "LOXCUR"
    },
    {
        "bandCode4": "HICR",
        "commonName": "Hispaniolan Crossbill",
        "scientificName": "Loxia megaplaga",
        "bandCode6": "LOXMEG"
    },
    {
        "bandCode4": "WWCR",
        "commonName": "White-winged Crossbill",
        "scientificName": "Loxia leucoptera",
        "bandCode6": "LOXLEU"
    },
    {
        "bandCode4": "CORE",
        "commonName": "Common Redpoll",
        "scientificName": "Acanthis flammea",
        "bandCode6": "ACAFLA"
    },
    {
        "nonSpeciesTaxon": true,
        "bandCode4": "CHRE",
        "commonName": "Common/Hoary Redpoll",
        "scientificName": "Acanthis flamm./hornemanni",
        "bandCode6": "ACAFLH"
    },
    {
        "bandCode4": "HORE",
        "commonName": "Hoary Redpoll",
        "scientificName": "Acanthis hornemanni",
        "bandCode6": "ACAHOR"
    },
    {
        "bandCode4": "EUSI",
        "commonName": "Eurasian Siskin",
        "scientificName": "Spinus spinus",
        "bandCode6": "SPISPI"
    },
    {
        "bandCode4": "PISI",
        "commonName": "Pine Siskin",
        "scientificName": "Spinus pinus",
        "bandCode6": "SPIPIN"
    },
    {
        "bandCode4": "BCSI",
        "commonName": "Black-capped Siskin",
        "scientificName": "Spinus atriceps",
        "bandCode6": "SPIATC",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BHSI",
        "commonName": "Black-headed Siskin",
        "scientificName": "Spinus notatus",
        "bandCode6": "SPINOT"
    },
    {
        "bandCode4": "YBSI",
        "commonName": "Yellow-bellied Siskin",
        "scientificName": "Spinus xanthogastrus",
        "bandCode6": "SPIXAN"
    },
    {
        "bandCode4": "RESI",
        "commonName": "Red Siskin",
        "scientificName": "Spinus cucullatus",
        "bandCode6": "SPICUC"
    },
    {
        "bandCode4": "ANSI",
        "commonName": "Antillean Siskin",
        "scientificName": "Spinus dominicensis",
        "bandCode6": "SPUDOM",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "LEGO",
        "commonName": "Lesser Goldfinch",
        "scientificName": "Spinus psaltria",
        "bandCode6": "SPIPSA"
    },
    {
        "bandCode4": "LAGO",
        "commonName": "Lawrence's Goldfinch",
        "scientificName": "Spinus lawrencei",
        "bandCode6": "SPILAW"
    },
    {
        "bandCode4": "AMGO",
        "commonName": "American Goldfinch",
        "scientificName": "Spinus tristis",
        "bandCode6": "SPITRI"
    },
    {
        "bandCode4": "EUGO",
        "commonName": "European Goldfinch",
        "scientificName": "Carduelis carduelis",
        "bandCode6": "CARCAU",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "ORGR",
        "commonName": "Oriental Greenfinch",
        "scientificName": "Chloris sinica",
        "bandCode6": "CHLSIN"
    },
    {
        "bandCode4": "YFCA",
        "commonName": "Yellow-fronted Canary",
        "scientificName": "Serinus mozambicus",
        "bandCode6": "SERMOZ"
    },
    {
        "bandCode4": "ISCA",
        "commonName": "Island Canary",
        "scientificName": "Serinus canaria",
        "bandCode6": "SERCAN"
    },
    {
        "bandCode4": "HOOG",
        "bandCode4Conflict": true,
        "commonName": "Hooded Grosbeak",
        "scientificName": "Coccothraustes abeillei",
        "bandCode6": "COCABE"
    },
    {
        "bandCode4": "EVGR",
        "commonName": "Evening Grosbeak",
        "scientificName": "Coccothraustes vespertinus",
        "bandCode6": "COCVES"
    },
    {
        "bandCode4": "HAWF",
        "commonName": "Hawfinch",
        "scientificName": "Coccothraustes coccothraustes",
        "bandCode6": "COCCOT",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "HOSP",
        "commonName": "House Sparrow",
        "scientificName": "Passer domesticus",
        "bandCode6": "PASDOM"
    },
    {
        "bandCode4": "ETSP",
        "commonName": "Eurasian Tree Sparrow",
        "scientificName": "Passer montanus",
        "bandCode6": "PASMON"
    },
    {
        "bandCode4": "VIWE",
        "commonName": "Village Weaver",
        "scientificName": "Ploceus cucullatus",
        "bandCode6": "PLOCUC"
    },
    {
        "bandCode4": "ORBI",
        "commonName": "Orange Bishop",
        "scientificName": "Euplectes franciscanus",
        "bandCode6": "EUPFRA"
    },
    {
        "bandCode4": "YCBI",
        "commonName": "Yellow-crowned Bishop",
        "scientificName": "Euplectes afer",
        "bandCode6": "EUPAFE"
    },
    {
        "bandCode4": "RCCO",
        "commonName": "Red-cheeked Cordonbleu",
        "scientificName": "Uraeginthus bengalus",
        "bandCode6": "URABEN"
    },
    {
        "bandCode4": "LAVW",
        "bandCode4Conflict": true,
        "commonName": "Lavender Waxbill",
        "scientificName": "Estrilda caerulescens",
        "bandCode6": "ESTCAE"
    },
    {
        "bandCode4": "OCHW",
        "bandCode4Conflict": true,
        "commonName": "Orange-cheeked Waxbill",
        "scientificName": "Estrilda melpoda",
        "bandCode6": "ESTMEL"
    },
    {
        "bandCode4": "BRUW",
        "bandCode4Conflict": true,
        "commonName": "Black-rumped Waxbill",
        "scientificName": "Estrilda troglodytes",
        "bandCode6": "ESTTRO"
    },
    {
        "bandCode4": "COMW",
        "bandCode4Conflict": true,
        "commonName": "Common Waxbill",
        "scientificName": "Estrilda astrild",
        "bandCode6": "ESTAST"
    },
    {
        "bandCode4": "REAV",
        "commonName": "Red Avadavat",
        "scientificName": "Amandava amandava",
        "bandCode6": "AMAAMN",
        "bandCode6Conflict": true
    },
    {
        "bandCode4": "BRMA",
        "commonName": "Bronze Mannikin",
        "scientificName": "Spermestes cucullata",
        "bandCode6": "SPECUC"
    },
    {
        "bandCode4": "INSI",
        "commonName": "Indian Silverbill",
        "scientificName": "Euodice malabarica",
        "bandCode6": "EUOMAB"
    },
    {
        "bandCode4": "AFSI",
        "commonName": "African Silverbill",
        "scientificName": "Euodice cantans",
        "bandCode6": "EUOCAN"
    },
    {
        "bandCode4": "JASP",
        "commonName": "Java Sparrow",
        "scientificName": "Lonchura oryzivora",
        "bandCode6": "LONORY"
    },
    {
        "bandCode4": "SBMU",
        "commonName": "Scaly-breasted Munia",
        "scientificName": "Lonchura punctulata",
        "bandCode6": "LONPUN"
    },
    {
        "bandCode4": "TRMU",
        "commonName": "Tricolored Munia",
        "scientificName": "Lonchura malacca",
        "bandCode6": "LONMAL"
    },
    {
        "bandCode4": "CHMU",
        "commonName": "Chestnut Munia",
        "scientificName": "Lonchura atricapilla",
        "bandCode6": "LONATR"
    },
    {
        "bandCode4": "PTWH",
        "commonName": "Pin-tailed Whydah",
        "scientificName": "Vidua macroura",
        "bandCode6": "VIDMAC"
    }
]
""".data(using: .utf8)!
}
