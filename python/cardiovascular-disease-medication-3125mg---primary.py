# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0205052N0AAAHAH","system":"bnf"},{"code":"0204000H0AAAMAM","system":"bnf"},{"code":"0205051F0AAADAD","system":"bnf"},{"code":"0205051R0BBAFAK","system":"bnf"},{"code":"020400040BBAAAA","system":"bnf"},{"code":"0205051R0BBAAAA","system":"bnf"},{"code":"0204000B0BBAAAA","system":"bnf"},{"code":"0204000K0AAAFAF","system":"bnf"},{"code":"0205051R0AAAKAK","system":"bnf"},{"code":"0202030S0AAEGEG","system":"bnf"},{"code":"0205051R0AAAAAA","system":"bnf"},{"code":"0601023AJBBAAAA","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-3125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-3125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-3125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)