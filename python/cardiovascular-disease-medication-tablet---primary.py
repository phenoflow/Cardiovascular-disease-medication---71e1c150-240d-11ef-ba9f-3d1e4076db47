# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0205040D0BJAAAQ","system":"bnf"},{"code":"0205052C0BBADAD","system":"bnf"},{"code":"0205052C0BBAAAA","system":"bnf"},{"code":"0205040D0BFAAAQ","system":"bnf"},{"code":"0205052C0BBACAC","system":"bnf"},{"code":"0205052C0BBAEAH","system":"bnf"},{"code":"020400090BBAAAA","system":"bnf"},{"code":"0202040C0BIAAAB","system":"bnf"},{"code":"0206020K0BDAAAB","system":"bnf"},{"code":"0202040V0BBAAAA","system":"bnf"},{"code":"0206020R0BXAAAX","system":"bnf"},{"code":"0205040D0BHAAAQ","system":"bnf"},{"code":"0205052C0BBABAB","system":"bnf"},{"code":"0205040D0BEAAAQ","system":"bnf"},{"code":"0205040D0BIAAAQ","system":"bnf"},{"code":"0209000A0BCAAAJ","system":"bnf"},{"code":"0208020H0BBAAAA","system":"bnf"},{"code":"0208020H0AAAAAA","system":"bnf"},{"code":"0208020V0BDAAAC","system":"bnf"},{"code":"0202080K0BCAAAB","system":"bnf"},{"code":"0206010K0BDACAB","system":"bnf"},{"code":"0206010K0CTAAAE","system":"bnf"},{"code":"0206010K0BNACAE","system":"bnf"},{"code":"0206010K0BDADAD","system":"bnf"},{"code":"0206010K0CJAAAE","system":"bnf"},{"code":"0206010K0CFAAAE","system":"bnf"},{"code":"0206010K0CDAAAE","system":"bnf"},{"code":"0206010K0CHAAAE","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-tablet---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-tablet---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-tablet---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
