//
//  ViewController.m
//  chemicaltools
//
//  Created by 曾晋哲 on 2016/11/2.
//  Copyright © 2016年 曾晋哲. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    label_element.numberOfLines=0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@synthesize label_element;
@synthesize button_element;
@synthesize textfield_element;

static NSString *const elementName[118]={
    @"氢",
    @"氦",
    @"锂",
    @"铍",
    @"硼",
    @"碳",
    @"氮",
    @"氧",
    @"氟",
    @"氖",
    @"钠",
    @"镁",
    @"铝",
    @"硅",
    @"磷",
    @"硫",
    @"氯",
    @"氩",
    @"钾",
    @"钙",
    @"钪",
    @"钛",
    @"钒",
    @"铬",
    @"锰",
    @"铁",
    @"钴",
    @"镍",
    @"铜",
    @"锌",
    @"镓",
    @"锗",
    @"砷",
    @"硒",
    @"溴",
    @"氪",
    @"铷",
    @"锶",
    @"钇",
    @"锆",
    @"铌",
    @"钼",
    @"锝",
    @"钌",
    @"铑",
    @"钯",
    @"银",
    @"镉",
    @"铟",
    @"锡",
    @"锑",
    @"碲",
    @"碘",
    @"氙",
    @"铯",
    @"钡",
    @"镧",
    @"铈",
    @"镨",
    @"钕",
    @"钷",
    @"钐",
    @"铕",
    @"钆",
    @"铽",
    @"镝",
    @"钬",
    @"铒",
    @"铥",
    @"镱",
    @"镥",
    @"铪",
    @"钽",
    @"钨",
    @"铼",
    @"锇",
    @"铱",
    @"铂",
    @"金",
    @"汞",
    @"铊",
    @"铅",
    @"铋",
    @"钋",
    @"砹",
    @"氡",
    @"钫",
    @"镭",
    @"锕",
    @"钍",
    @"镤",
    @"铀",
    @"镎",
    @"钚",
    @"镅",
    @"锔",
    @"锫",
    @"锎",
    @"锿",
    @"镄",
    @"钔",
    @"锘",
    @"铹",
    @"鑪",
    @"钅杜",
    @"钅喜",
    @"钅波",
    @"钅黑",
    @"䥑",
    @"鐽",
    @"錀",
    @"鎶",
    @"一一三",
    @"鈇",
    @"一一五",
    @"鉝",
    @"一一七",
    @"一一八",
};
static NSString *const elementAbbr[118]={
    @"H",
    @"He",
    @"Li",
    @"Be",
    @"B",
    @"C",
    @"N",
    @"O",
    @"F",
    @"Ne",
    @"Na",
    @"Mg",
    @"Al",
    @"Si",
    @"P",
    @"S",
    @"Cl",
    @"Ar",
    @"K",
    @"Ca",
    @"Sc",
    @"Ti",
    @"V",
    @"Cr",
    @"Mn",
    @"Fe",
    @"Co",
    @"Ni",
    @"Cu",
    @"Zn",
    @"Ga",
    @"Ge",
    @"As",
    @"Se",
    @"Br",
    @"Kr",
    @"Rb",
    @"Sr",
    @"Y",
    @"Zr",
    @"Nb",
    @"Mo",
    @"Tc",
    @"Ru",
    @"Rh",
    @"Pd",
    @"Ag",
    @"Cd",
    @"In",
    @"Sn",
    @"Sb",
    @"Te",
    @"I",
    @"Xe",
    @"Cs",
    @"Ba",
    @"La",
    @"Ce",
    @"Pr",
    @"Nd",
    @"Pm",
    @"Sm",
    @"Eu",
    @"Gd",
    @"Tb",
    @"Dy",
    @"Ho",
    @"Er",
    @"Tm",
    @"Yb",
    @"Lu",
    @"Hf",
    @"Ta",
    @"W",
    @"Re",
    @"Os",
    @"Ir",
    @"Pt",
    @"Au",
    @"Hg",
    @"Tl",
    @"Pb",
    @"Bi",
    @"Po",
    @"At",
    @"Rn",
    @"Fr",
    @"Re",
    @"Ac",
    @"Th",
    @"Pa",
    @"U",
    @"Np",
    @"Pu",
    @"Am",
    @"Cm",
    @"Bk",
    @"Cf",
    @"Es",
    @"Fm",
    @"Md",
    @"No",
    @"Lr",
    @"Rf",
    @"Db",
    @"Sg",
    @"Bh",
    @"Hs",
    @"Mt",
    @"Ds",
    @"Rg",
    @"Cn",
    @"Nh",
    @"Fl",
    @"Mc",
    @"Lv",
    @"Ts",
    @"Og",
};
static NSString *const elementMass[118]={
    @"1.008",
    @"4.003",
    @"6.941",
    @"9.012",
    @"10.81",
    @"12.01",
    @"14.01",
    @"16.00",
    @"19.00",
    @"20.18",
    @"22.99",
    @"24.31",
    @"26.98",
    @"28.09",
    @"30.98",
    @"32.07",
    @"35.45",
    @"39.95",
    @"39.10",
    @"40.08",
    @"44.96",
    @"47.87",
    @"50.94",
    @"52.00",
    @"54.94",
    @"55.85",
    @"58.93",
    @"58.69",
    @"63.55",
    @"65.38",
    @"69.72",
    @"72.64",
    @"74.92",
    @"78.97",
    @"79.90",
    @"83.80",
    @"85.47",
    @"87.62",
    @"88.91",
    @"91.22",
    @"92.91",
    @"95.95",
    @"98.91",
    @"101.1",
    @"102.9",
    @"106.4",
    @"107.9",
    @"112.4",
    @"114.8",
    @"118.7",
    @"121.8",
    @"127.6",
    @"126.9",
    @"131.3",
    @"132.9",
    @"137.3",
    @"138.9",
    @"140.1",
    @"140.9",
    @"144.2",
    @"144.9",
    @"150.4",
    @"152.0",
    @"157.3",
    @"158.9",
    @"162.5",
    @"164.9",
    @"167.3",
    @"168.9",
    @"173.1",
    @"175.0",
    @"178.5",
    @"181.0",
    @"183.8",
    @"186.2",
    @"190.2",
    @"192.2",
    @"195.1",
    @"197.0",
    @"200.6",
    @"204.4",
    @"207.2",
    @"209.0",
    @"209.0",
    @"210.0",
    @"222.0",
    @"223.0",
    @"226.0",
    @"227.0",
    @"232.0",
    @"231.0",
    @"238.0",
    @"237.0",
    @"239.1",
    @"243.1",
    @"247.1",
    @"247.1",
    @"251.1",
    @"252.1",
    @"257.1",
    @"258.1",
    @"259.1",
    @"262.1",
    @"261.1",
    @"262.1",
    @"266.1",
    @"264.1",
    @"277",
    @"268",
    @"271",
    @"272",
    @"285",
    @"284",
    @"289",
    @"288",
    @"292",
    @"295",
    @"293",
};
static NSString *const elementIUPAC[118]={
    @"Hydrogen",
    @"Helium",
    @"Lithium",
    @"Beryllium",
    @"Boron",
    @"Carbon",
    @"Nitrogen",
    @"Oxygen",
    @"Fluorine",
    @"Neon",
    @"Sodium",
    @"Magnesium",
    @"Aluminium",
    @"Silicon",
    @"Phosphorus",
    @"Sulfur",
    @"Chlorine",
    @"Argon",
    @"Potassium",
    @"Calcium",
    @"Scandium",
    @"Titanium",
    @"Vanadium",
    @"Chromium",
    @"Manganese",
    @"Iron",
    @"Cobalt",
    @"Nickel",
    @"Copper",
    @"Zinc",
    @"Gallium",
    @"Germanium",
    @"Arsenic",
    @"Selenium",
    @"Bromine",
    @"Krypton",
    @"Rubidium",
    @"Strontium",
    @"Yttrium",
    @"Zirconium",
    @"Niobium",
    @"Molybdenum",
    @"Technetium",
    @"Ruthenium",
    @"Rhodium",
    @"Palladium",
    @"Silver",
    @"Cadmium",
    @"Indium",
    @"Tin",
    @"Antimony",
    @"Tellurium",
    @"Iodine",
    @"Xenon",
    @"Caesium",
    @"Barium",
    @"Lanthanum",
    @"Cerium",
    @"Praseodymium",
    @"Neodymium",
    @"Promethium",
    @"Samarium",
    @"Europium",
    @"Gadolinium",
    @"Terbium",
    @"Dysprosium",
    @"Holmium",
    @"Erbium",
    @"Thulium",
    @"Ytterbium",
    @"Lutetium",
    @"Hafnium",
    @"Tantalum",
    @"Tungsten",
    @"Rhenium",
    @"Osmium",
    @"Iridium",
    @"Platinum",
    @"Gold",
    @"Mercury",
    @"Thallium",
    @"Lead",
    @"Bismuth",
    @"Polonium",
    @"Astatine",
    @"Radon",
    @"Francium",
    @"Radium",
    @"Actinium",
    @"Thorium",
    @"Protactinium",
    @"Uranium",
    @"Neptunium",
    @"Plutonium",
    @"Americium",
    @"Curium",
    @"Berkelium",
    @"Californium",
    @"Einsteinium",
    @"Fermium",
    @"Mendelevium",
    @"Nobelium",
    @"Lawrencium",
    @"Rutherfordium",
    @"Dubnium",
    @"Seaborgium",
    @"Bohrium",
    @"Hassium",
    @"Meitnerium",
    @"Darmstadtium",
    @"Roentgenium",
    @"Copernicium",
    @"Nihonium",
    @"Flerovium",
    @"Moscovium",
    @"Livermorium",
    @"Tennessine",
    @"Oganesson",
};
static NSString *const elementOrigin[118]={
    @"Composed of the Greek elements hydro-and -gen meaning water-forming",
    @"The Greek helios, sun",
    @"The Greek lithos, stone",
    @"Beryl, a mineral",
    @"Borax, a mineral",
    @"The Latin carbo, coal",
    @"The Greek nitron and -gen meaning niter-forming",
    @"From the Greek oxy-, both sharp and acid, and -gen, meaning acid-forming",
    @"The Latin fluere, to flow",
    @"The Greek neos, meaning new",
    @"The English word soda (natrium in Latin)",
    @"Magnesia, a district of Eastern Thessalyin Greece",
    @"From alumina, a compound (originally aluminum)",
    @"From the Latin silex, flint (originally silicium)",
    @"The Greek phoosphoros, carrying light",
    @"The Latin sulphur, fire and brimstone",
    @"The Greek chloros, greenish yellow",
    @"The Greek argos, idle",
    @"New Latin potassa, potash (kalium in Latin)",
    @"The Latin calx, lime",
    @"Scandia, the Latin name for Scandinavia",
    @"Titans, the sons of the Earth goddess of Greek mythology",
    @"Vanadis, an Old Norse name for the Scandinavian goddess Freyja",
    @"The Greek chroma, color",
    @"Corrupted from magnesia negra, see Magnesium",
    @"English word (ferrum in Latin)",
    @"The German word Kobold, goblin",
    @"From Swedish kopparnickel, containing the German word Nickel, goblin",
    @"English word (Latin cuprum)",
    @"The German Zink",
    @"Gallia, the Latin name for France",
    @"Germania, the Latin name for Germany",
    @"English word (Latin arsenicum)",
    @"The Greek selene, moon",
    @"The Greek bromos, stench",
    @"The Greek kryptos, hidden",
    @"The Latin rubidus, deep red",
    @"Strontian, a small town in Scotland",
    @"Ytterby, Sweden",
    @"Persian Zargun, gold-colored; German Zirkoon, jargoon",
    @"Niobe, daughter of king Tantalus from Greek mythology",
    @"The Greek molybdos meaning lead",
    @"The Greek tekhnètos meaning artificial",
    @"Ruthenia, the New Latin name for Russia",
    @"The Greek rhodos, meaning rose coloured",
    @"The then recently discovered asteroid Pallas, considered a planet at the time",
    @"English word (argentum in Latin)",
    @"The New Latin cadmia, from King Kadmos",
    @"Indigo",
    @"English word (stannum in Latin)",
    @"Composed from the Greek anti, against, and monos, alone (stibium in Latin)",
    @"Latin tellus, earth",
    @"French iode (after the Greek ioeides, violet)",
    @"The Greek xenos, strange",
    @"The Latin caesius, sky blue",
    @"The Greek barys, heavy",
    @"The Greek lanthanein, to lie hidden",
    @"The then recently discovered asteroid Ceres, considered a planet at the time",
    @"The Greek praseios didymos meaning green twin",
    @"The Greek neos didymos meaning new twin",
    @"Prometheus of Greek mythology who stole fire from the Gods and gave it to humans",
    @"Samarskite, the name of the mineral from which it was first isolated",
    @"Europe",
    @"Johan Gadolin, chemist, physicist and mineralogist",
    @"Ytterby, Sweden",
    @"The Greek dysprositos, hard to get",
    @"Holmia, the New Latin name for Stockholm",
    @"Ytterby, Sweden",
    @"Thule, the ancient name for Scandinavia",
    @"Ytterby, Sweden",
    @"Lutetia, the Latin name for Paris",
    @"Hafnia, the New Latin name for Copenhagen",
    @"King Tantalus, father of Niobe from Greek mythology",
    @"The Swedish tung sten, heavy stone (W is wolfram, the old name of the tungsten mineral wolframite)",
    @"Rhenus, the Latin name for the river Rhine",
    @"The Greek osmè, meaning smell",
    @"Iris, the Greek goddess of the rainbow",
    @"The Spanish platina, meaning little silver",
    @"English word (aurum in Latin)",
    @"The New Latin name mercurius, named after the Roman god (Hg from former name hydrargyrum, from Greek hydr-, water, and argyros, silver)",
    @"The Greek thallos, green twig",
    @"English word (plumbum in Latin)",
    @"German word, now obsolete",
    @"Polonia, the New Latin name for Poland",
    @"The Greek astatos, unstable",
    @"From radium, as it was first detected as an emission from radium during radioactive decay",
    @"Francia, the New Latin name for France",
    @"The Latin radius, ray",
    @"The Greek aktis, ray",
    @"Thor, the Scandinavian god of thunder",
    @"The Greek protos, first, and actinium, which is produced through the radioactive decay of protactinium",
    @"Uranus, the seventh planet in the Solar System",
    @"Neptune, the eighth planet in the Solar System",
    @"Pluto, a dwarf planet in the Solar System (considered the ninth planet at the time)",
    @"The Americas, as the element was first synthesized on the continent, by analogy with europium",
    @"Pierre Curie, a physicist, and Marie Curie, a physicist and chemist, named after great scientists by analogy with gadolinium",
    @"Berkeley, California, where the element was first synthesized, by analogy with terbium",
    @"California, where the element was first synthesized",
    @"Albert Einstein, physicist",
    @"Enrico Fermi, physicist",
    @"Dmitri Mendeleev, chemist and inventor",
    @"Alfred Nobel, chemist, engineer, innovator, and armaments manufacturer",
    @"Ernest O. Lawrence, physicist",
    @"Ernest Rutherford, chemist and physicist",
    @"Dubna, Russia",
    @"Glenn T. Seaborg, scientist",
    @"Niels Bohr, physicist",
    @"Hesse, Germany, where the element was first synthesized",
    @"Lise Meitner, physicist",
    @"Darmstadt, Germany, where the element was first synthesized",
    @"Wilhelm Conrad Röntgen, physicist",
    @"Nicolaus Copernicus, astronomer",
    @"Japanese word meaning Japan",
    @"Georgy Flyorov, physicist",
    @"In recognition of the Moscow region and honors the ancient Russian land that is the home of the Joint Institute for Nuclear Research",
    @"Lawrence Livermore National Laboratory(in Livermore, California) which collaborated with JINR on its synthesis",
    @"In recognition of the contribution of the Tennessee region",
    @"Honoring a scientist and recognizes Professor Yuri Oganessian",
};

-(IBAction)element:(id)sender{
    int n = 0;
    NSString *input=textfield_element.text;
    for (int i=0; i<118; i++) {
        if ([input isEqualToString:elementAbbr[i]]) {
            n=i+1;
        }else if([input isEqualToString:elementName[i]]){
            n=i+1;
        }else if([input isEqualToString:elementIUPAC[i]]){
            n=i+1;
        }else if([input isEqualToString:[NSString stringWithFormat:@"%d",i]]){
            n=i;
        }
    }
    if(n>0){
        label_element.text=[NSString stringWithFormat:@"元素名称：%@\n元素符号：%@\nIUPAC名：%@\n原子序数：%@\n相对原子质量：%@\n元素名称含义：%@", elementName[n-1], elementAbbr[n-1],elementIUPAC[n-1], [NSString stringWithFormat:@"%d",n],elementMass[n-1],elementOrigin[n-1]];
    }else{
        label_element.text=@"wrong";
    }
}
@end
