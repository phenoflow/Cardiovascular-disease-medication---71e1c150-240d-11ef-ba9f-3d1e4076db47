# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0205052R0AAAAAA","system":"bnf"},{"code":"0204000W0AAAAAA","system":"bnf"},{"code":"0202010D0AADFDF","system":"bnf"},{"code":"0205052X0AAAAAA","system":"bnf"},{"code":"0202010L0AAACAC","system":"bnf"},{"code":"0202040S0AAAQAQ","system":"bnf"},{"code":"0205052R0AAABAB","system":"bnf"},{"code":"0202040S0AAAHAH","system":"bnf"},{"code":"0202010L0AAAYAY","system":"bnf"},{"code":"0205052P0AAAAAA","system":"bnf"},{"code":"0205052X0AAACAC","system":"bnf"},{"code":"0202010D0AAAFAF","system":"bnf"},{"code":"0205052A0AAABAB","system":"bnf"},{"code":"0205052A0AAAAAA","system":"bnf"},{"code":"0202010D0AACYCY","system":"bnf"},{"code":"0205052P0AAACAC","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-chlor---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-chlor---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-chlor---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
