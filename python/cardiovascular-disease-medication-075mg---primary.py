# Caroline E Dale, Rohan Takhar, et. al, 2024.

import sys, csv, re

codes = [{"code":"0205010N0BBABAB","system":"bnf"},{"code":"0205051L0BEABAB","system":"bnf"},{"code":"0205051S0AAABAB","system":"bnf"},{"code":"0205052ACBBABAB","system":"bnf"},{"code":"0206020A0BBAAAA","system":"bnf"},{"code":"0205052ACAAABAB","system":"bnf"},{"code":"0205051F0AAAIAI","system":"bnf"},{"code":"0202040C0BGAAAA","system":"bnf"},{"code":"0206020F0BEAAAB","system":"bnf"},{"code":"0204000H0BGAAAA","system":"bnf"},{"code":"0204000Q0AAABAB","system":"bnf"},{"code":"0205040S0AAAEAE","system":"bnf"},{"code":"0206020F0BDAAAB","system":"bnf"},{"code":"0205051R0BCABAC","system":"bnf"},{"code":"0205051Q0BCAAAA","system":"bnf"},{"code":"0206020F0BHAAAB","system":"bnf"},{"code":"0206020F0BFAAAB","system":"bnf"},{"code":"0204000X0AAABAB","system":"bnf"},{"code":"0206020Z0AAABAB","system":"bnf"},{"code":"0205052ABBBABAB","system":"bnf"},{"code":"0206020F0BIAAAB","system":"bnf"},{"code":"0205051Z0BBAAAA","system":"bnf"},{"code":"0205051Q0AAAAAA","system":"bnf"},{"code":"0204000H0BJAAAA","system":"bnf"},{"code":"0205040V0AAACAC","system":"bnf"},{"code":"0204000X0AAAAAA","system":"bnf"},{"code":"0202040S0AAAPAP","system":"bnf"},{"code":"0205052I0AAAAAA","system":"bnf"},{"code":"0206020F0BIAEAB","system":"bnf"},{"code":"0202010B0BFAAAC","system":"bnf"},{"code":"0205052I0BEAAAA","system":"bnf"},{"code":"0204000Q0BCAAAB","system":"bnf"},{"code":"0202040B0BDAAAA","system":"bnf"},{"code":"0205051Y0BBABAB","system":"bnf"},{"code":"0205040V0BBACAC","system":"bnf"},{"code":"0204000H0BCAAAA","system":"bnf"},{"code":"0206020F0BJAAAB","system":"bnf"},{"code":"0205051L0AAABAB","system":"bnf"},{"code":"0202040B0BCAAAA","system":"bnf"},{"code":"0206020Z0BBABAB","system":"bnf"},{"code":"0204000H0BFADAA","system":"bnf"},{"code":"0206020F0BGAAAB","system":"bnf"},{"code":"0204000P0BBAAAA","system":"bnf"},{"code":"0202030C0AAACAC","system":"bnf"},{"code":"0202040D0BBAAAA","system":"bnf"},{"code":"0206020F0BBAAAB","system":"bnf"},{"code":"0205051R0BBAHAM","system":"bnf"},{"code":"0202040B0BHAAAA","system":"bnf"},{"code":"0205051I0BBABAB","system":"bnf"},{"code":"0206020A0BFAAAA","system":"bnf"},{"code":"0205052I0BDAAAA","system":"bnf"},{"code":"0206020Z0AAAAAA","system":"bnf"},{"code":"0205051E0AAAEAE","system":"bnf"},{"code":"0205052I0BBAAAA","system":"bnf"},{"code":"0205051L0BCABAB","system":"bnf"},{"code":"0205040S0BCACAE","system":"bnf"},{"code":"0205052ACBBADAD","system":"bnf"},{"code":"0202040C0BDAAAA","system":"bnf"},{"code":"0205052ABAAABAB","system":"bnf"},{"code":"0206020A0AAAAAA","system":"bnf"},{"code":"0206020Z0BBAAAA","system":"bnf"},{"code":"0205052ACAAADAD","system":"bnf"},{"code":"0204000H0AAAAAA","system":"bnf"},{"code":"0204000E0AAADAD","system":"bnf"},{"code":"0202010B0AAACAC","system":"bnf"},{"code":"0205051R0AAACAC","system":"bnf"},{"code":"0205051R0AAAMAM","system":"bnf"},{"code":"0204000H0AAALAL","system":"bnf"},{"code":"0205051Y0AAABAB","system":"bnf"},{"code":"0202010B0BBABAC","system":"bnf"},{"code":"0206020F0BIACAB","system":"bnf"},{"code":"0205051ABAAAAAA","system":"bnf"},{"code":"0205051S0BBABAB","system":"bnf"},{"code":"0205051ACAAAAAA","system":"bnf"},{"code":"0205051I0AAABAB","system":"bnf"},{"code":"0202010B0BEAAAC","system":"bnf"},{"code":"0205051W0AAABAB","system":"bnf"},{"code":"0202040B0BGAAAA","system":"bnf"},{"code":"0205052ABAAAAAA","system":"bnf"},{"code":"0205052ABBBAAAA","system":"bnf"},{"code":"0202040B0AAAAAA","system":"bnf"},{"code":"0202030C0BEAAAC","system":"bnf"},{"code":"0206020F0BLAAAB","system":"bnf"},{"code":"0205040V0BCABAC","system":"bnf"},{"code":"0206020F0AAABAB","system":"bnf"},{"code":"0205052ACBBAAAA","system":"bnf"},{"code":"0206020R0AAAAAA","system":"bnf"},{"code":"0202040D0AAAAAA","system":"bnf"},{"code":"0205051Q0BBAAAA","system":"bnf"},{"code":"0206020F0BKAAAB","system":"bnf"},{"code":"0202040C0AAAAAA","system":"bnf"},{"code":"0205052ACAAAAAA","system":"bnf"},{"code":"0204000H0BBAAAA","system":"bnf"},{"code":"0204000H0BFAEAL","system":"bnf"},{"code":"0205051C0BBAAAA","system":"bnf"},{"code":"0204000H0BIAAAA","system":"bnf"},{"code":"0205051ACAAADAD","system":"bnf"},{"code":"0205051L0BBABAB","system":"bnf"},{"code":"0205051Z0AAAAAA","system":"bnf"},{"code":"0202040C0BBAAAA","system":"bnf"},{"code":"0205051W0BBABAB","system":"bnf"},{"code":"0205051E0BBAEAE","system":"bnf"},{"code":"0205051AAAAABAB","system":"bnf"},{"code":"0204000P0AAAAAA","system":"bnf"},{"code":"0205051R0BBACAC","system":"bnf"},{"code":"0206020R0BBAAAA","system":"bnf"},{"code":"0205051C0AAAAAA","system":"bnf"},{"code":"0205010N0AAABAB","system":"bnf"},{"code":"0202040B0BBAAAA","system":"bnf"},{"code":"0209000A0AAAKAK","system":"bnf"},{"code":"0209000A0BQAAAB","system":"bnf"},{"code":"0209000Y0BCAAAA","system":"bnf"},{"code":"0209000Y0BBAAAA","system":"bnf"},{"code":"0209000A0BRAAAB","system":"bnf"},{"code":"0209000A0BKAAAK","system":"bnf"},{"code":"0209000A0BPAAAK","system":"bnf"},{"code":"0209000A0AAA7A7","system":"bnf"},{"code":"0209000A0AAABAB","system":"bnf"},{"code":"0209000C0BDAAAA","system":"bnf"},{"code":"0209000C0BBAAAA","system":"bnf"},{"code":"0209000C0AAAAAA","system":"bnf"},{"code":"0209000A0BIAAAK","system":"bnf"},{"code":"0209000A0BLAAAK","system":"bnf"},{"code":"0209000Y0AAAAAA","system":"bnf"},{"code":"0209000A0BMAAAK","system":"bnf"},{"code":"0209000A0AAAJAJ","system":"bnf"},{"code":"0209000A0BNAAAB","system":"bnf"},{"code":"0208020Z0BBABAB","system":"bnf"},{"code":"0208020X0AAAAAA","system":"bnf"},{"code":"0208020X0BBAAAA","system":"bnf"},{"code":"0208020Z0AAABAB","system":"bnf"},{"code":"0208020V0BBACAD","system":"bnf"},{"code":"0208020V0AAADAD","system":"bnf"},{"code":"0208020V0AABDBD","system":"bnf"},{"code":"0212000AIBBAAAA","system":"bnf"},{"code":"0212000AFBBAAAA","system":"bnf"},{"code":"0212000AABBADAD","system":"bnf"},{"code":"0212000AAAAADAD","system":"bnf"},{"code":"0212000AIAAAAAA","system":"bnf"},{"code":"0212000AFAAAAAA","system":"bnf"},{"code":"0601021P0AAABAB","system":"bnf"},{"code":"0601021H0BBAAAB","system":"bnf"},{"code":"0601021P0BBAAAB","system":"bnf"},{"code":"0601021H0BDABAB","system":"bnf"},{"code":"0601021H0BKABAB","system":"bnf"},{"code":"0601023ACAAAAAA","system":"bnf"},{"code":"0601023AEAAAAAA","system":"bnf"},{"code":"0601023ACBBAAAA","system":"bnf"},{"code":"0601023AYBBABAB","system":"bnf"},{"code":"0601023ARAAAAAA","system":"bnf"},{"code":"0601023AYAAAAAA","system":"bnf"},{"code":"0601023AVBBAAAA","system":"bnf"},{"code":"0601023AQAAAAAA","system":"bnf"},{"code":"0601023AGBBAAAA","system":"bnf"},{"code":"0601023AYAAABAB","system":"bnf"},{"code":"0601023AEBBAAAA","system":"bnf"},{"code":"0601021H0AAABAB","system":"bnf"},{"code":"0601023ARAAABAB","system":"bnf"},{"code":"0601023ARBBABAB","system":"bnf"},{"code":"0601023AYBBAAAA","system":"bnf"},{"code":"0601023ALAAAAAA","system":"bnf"},{"code":"0601023AVAAAAAA","system":"bnf"},{"code":"0601023ALAAABAB","system":"bnf"},{"code":"0601023ARBBAAAA","system":"bnf"},{"code":"0601023AGAAAAAA","system":"bnf"},{"code":"0601021P0BCADAB","system":"bnf"},{"code":"0601023AQBBAAAA","system":"bnf"},{"code":"0601023AXBBAAAA","system":"bnf"},{"code":"0204000ABBCAAAA","system":"bnf"},{"code":"0202020D0AAAFAF","system":"bnf"},{"code":"0202020U0AAABAB","system":"bnf"},{"code":"0204000ABBBAAAA","system":"bnf"},{"code":"0202020D0BBABAF","system":"bnf"},{"code":"0202020U0BBABAB","system":"bnf"},{"code":"0204000ABAAAAAA","system":"bnf"},{"code":"0206030Y0AAAAAA","system":"bnf"},{"code":"0206010I0AAAKAK","system":"bnf"},{"code":"0206030Y0AAABAB","system":"bnf"},{"code":"0206010F0BIADAN","system":"bnf"},{"code":"0206010W0AAAAAA","system":"bnf"},{"code":"0206010F0AAANAN","system":"bnf"},{"code":"0206010I0BLAAAK","system":"bnf"},{"code":"0206040AAAAAAAA","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-medication-075mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-medication-075mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-medication-075mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
