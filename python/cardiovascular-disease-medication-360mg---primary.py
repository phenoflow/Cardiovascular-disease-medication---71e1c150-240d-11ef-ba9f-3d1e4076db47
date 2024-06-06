# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0206020R0BBAIAP","system":"bnf"},{"code":"0206020C0BNAEBA","system":"bnf"},{"code":"0206020C0BEAAAA","system":"bnf"},{"code":"0206020C0BYAAAJ","system":"bnf"},{"code":"0206020R0BRADAP","system":"bnf"},{"code":"0206020C0BWAEAJ","system":"bnf"},{"code":"0206020C0AAAJAJ","system":"bnf"},{"code":"0202040S0AAARAR","system":"bnf"},{"code":"0206020R0CFACAP","system":"bnf"},{"code":"0206020C0BRAAAJ","system":"bnf"},{"code":"0206020R0CHABAP","system":"bnf"},{"code":"0206020C0BBAAAA","system":"bnf"},{"code":"0206020C0BPACAJ","system":"bnf"},{"code":"0206020C0BUAAAJ","system":"bnf"},{"code":"0206020C0AAAAAA","system":"bnf"},{"code":"0206020R0AABFBF","system":"bnf"},{"code":"0206020C0BQAAAA","system":"bnf"},{"code":"0206020C0AABABA","system":"bnf"},{"code":"0206020R0BGADBF","system":"bnf"},{"code":"0206020C0BSAAAJ","system":"bnf"},{"code":"0206020R0AAAPAP","system":"bnf"},{"code":"0209000Z0AAABAB","system":"bnf"},{"code":"0209000Z0BBABAB","system":"bnf"},{"code":"0208020AAAAACAC","system":"bnf"},{"code":"0208020AABBACAC","system":"bnf"},{"code":"0208010D0BCACAC","system":"bnf"},{"code":"0208010D0BBACAC","system":"bnf"},{"code":"0208010D0AAACAC","system":"bnf"},{"code":"0208010D0BFACAC","system":"bnf"},{"code":"0208010D0BEACAC","system":"bnf"},{"code":"0208010D0BDACAC","system":"bnf"},{"code":"0212000B0AAAPAP","system":"bnf"},{"code":"0601023U0AAAAAA","system":"bnf"},{"code":"0601021M0AAATAT","system":"bnf"},{"code":"0601023U0BBAAAA","system":"bnf"},{"code":"0601021M0BKAAAT","system":"bnf"},{"code":"0601021M0BNABAT","system":"bnf"},{"code":"0601021M0BNACAT","system":"bnf"},{"code":"0206010W0AAABAB","system":"bnf"},{"code":"0206010K0AAAEAE","system":"bnf"},{"code":"0206010K0CNAAAE","system":"bnf"},{"code":"0206010K0BYAAAE","system":"bnf"},{"code":"0206010K0CKAAAE","system":"bnf"},{"code":"0206010K0AAAQAQ","system":"bnf"},{"code":"0206010K0BKAAAE","system":"bnf"},{"code":"0206010K0BXACAE","system":"bnf"},{"code":"0206010K0CRAAAE","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-360mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-360mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-360mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
