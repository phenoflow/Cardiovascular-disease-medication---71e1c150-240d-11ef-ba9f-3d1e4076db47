# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0202040S0AAAMAM","system":"bnf"},{"code":"0208020V0BBABAB","system":"bnf"},{"code":"0208020V0AABCBC","system":"bnf"},{"code":"0208020S0AAAAAA","system":"bnf"},{"code":"0208020V0AAABAB","system":"bnf"},{"code":"0208020S0BBAAAA","system":"bnf"},{"code":"0601023AQBBACAC","system":"bnf"},{"code":"0601021A0AAACAC","system":"bnf"},{"code":"0601023AQAAACAC","system":"bnf"},{"code":"0601023AWAAAEAE","system":"bnf"},{"code":"0601023AWBCABAE","system":"bnf"},{"code":"0601021A0BCACAC","system":"bnf"},{"code":"0601021A0BBACAC","system":"bnf"},{"code":"0601011Q0AAABAB","system":"bnf"},{"code":"0601011Q0BBABAB","system":"bnf"},{"code":"0205052AEBBABAB","system":"bnf"},{"code":"0205052AEAAABAB","system":"bnf"},{"code":"0206010F0BIACAM","system":"bnf"},{"code":"0206010F0AAAMAM","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-103mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-103mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-103mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
