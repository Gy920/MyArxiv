let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["SLAM", "Odometry", "Large-scale","Large-Scale", "Long-term",   "Optimization",  "Control", "Swarm", "Segmentation", "Life", "estimator","VPR","loc","UAV","GPS-Denied"];
let titles_method = ["Certifiable", "Self-Supervised", "Semi-Supervised", "Unsupervised", "Fusion", "Navigation",  "Calibration", "Reinforcement", "Relocalization", "loop", "global", "outlier",
"localization", "dynamic", "sparsification", "graph", "clique"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Shaojie Shen", "Luca Carlone", "Yoshua Bengio", "Frank Dellaert", "Wolfram Burgard", "Davide Scaramuzza", "Marc Pollefeys", "Andrew Davison", "Daniel Cremers", "Heng Yang", "Fei Gao", 
"Tong Qin", "Wenchao Ding", "Fu Zhang", "Hesheng Wang", "Huan Yin", "Peng Yin", "Ming Liu", "Yue Wang", "Hang Zhao", "Xieyuanli Chen", "Boyu Zhou", "Timothy D. Barfoot", "Marc Pollefeys","Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio"];

let conferences = [
    // Robotic
    "CORL", "RAM", "RAS", "TIM", "RAL", "TITS", "TMECH", "TASE", "IJRR", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "RSS", "JFR", "TRO",
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
