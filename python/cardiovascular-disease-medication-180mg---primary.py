# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0205052V0AAAIAI","system":"bnf"},{"code":"0206020C0AAAVAV","system":"bnf"},{"code":"0206020T0AAADAD","system":"bnf"},{"code":"0204000R0AAAAAA","system":"bnf"},{"code":"0206020T0AAAJAJ","system":"bnf"},{"code":"0205052V0AAABAB","system":"bnf"},{"code":"0204000R0AAAKAK","system":"bnf"},{"code":"0212000M0BCAAAD","system":"bnf"},{"code":"0212000M0BDAAAD","system":"bnf"},{"code":"0212000M0BEAAAD","system":"bnf"},{"code":"0212000M0BHAAAD","system":"bnf"},{"code":"0212000M0BGAAAD","system":"bnf"},{"code":"0212000AKBBAAAA","system":"bnf"},{"code":"0212000M0BFAAAD","system":"bnf"},{"code":"0601021M0BEAAAA","system":"bnf"},{"code":"0601021M0BDAAAA","system":"bnf"},{"code":"0601021M0BCAAAA","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-180mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-180mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-180mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
