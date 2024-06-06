# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0205020E0BBAAAC","system":"bnf"},{"code":"0205051U0BBAAAA","system":"bnf"},{"code":"0205020M0BBAAAA","system":"bnf"},{"code":"0205051E0BBABAB","system":"bnf"},{"code":"0205040S0AAABAB","system":"bnf"},{"code":"0205020E0AAACAC","system":"bnf"},{"code":"0205040S0BBAAAB","system":"bnf"},{"code":"0205020E0AAAHAH","system":"bnf"},{"code":"0202010J0AAAAAA","system":"bnf"},{"code":"0205020E0AAAGAG","system":"bnf"},{"code":"0205020E0AAADAD","system":"bnf"},{"code":"0205020M0AAACAC","system":"bnf"},{"code":"0205051U0BCAAAA","system":"bnf"},{"code":"0202040A0BBAAAA","system":"bnf"},{"code":"0205020M0BBABAB","system":"bnf"},{"code":"0205020E0BBACAA","system":"bnf"},{"code":"0205020M0BBACAC","system":"bnf"},{"code":"0205020M0AAAAAA","system":"bnf"},{"code":"0202010J0BBAAAA","system":"bnf"},{"code":"0205020M0AAABAB","system":"bnf"},{"code":"0205020E0AAAFAF","system":"bnf"},{"code":"0202040A0AAAAAA","system":"bnf"},{"code":"0205020M0BBAEAB","system":"bnf"},{"code":"0205020E0BBABAD","system":"bnf"},{"code":"0205020M0BBADAA","system":"bnf"},{"code":"0205020M0BBAFAC","system":"bnf"},{"code":"0205051E0AAABAB","system":"bnf"},{"code":"0205051U0AAAAAA","system":"bnf"},{"code":"0208020V0AAASAS","system":"bnf"},{"code":"0208020V0BBAFAS","system":"bnf"},{"code":"0212000C0BBAEAE","system":"bnf"},{"code":"0212000C0BBACAC","system":"bnf"},{"code":"0212000C0BBAAAA","system":"bnf"},{"code":"0212000C0BBADAD","system":"bnf"},{"code":"0212000P0BBADAD","system":"bnf"},{"code":"0212000C0BBABAB","system":"bnf"},{"code":"0212000C0AAABAB","system":"bnf"},{"code":"0212000P0BBABAB","system":"bnf"},{"code":"0212000C0AAACAC","system":"bnf"},{"code":"0212000C0AAADAD","system":"bnf"},{"code":"0212000C0AAAAAA","system":"bnf"},{"code":"0212000C0AAAEAE","system":"bnf"},{"code":"0212000P0BBACAC","system":"bnf"},{"code":"0601023Y0BBAAAA","system":"bnf"},{"code":"0601023AIBBAAAA","system":"bnf"},{"code":"0601023Y0AAABAB","system":"bnf"},{"code":"0601023Y0BBABAB","system":"bnf"},{"code":"0601023AIAAABAB","system":"bnf"},{"code":"0601023AIAAAAAA","system":"bnf"},{"code":"0601023AIBBABAB","system":"bnf"},{"code":"0601023R0BBAAAA","system":"bnf"},{"code":"0601023R0AAAAAA","system":"bnf"},{"code":"0601023AIBBACAC","system":"bnf"},{"code":"0601023Y0AAAAAA","system":"bnf"},{"code":"0601012ABBBABAB","system":"bnf"},{"code":"0201010F0BBAEAA","system":"bnf"},{"code":"0201010F0BBABAF","system":"bnf"},{"code":"0201010F0BEACAF","system":"bnf"},{"code":"0201010F0AAAFAF","system":"bnf"},{"code":"0206010F0AAAIAI","system":"bnf"},{"code":"0206010F0AACICI","system":"bnf"},{"code":"0206010F0BQAAA5","system":"bnf"},{"code":"0206010F0BBABCI","system":"bnf"},{"code":"0206010F0BFABCI","system":"bnf"},{"code":"0206010F0BWAACI","system":"bnf"},{"code":"0206010F0AAAHAH","system":"bnf"},{"code":"0206010F0AAA5A5","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-50microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-50microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-50microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
