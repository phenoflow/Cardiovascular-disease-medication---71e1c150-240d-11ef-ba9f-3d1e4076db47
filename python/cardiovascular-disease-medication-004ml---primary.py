# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0208010W0BCANAT","system":"bnf"},{"code":"0208010L0AAADAD","system":"bnf"},{"code":"0208010D0BFADAB","system":"bnf"},{"code":"0208010L0AAAEAE","system":"bnf"},{"code":"0208010D0BEABAB","system":"bnf"},{"code":"0208010D0BDABAB","system":"bnf"},{"code":"0208010L0BBAFAF","system":"bnf"},{"code":"0208010L0BBAEAE","system":"bnf"},{"code":"0208010L0BBADAD","system":"bnf"},{"code":"0208010D0BBABAB","system":"bnf"},{"code":"0208010D0BCABAB","system":"bnf"},{"code":"0208010L0AAAFAF","system":"bnf"},{"code":"0208010W0AAATAT","system":"bnf"},{"code":"0208010D0AAABAB","system":"bnf"},{"code":"0204000T0BCADAH","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-004ml---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-004ml---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-004ml---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
