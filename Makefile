set:
	mkdir img
	mkdir out
	mkdir assemblies
clean:
	rm -rf out/*
	rm -rf img/*

run-AMR:
	parallel -N 1 --delay .2 -j 6 --joblog out/parallel_AMR.log amrfinder -n assemblies/{}.* --threads 1 --plus --organism Salmonella --name={} :::: out/barcode_assemblies.txt | tee db/AMR_raw_output_file.tsv

run-abricate:
	ls assemblies > out/fofn.txt
	cd assemblies; abricate --db plasmidfinder --fofn ../out/fofn.txt --threads 6 > ../db/Abricate_raw_results.tsv
	abricate --summary db/Abricate_raw_results.tsv > db/Abricate_results_summary.tsv