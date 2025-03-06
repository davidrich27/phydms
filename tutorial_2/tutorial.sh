# Run phydms tutorial

if [[ $# == 1 ]]; then
    TUTORIAL_DIR=$1
    cd $TUTORIAL_DIR
fi

pwd

phydms_logoplot logoplots/betaLactamase_prefs.pdf --prefs example_data/betaLactamase_prefs.csv --mapmetric functionalgroup --colormap mapmetric

phydms_comprehensive betaLactamase/ example_data/betaLactamase_alignment.fasta example_data/betaLactamase_prefs.csv --raxml raxmlHPC
