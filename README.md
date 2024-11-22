# BIO295

To use run
```bash
make set
```

#### Run AMRFinder
```bash
parallel -N 1 --delay .2 -j 4 --joblog parallel_AMR.log amrfinder -n assemblies/{}.* --threads 1 --plus --organism Salmonella --name={} :::: out/barcode_assemblies.txt | tee db/AMR_raw_output_file.tsv
```