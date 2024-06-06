# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0601012D0AABHBH","system":"bnf"},{"code":"0601012D0AAA3A3","system":"bnf"},{"code":"0601012D0AAAJAJ","system":"bnf"},{"code":"0601012D0AABXBX","system":"bnf"},{"code":"0601012D0AABWBW","system":"bnf"},{"code":"0601012D0AABZBZ","system":"bnf"},{"code":"0601011N0BHACAM","system":"bnf"},{"code":"0601012D0AABQBQ","system":"bnf"},{"code":"0601012D0AABVBV","system":"bnf"},{"code":"0601012D0BBAMBZ","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-humaject---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-humaject---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-humaject---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)