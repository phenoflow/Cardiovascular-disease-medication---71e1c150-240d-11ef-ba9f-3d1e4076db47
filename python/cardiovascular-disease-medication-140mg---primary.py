# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0204000R0AAAJAJ","system":"bnf"},{"code":"0205052B0BBACAC","system":"bnf"},{"code":"0206020T0BCAAAC","system":"bnf"},{"code":"0206020T0AAACAC","system":"bnf"},{"code":"0205051Q0AAADAD","system":"bnf"},{"code":"0205052V0AAAAAA","system":"bnf"},{"code":"0205052V0AAADAD","system":"bnf"},{"code":"0206020R0AAAXAX","system":"bnf"},{"code":"0205052B0AAACAC","system":"bnf"},{"code":"0205052Q0AAAAAA","system":"bnf"},{"code":"0202040U0BBAAAA","system":"bnf"},{"code":"0204000R0BGABAJ","system":"bnf"},{"code":"0204000M0AAAAAA","system":"bnf"},{"code":"0205052Y0BBACAC","system":"bnf"},{"code":"0204000R0BDAIAJ","system":"bnf"},{"code":"0204000N0AAACAC","system":"bnf"},{"code":"0212000Y0AAADAD","system":"bnf"},{"code":"0212000X0AAADAD","system":"bnf"},{"code":"0212000B0AAACAC","system":"bnf"},{"code":"0212000B0BBACAC","system":"bnf"},{"code":"0601021M0AAARAR","system":"bnf"},{"code":"0202020L0AABDBD","system":"bnf"},{"code":"0202020L0BPAABD","system":"bnf"},{"code":"0206010K0AAAVAV","system":"bnf"},{"code":"0206010K0AAADAD","system":"bnf"},{"code":"0206010K0BDAEAG","system":"bnf"},{"code":"0206010I0AAAJAJ","system":"bnf"},{"code":"0206010I0AAABAB","system":"bnf"},{"code":"0206010K0AAAGAG","system":"bnf"},{"code":"0206010K0AAAPAP","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-140mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-140mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-140mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
