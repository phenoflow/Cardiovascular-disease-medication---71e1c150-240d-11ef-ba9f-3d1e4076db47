cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  cardiovascular-disease-medication-atenix---primary:
    run: cardiovascular-disease-medication-atenix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  cardiovascular-disease-medication-075mg---primary:
    run: cardiovascular-disease-medication-075mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-atenix---primary/output
  cardiovascular-disease-medication-115mg---primary:
    run: cardiovascular-disease-medication-115mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-075mg---primary/output
  cardiovascular-disease-medication-gopten---primary:
    run: cardiovascular-disease-medication-gopten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-115mg---primary/output
  cardiovascular-disease-medication-neozipine---primary:
    run: cardiovascular-disease-medication-neozipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-gopten---primary/output
  cardiovascular-disease-medication-procoralan---primary:
    run: cardiovascular-disease-medication-procoralan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-neozipine---primary/output
  cardiovascular-disease-medication-capsule---primary:
    run: cardiovascular-disease-medication-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-procoralan---primary/output
  cardiovascular-disease-medication-tolura---primary:
    run: cardiovascular-disease-medication-tolura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-capsule---primary/output
  cardiovascular-disease-medication-lopresor---primary:
    run: cardiovascular-disease-medication-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tolura---primary/output
  cardiovascular-disease-medication-140mg---primary:
    run: cardiovascular-disease-medication-140mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lopresor---primary/output
  cardiovascular-disease-medication-025mg---primary:
    run: cardiovascular-disease-medication-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-140mg---primary/output
  cardiovascular-disease-medication-110mg---primary:
    run: cardiovascular-disease-medication-110mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-025mg---primary/output
  cardiovascular-disease-medication-cardicor---primary:
    run: cardiovascular-disease-medication-cardicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-110mg---primary/output
  cardiovascular-disease-medication-titration---primary:
    run: cardiovascular-disease-medication-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cardicor---primary/output
  cardiovascular-disease-medication-aliskiren---primary:
    run: cardiovascular-disease-medication-aliskiren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-titration---primary/output
  cardiovascular-disease-medication-quinil---primary:
    run: cardiovascular-disease-medication-quinil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-aliskiren---primary/output
  inderal-cardiovascular-disease-medication---primary:
    run: inderal-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-quinil---primary/output
  cardiovascular-disease-medication-50microgram---primary:
    run: cardiovascular-disease-medication-50microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: inderal-cardiovascular-disease-medication---primary/output
  hypolar-cardiovascular-disease-medication---primary:
    run: hypolar-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-50microgram---primary/output
  cardiovascular-disease-medication-360mg---primary:
    run: cardiovascular-disease-medication-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: hypolar-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-320mg---primary:
    run: cardiovascular-disease-medication-320mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-360mg---primary/output
  cardiovascular-disease-medication-1000mg---primary:
    run: cardiovascular-disease-medication-1000mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-320mg---primary/output
  cardiovascular-disease-medication-securon---primary:
    run: cardiovascular-disease-medication-securon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-1000mg---primary/output
  cardiovascular-disease-medication-accupro---primary:
    run: cardiovascular-disease-medication-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-securon---primary/output
  cardiovascular-disease-medication-candesartan---primary:
    run: cardiovascular-disease-medication-candesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-accupro---primary/output
  cardiovascular-disease-medication-3125mg---primary:
    run: cardiovascular-disease-medication-3125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-candesartan---primary/output
  cardiovascular-disease-medication-cozaarcomp---primary:
    run: cardiovascular-disease-medication-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-3125mg---primary/output
  cardiovascular-disease-medication-adalat---primary:
    run: cardiovascular-disease-medication-adalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cozaarcomp---primary/output
  cardiovascular-disease-medication-doxazosin---primary:
    run: cardiovascular-disease-medication-doxazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-adalat---primary/output
  cardiovascular-disease-medication-12000unit---primary:
    run: cardiovascular-disease-medication-12000unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-doxazosin---primary/output
  cardiovascular-disease-medication-neonaclex---primary:
    run: cardiovascular-disease-medication-neonaclex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-12000unit---primary/output
  cardiovascular-disease-medication-irbesartan---primary:
    run: cardiovascular-disease-medication-irbesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-neonaclex---primary/output
  cardiovascular-disease-medication-syscor---primary:
    run: cardiovascular-disease-medication-syscor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-irbesartan---primary/output
  cardiovascular-disease-medication-teveten---primary:
    run: cardiovascular-disease-medication-teveten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-syscor---primary/output
  cardiovascular-disease-medication-modifiedrelease---primary:
    run: cardiovascular-disease-medication-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-teveten---primary/output
  cardiovascular-disease-medication-zemret---primary:
    run: cardiovascular-disease-medication-zemret---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-modifiedrelease---primary/output
  cardiovascular-disease-medication-azilsartan---primary:
    run: cardiovascular-disease-medication-azilsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-zemret---primary/output
  cardiovascular-disease-medication-diuril---primary:
    run: cardiovascular-disease-medication-diuril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-azilsartan---primary/output
  cardiovascular-disease-medication-oxprenolol---primary:
    run: cardiovascular-disease-medication-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-diuril---primary/output
  cardiovascular-disease-medication-aprinox---primary:
    run: cardiovascular-disease-medication-aprinox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-oxprenolol---primary/output
  sectral-cardiovascular-disease-medication---primary:
    run: sectral-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-aprinox---primary/output
  cardiovascular-disease-medication-103mg---primary:
    run: cardiovascular-disease-medication-103mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: sectral-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-univer---primary:
    run: cardiovascular-disease-medication-univer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-103mg---primary/output
  cardiovascular-disease-medication-eplerenone---primary:
    run: cardiovascular-disease-medication-eplerenone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-univer---primary/output
  cardiovascular-disease-medication-trandolapril---primary:
    run: cardiovascular-disease-medication-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-eplerenone---primary/output
  cardiovascular-disease-medication-diltiazem---primary:
    run: cardiovascular-disease-medication-diltiazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-trandolapril---primary/output
  cardiovascular-disease-medication-eprosartan---primary:
    run: cardiovascular-disease-medication-eprosartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-diltiazem---primary/output
  cardiovascular-disease-medication-ecopace---primary:
    run: cardiovascular-disease-medication-ecopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-eprosartan---primary/output
  cardiovascular-disease-medication-losartan---primary:
    run: cardiovascular-disease-medication-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ecopace---primary/output
  cardiovascular-disease-medication-nimodrel---primary:
    run: cardiovascular-disease-medication-nimodrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-losartan---primary/output
  cardiovascular-disease-medication-dilcardia---primary:
    run: cardiovascular-disease-medication-dilcardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nimodrel---primary/output
  cardiovascular-disease-medication-staril---primary:
    run: cardiovascular-disease-medication-staril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-dilcardia---primary/output
  cardiovascular-disease-medication-cozidocapt---primary:
    run: cardiovascular-disease-medication-cozidocapt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-staril---primary/output
  cardiovascular-disease-medication-acebutolol---primary:
    run: cardiovascular-disease-medication-acebutolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cozidocapt---primary/output
  cardiovascular-disease-medication-375mg---primary:
    run: cardiovascular-disease-medication-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-acebutolol---primary/output
  cardiovascular-disease-medication-315ml---primary:
    run: cardiovascular-disease-medication-315ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-375mg---primary/output
  cardiovascular-disease-medication-bicarzem---primary:
    run: cardiovascular-disease-medication-bicarzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-315ml---primary/output
  cardiovascular-disease-medication-cardilate---primary:
    run: cardiovascular-disease-medication-cardilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bicarzem---primary/output
  cardiovascular-disease-medication-adizemxl---primary:
    run: cardiovascular-disease-medication-adizemxl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cardilate---primary/output
  cardiovascular-disease-medication-300unit---primary:
    run: cardiovascular-disease-medication-300unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-adizemxl---primary/output
  cardiovascular-disease-medication-750mg---primary:
    run: cardiovascular-disease-medication-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-300unit---primary/output
  cardiovascular-disease-medication-codiovan---primary:
    run: cardiovascular-disease-medication-codiovan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-750mg---primary/output
  cardiovascular-disease-medication-calchan---primary:
    run: cardiovascular-disease-medication-calchan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-codiovan---primary/output
  cardiovascular-disease-medication-dilzem---primary:
    run: cardiovascular-disease-medication-dilzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-calchan---primary/output
  cardiovascular-disease-medication-betaprograne---primary:
    run: cardiovascular-disease-medication-betaprograne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-dilzem---primary/output
  cardiovascular-disease-medication-chlor---primary:
    run: cardiovascular-disease-medication-chlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-betaprograne---primary/output
  cardiovascular-disease-medication-coflumactone---primary:
    run: cardiovascular-disease-medication-coflumactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-chlor---primary/output
  cardiovascular-disease-medication-025ml---primary:
    run: cardiovascular-disease-medication-025ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-coflumactone---primary/output
  cardiovascular-disease-medication-coaprovel---primary:
    run: cardiovascular-disease-medication-coaprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-025ml---primary/output
  cardiovascular-disease-medication-cilazapril---primary:
    run: cardiovascular-disease-medication-cilazapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-coaprovel---primary/output
  cardiovascular-disease-medication-tablet---primary:
    run: cardiovascular-disease-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cilazapril---primary/output
  cardiovascular-disease-medication-viazem---primary:
    run: cardiovascular-disease-medication-viazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tablet---primary/output
  cardiovascular-disease-medication-catapre---primary:
    run: cardiovascular-disease-medication-catapre---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-viazem---primary/output
  cardiovascular-disease-medication-erbumine---primary:
    run: cardiovascular-disease-medication-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-catapre---primary/output
  cardiovascular-disease-medication-captopril---primary:
    run: cardiovascular-disease-medication-captopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-erbumine---primary/output
  cardiovascular-disease-medication-slofedipine---primary:
    run: cardiovascular-disease-medication-slofedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-captopril---primary/output
  cardiovascular-disease-medication-180mg---primary:
    run: cardiovascular-disease-medication-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-slofedipine---primary/output
  cardiovascular-disease-medication-slozem---primary:
    run: cardiovascular-disease-medication-slozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-180mg---primary/output
  cardiovascular-disease-medication-benph---primary:
    run: cardiovascular-disease-medication-benph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-slozem---primary/output
  cardiovascular-disease-medication-doxadura---primary:
    run: cardiovascular-disease-medication-doxadura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-benph---primary/output
  cardiovascular-disease-medication-angilol---primary:
    run: cardiovascular-disease-medication-angilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-doxadura---primary/output
  cardiovascular-disease-medication-cotenidone---primary:
    run: cardiovascular-disease-medication-cotenidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-angilol---primary/output
  cardiovascular-disease-medication-valsartan---primary:
    run: cardiovascular-disease-medication-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cotenidone---primary/output
  cardiovascular-disease-medication-veratil---primary:
    run: cardiovascular-disease-medication-veratil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-valsartan---primary/output
  cardiovascular-disease-medication-triamterene---primary:
    run: cardiovascular-disease-medication-triamterene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-veratil---primary/output
  cardiovascular-disease-medication-bedranol---primary:
    run: cardiovascular-disease-medication-bedranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-triamterene---primary/output
  cardiovascular-disease-medication-trimetazidine---primary:
    run: cardiovascular-disease-medication-trimetazidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bedranol---primary/output
  cardiovascular-disease-medication-tolucombi---primary:
    run: cardiovascular-disease-medication-tolucombi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-trimetazidine---primary/output
  cardiovascular-disease-medication-cardura---primary:
    run: cardiovascular-disease-medication-cardura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tolucombi---primary/output
  cardiovascular-disease-medication-cordilox---primary:
    run: cardiovascular-disease-medication-cordilox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cardura---primary/output
  cardiovascular-disease-medication-nifedipress---primary:
    run: cardiovascular-disease-medication-nifedipress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cordilox---primary/output
  cardiovascular-disease-medication-cobetaloc---primary:
    run: cardiovascular-disease-medication-cobetaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nifedipress---primary/output
  cardiovascular-disease-medication-coversyl---primary:
    run: cardiovascular-disease-medication-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cobetaloc---primary/output
  cardiovascular-disease-medication-tenchlor---primary:
    run: cardiovascular-disease-medication-tenchlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-coversyl---primary/output
  cardiovascular-disease-medication-micardi---primary:
    run: cardiovascular-disease-medication-micardi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tenchlor---primary/output
  cardiovascular-disease-medication-chlortalidone---primary:
    run: cardiovascular-disease-medication-chlortalidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-micardi---primary/output
  cardiovascular-disease-medication-145mg---primary:
    run: cardiovascular-disease-medication-145mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-chlortalidone---primary/output
  cardiovascular-disease-medication-lercanidipine---primary:
    run: cardiovascular-disease-medication-lercanidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-145mg---primary/output
  cardiovascular-disease-medication-starter---primary:
    run: cardiovascular-disease-medication-starter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lercanidipine---primary/output
  cardiovascular-disease-medication-cardene---primary:
    run: cardiovascular-disease-medication-cardene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-starter---primary/output
  lisoretic-cardiovascular-disease-medication---primary:
    run: lisoretic-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cardene---primary/output
  cardiovascular-disease-medication-methyldopa---primary:
    run: cardiovascular-disease-medication-methyldopa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: lisoretic-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-lisicostad---primary:
    run: cardiovascular-disease-medication-lisicostad---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-methyldopa---primary/output
  cardiovascular-disease-medication-celiprolol---primary:
    run: cardiovascular-disease-medication-celiprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lisicostad---primary/output
  cardiovascular-disease-medication-hytrin---primary:
    run: cardiovascular-disease-medication-hytrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-celiprolol---primary/output
  cardiovascular-disease-medication-verapamil---primary:
    run: cardiovascular-disease-medication-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-hytrin---primary/output
  cardiovascular-disease-medication-captomex---primary:
    run: cardiovascular-disease-medication-captomex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-verapamil---primary/output
  zestoretic-cardiovascular-disease-medication---primary:
    run: zestoretic-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-captomex---primary/output
  cardiovascular-disease-medication-coracten---primary:
    run: cardiovascular-disease-medication-coracten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: zestoretic-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-betaloc---primary:
    run: cardiovascular-disease-medication-betaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-coracten---primary/output
  cardiovascular-disease-medication-alphavase---primary:
    run: cardiovascular-disease-medication-alphavase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-betaloc---primary/output
  cardiovascular-disease-medication-sabervel---primary:
    run: cardiovascular-disease-medication-sabervel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-alphavase---primary/output
  cardiovascular-disease-medication-kentipine---primary:
    run: cardiovascular-disease-medication-kentipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-sabervel---primary/output
  cardiovascular-disease-medication-nisoldipine---primary:
    run: cardiovascular-disease-medication-nisoldipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-kentipine---primary/output
  cardiovascular-disease-medication-kaplon---primary:
    run: cardiovascular-disease-medication-kaplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nisoldipine---primary/output
  cardiovascular-disease-medication-atenolol---primary:
    run: cardiovascular-disease-medication-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-kaplon---primary/output
  cardiovascular-disease-medication-verapress---primary:
    run: cardiovascular-disease-medication-verapress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-atenolol---primary/output
  cardiovascular-disease-medication-240mg---primary:
    run: cardiovascular-disease-medication-240mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-verapress---primary/output
  cardiovascular-disease-medication-actelsar---primary:
    run: cardiovascular-disease-medication-actelsar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-240mg---primary/output
  pralenal-cardiovascular-disease-medication---primary:
    run: pralenal-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-actelsar---primary/output
  cardiovascular-disease-medication-inspra---primary:
    run: cardiovascular-disease-medication-inspra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: pralenal-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-calcicard---primary:
    run: cardiovascular-disease-medication-calcicard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-inspra---primary/output
  cardiovascular-disease-medication-odrik---primary:
    run: cardiovascular-disease-medication-odrik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-calcicard---primary/output
  cardiovascular-disease-medication-terazosin---primary:
    run: cardiovascular-disease-medication-terazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-odrik---primary/output
  cardiovascular-disease-medication-rapranol---primary:
    run: cardiovascular-disease-medication-rapranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-terazosin---primary/output
  cardiovascular-disease-medication-zemtard---primary:
    run: cardiovascular-disease-medication-zemtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-rapranol---primary/output
  cardiovascular-disease-medication-capoten---primary:
    run: cardiovascular-disease-medication-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-zemtard---primary/output
  cardiovascular-disease-medication-100000unit---primary:
    run: cardiovascular-disease-medication-100000unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-capoten---primary/output
  cardiovascular-disease-medication-nidef---primary:
    run: cardiovascular-disease-medication-nidef---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-100000unit---primary/output
  cardiovascular-disease-medication-300mg---primary:
    run: cardiovascular-disease-medication-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nidef---primary/output
  cardiovascular-disease-medication-angitil---primary:
    run: cardiovascular-disease-medication-angitil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-300mg---primary/output
  cardiovascular-disease-medication-kalten---primary:
    run: cardiovascular-disease-medication-kalten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-angitil---primary/output
  cardiovascular-disease-medication-telmisartan---primary:
    run: cardiovascular-disease-medication-telmisartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-kalten---primary/output
  cardiovascular-disease-medication-congescor---primary:
    run: cardiovascular-disease-medication-congescor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-telmisartan---primary/output
  cardiovascular-disease-medication-aldactide---primary:
    run: cardiovascular-disease-medication-aldactide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-congescor---primary/output
  cardiovascular-disease-medication-adizemsr---primary:
    run: cardiovascular-disease-medication-adizemsr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-aldactide---primary/output
  cardiovascular-disease-medication-tenormin---primary:
    run: cardiovascular-disease-medication-tenormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-adizemsr---primary/output
  cardiovascular-disease-medication-celectol---primary:
    run: cardiovascular-disease-medication-celectol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tenormin---primary/output
  cardiovascular-disease-medication-tildiem---primary:
    run: cardiovascular-disease-medication-tildiem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-celectol---primary/output
  cardiovascular-disease-medication-propranolol---primary:
    run: cardiovascular-disease-medication-propranolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tildiem---primary/output
  corgaretic-cardiovascular-disease-medication---primary:
    run: corgaretic-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-propranolol---primary/output
  cardiovascular-disease-medication-acepril---primary:
    run: cardiovascular-disease-medication-acepril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: corgaretic-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-urizide---primary:
    run: cardiovascular-disease-medication-urizide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-acepril---primary/output
  cardiovascular-disease-medication-minipress---primary:
    run: cardiovascular-disease-medication-minipress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-urizide---primary/output
  cardiovascular-disease-medication-corgard---primary:
    run: cardiovascular-disease-medication-corgard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-minipress---primary/output
  cardiovascular-disease-medication-motens---primary:
    run: cardiovascular-disease-medication-motens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-corgard---primary/output
  cardiovascular-disease-medication-horizem---primary:
    run: cardiovascular-disease-medication-horizem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-motens---primary/output
  cardiovascular-disease-medication-indapamide---primary:
    run: cardiovascular-disease-medication-indapamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-horizem---primary/output
  cardiovascular-disease-medication-lacidipine---primary:
    run: cardiovascular-disease-medication-lacidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-indapamide---primary/output
  cardiovascular-disease-medication-cascor---primary:
    run: cardiovascular-disease-medication-cascor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lacidipine---primary/output
  cardiovascular-disease-medication-adanif---primary:
    run: cardiovascular-disease-medication-adanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cascor---primary/output
  cardiovascular-disease-medication-metoprolol---primary:
    run: cardiovascular-disease-medication-metoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-adanif---primary/output
  cardiovascular-disease-medication-metabet---primary:
    run: cardiovascular-disease-medication-metabet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-metoprolol---primary/output
  cardiovascular-disease-medication-kenzem---primary:
    run: cardiovascular-disease-medication-kenzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-metabet---primary/output
  cardiovascular-disease-medication-cardozin---primary:
    run: cardiovascular-disease-medication-cardozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-kenzem---primary/output
  cardiovascular-disease-medication-tensopril---primary:
    run: cardiovascular-disease-medication-tensopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cardozin---primary/output
  cardiovascular-disease-medication-carace---primary:
    run: cardiovascular-disease-medication-carace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tensopril---primary/output
  cardiovascular-disease-medication-zildil---primary:
    run: cardiovascular-disease-medication-zildil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-carace---primary/output
  cardiovascular-disease-medication-disogram---primary:
    run: cardiovascular-disease-medication-disogram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-zildil---primary/output
  cardiovascular-disease-medication-vastarel---primary:
    run: cardiovascular-disease-medication-vastarel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-disogram---primary/output
  cardiovascular-disease-medication-trasicor---primary:
    run: cardiovascular-disease-medication-trasicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-vastarel---primary/output
  cardiovascular-disease-medication-tensipine---primary:
    run: cardiovascular-disease-medication-tensipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-trasicor---primary/output
  cardiovascular-disease-medication-ifirmasta---primary:
    run: cardiovascular-disease-medication-ifirmasta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tensipine---primary/output
  cardiovascular-disease-medication-antipressan---primary:
    run: cardiovascular-disease-medication-antipressan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ifirmasta---primary/output
  cardiovascular-disease-medication-adipine---primary:
    run: cardiovascular-disease-medication-adipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-antipressan---primary/output
  synuretic-cardiovascular-disease-medication---primary:
    run: synuretic-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-adipine---primary/output
  cardiovascular-disease-medication-18000unit---primary:
    run: cardiovascular-disease-medication-18000unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: synuretic-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-capozide---primary:
    run: cardiovascular-disease-medication-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-18000unit---primary/output
  cardiovascular-disease-medication-valni---primary:
    run: cardiovascular-disease-medication-valni---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-capozide---primary/output
  cardiovascular-disease-medication-edarbi---primary:
    run: cardiovascular-disease-medication-edarbi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-valni---primary/output
  cardiovascular-disease-medication-raporsin---primary:
    run: cardiovascular-disease-medication-raporsin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-edarbi---primary/output
  cardiovascular-disease-medication-hypovase---primary:
    run: cardiovascular-disease-medication-hypovase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-raporsin---primary/output
  cardiovascular-disease-medication-angiozem---primary:
    run: cardiovascular-disease-medication-angiozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-hypovase---primary/output
  cardiovascular-disease-medication-caralpha---primary:
    run: cardiovascular-disease-medication-caralpha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-angiozem---primary/output
  cardiovascular-disease-medication-aldactone---primary:
    run: cardiovascular-disease-medication-aldactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-caralpha---primary/output
  cardiovascular-disease-medication-aldomet---primary:
    run: cardiovascular-disease-medication-aldomet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-aldactone---primary/output
  cardiovascular-disease-medication-vascace---primary:
    run: cardiovascular-disease-medication-vascace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-aldomet---primary/output
  cardiovascular-disease-medication-nimodipine---primary:
    run: cardiovascular-disease-medication-nimodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-vascace---primary/output
  cardiovascular-disease-medication-573mg---primary:
    run: cardiovascular-disease-medication-573mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nimodipine---primary/output
  cardiovascular-disease-medication-triapin---primary:
    run: cardiovascular-disease-medication-triapin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-573mg---primary/output
  cardiovascular-disease-medication-nifopress---primary:
    run: cardiovascular-disease-medication-nifopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-triapin---primary/output
  cardiovascular-disease-medication-150mg---primary:
    run: cardiovascular-disease-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nifopress---primary/output
  cardiovascular-disease-medication-nifedipine---primary:
    run: cardiovascular-disease-medication-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-150mg---primary/output
  cardiovascular-disease-medication-nadolol---primary:
    run: cardiovascular-disease-medication-nadolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nifedipine---primary/output
  cardiovascular-disease-medication-angiopine---primary:
    run: cardiovascular-disease-medication-angiopine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nadolol---primary/output
  cardiovascular-disease-medication-nicardipine---primary:
    run: cardiovascular-disease-medication-nicardipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-angiopine---primary/output
  cardiovascular-disease-medication-natrilix---primary:
    run: cardiovascular-disease-medication-natrilix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nicardipine---primary/output
  cardiovascular-disease-medication-160mg---primary:
    run: cardiovascular-disease-medication-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-natrilix---primary/output
  lopid-cardiovascular-disease-medication---primary:
    run: lopid-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-160mg---primary/output
  cardiovascular-disease-medication-ticagrelor---primary:
    run: cardiovascular-disease-medication-ticagrelor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: lopid-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-retard---primary:
    run: cardiovascular-disease-medication-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ticagrelor---primary/output
  brilique-cardiovascular-disease-medication---primary:
    run: brilique-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-retard---primary/output
  cardiovascular-disease-medication-250mg---primary:
    run: cardiovascular-disease-medication-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: brilique-cardiovascular-disease-medication---primary/output
  orodispersible-cardiovascular-disease-medication---primary:
    run: orodispersible-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-250mg---primary/output
  cardiovascular-disease-medication-dipyridamole---primary:
    run: cardiovascular-disease-medication-dipyridamole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: orodispersible-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-postmi---primary:
    run: cardiovascular-disease-medication-postmi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-dipyridamole---primary/output
  cardiovascular-disease-medication-gastroresistant---primary:
    run: cardiovascular-disease-medication-gastroresistant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-postmi---primary/output
  cardiovascular-disease-medication-pyridantin---primary:
    run: cardiovascular-disease-medication-pyridantin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-gastroresistant---primary/output
  cardiovascular-disease-medication-plavix---primary:
    run: cardiovascular-disease-medication-plavix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-pyridantin---primary/output
  cardiovascular-disease-medication-persantin---primary:
    run: cardiovascular-disease-medication-persantin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-plavix---primary/output
  cardiovascular-disease-medication-200mg---primary:
    run: cardiovascular-disease-medication-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-persantin---primary/output
  cardiovascular-disease-medication-apixaban---primary:
    run: cardiovascular-disease-medication-apixaban---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-200mg---primary/output
  cardiovascular-disease-medication-eliqui---primary:
    run: cardiovascular-disease-medication-eliqui---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-apixaban---primary/output
  cardiovascular-disease-medication-pradaxa---primary:
    run: cardiovascular-disease-medication-pradaxa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-eliqui---primary/output
  cardiovascular-disease-medication-etexilate---primary:
    run: cardiovascular-disease-medication-etexilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-pradaxa---primary/output
  cardiovascular-disease-medication-lixiana---primary:
    run: cardiovascular-disease-medication-lixiana---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-etexilate---primary/output
  cardiovascular-disease-medication-edoxaban---primary:
    run: cardiovascular-disease-medication-edoxaban---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lixiana---primary/output
  cardiovascular-disease-medication-warfarin---primary:
    run: cardiovascular-disease-medication-warfarin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-edoxaban---primary/output
  cardiovascular-disease-medication-phenindione---primary:
    run: cardiovascular-disease-medication-phenindione---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-warfarin---primary/output
  cardiovascular-disease-medication-marevan---primary:
    run: cardiovascular-disease-medication-marevan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-phenindione---primary/output
  cardiovascular-disease-medication-multidose---primary:
    run: cardiovascular-disease-medication-multidose---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-marevan---primary/output
  cardiovascular-disease-medication-enoxaparin---primary:
    run: cardiovascular-disease-medication-enoxaparin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-multidose---primary/output
  cardiovascular-disease-medication-500unit---primary:
    run: cardiovascular-disease-medication-500unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-enoxaparin---primary/output
  cardiovascular-disease-medication-004ml---primary:
    run: cardiovascular-disease-medication-004ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-500unit---primary/output
  cardiovascular-disease-medication-5000unit---primary:
    run: cardiovascular-disease-medication-5000unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-004ml---primary/output
  cardiovascular-disease-medication-002ml---primary:
    run: cardiovascular-disease-medication-002ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-5000unit---primary/output
  cardiovascular-disease-medication-arovi---primary:
    run: cardiovascular-disease-medication-arovi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-002ml---primary/output
  cardiovascular-disease-medication-inhixa---primary:
    run: cardiovascular-disease-medication-inhixa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-arovi---primary/output
  cardiovascular-disease-medication-clexane---primary:
    run: cardiovascular-disease-medication-clexane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-inhixa---primary/output
  cardiovascular-disease-medication-ledraxen---primary:
    run: cardiovascular-disease-medication-ledraxen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-clexane---primary/output
  cardiovascular-disease-medication-forte---primary:
    run: cardiovascular-disease-medication-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ledraxen---primary/output
  cardiovascular-disease-medication-becat---primary:
    run: cardiovascular-disease-medication-becat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-forte---primary/output
  cardiovascular-disease-medication-micro---primary:
    run: cardiovascular-disease-medication-micro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-becat---primary/output
  cardiovascular-disease-medication-omega---primary:
    run: cardiovascular-disease-medication-omega---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-micro---primary/output
  cardiovascular-disease-medication-colestipol---primary:
    run: cardiovascular-disease-medication-colestipol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-omega---primary/output
  cardiovascular-disease-medication-ranzolont---primary:
    run: cardiovascular-disease-medication-ranzolont---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-colestipol---primary/output
  cardiovascular-disease-medication-lipitor---primary:
    run: cardiovascular-disease-medication-lipitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ranzolont---primary/output
  cardiovascular-disease-medication-fluvastatin---primary:
    run: cardiovascular-disease-medication-fluvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lipitor---primary/output
  cardiovascular-disease-medication-atorvastatin---primary:
    run: cardiovascular-disease-medication-atorvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-fluvastatin---primary/output
  cardiovascular-disease-medication-evolocumab---primary:
    run: cardiovascular-disease-medication-evolocumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-atorvastatin---primary/output
  cardiovascular-disease-medication-crestor---primary:
    run: cardiovascular-disease-medication-crestor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-evolocumab---primary/output
  cardiovascular-disease-medication-625mg---primary:
    run: cardiovascular-disease-medication-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-crestor---primary/output
  cardiovascular-disease-medication-bezalip---primary:
    run: cardiovascular-disease-medication-bezalip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-625mg---primary/output
  cardiovascular-disease-medication-colestid---primary:
    run: cardiovascular-disease-medication-colestid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bezalip---primary/output
  cardiovascular-disease-medication-14000unit---primary:
    run: cardiovascular-disease-medication-14000unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-colestid---primary/output
  cardiovascular-disease-medication-zocor---primary:
    run: cardiovascular-disease-medication-zocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-14000unit---primary/output
  cardiovascular-disease-medication-alirocumab---primary:
    run: cardiovascular-disease-medication-alirocumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-zocor---primary/output
  cardiovascular-disease-medication-niaspan---primary:
    run: cardiovascular-disease-medication-niaspan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-alirocumab---primary/output
  bempedoic-cardiovascular-disease-medication---primary:
    run: bempedoic-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-niaspan---primary/output
  cardiovascular-disease-medication-gemfibrozil---primary:
    run: cardiovascular-disease-medication-gemfibrozil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: bempedoic-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-maxepa---primary:
    run: cardiovascular-disease-medication-maxepa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-gemfibrozil---primary/output
  cardiovascular-disease-medication-simvador---primary:
    run: cardiovascular-disease-medication-simvador---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-maxepa---primary/output
  cardiovascular-disease-medication-cholib---primary:
    run: cardiovascular-disease-medication-cholib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule244
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-simvador---primary/output
  cardiovascular-disease-medication-400mg---primary:
    run: cardiovascular-disease-medication-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule245
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cholib---primary/output
  cardiovascular-disease-medication-praluent---primary:
    run: cardiovascular-disease-medication-praluent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule246
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-400mg---primary/output
  cardiovascular-disease-medication-bezafibrate---primary:
    run: cardiovascular-disease-medication-bezafibrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule247
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-praluent---primary/output
  cardiovascular-disease-medication-lipostat---primary:
    run: cardiovascular-disease-medication-lipostat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule248
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bezafibrate---primary/output
  cardiovascular-disease-medication-fenofibrate---primary:
    run: cardiovascular-disease-medication-fenofibrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule249
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lipostat---primary/output
  cardiovascular-disease-medication-rosuvastatin---primary:
    run: cardiovascular-disease-medication-rosuvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule250
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-fenofibrate---primary/output
  cardiovascular-disease-medication-policosanol---primary:
    run: cardiovascular-disease-medication-policosanol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule251
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-rosuvastatin---primary/output
  cardiovascular-disease-medication-lescol---primary:
    run: cardiovascular-disease-medication-lescol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule252
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-policosanol---primary/output
  cardiovascular-disease-medication-simvastatin---primary:
    run: cardiovascular-disease-medication-simvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule253
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lescol---primary/output
  cardiovascular-disease-medication-repatha---primary:
    run: cardiovascular-disease-medication-repatha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule254
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-simvastatin---primary/output
  eicosapentaenoic-cardiovascular-disease-medication---primary:
    run: eicosapentaenoic-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule255
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-repatha---primary/output
  cardiovascular-disease-medication-degludec---primary:
    run: cardiovascular-disease-medication-degludec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule256
      potentialCases:
        id: potentialCases
        source: eicosapentaenoic-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-device---primary:
    run: cardiovascular-disease-medication-device---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule257
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-degludec---primary/output
  cardiovascular-disease-medication-vamju---primary:
    run: cardiovascular-disease-medication-vamju---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule258
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-device---primary/output
  cardiovascular-disease-medication-exenatide---primary:
    run: cardiovascular-disease-medication-exenatide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule259
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-vamju---primary/output
  cardiovascular-disease-medication-amaryl---primary:
    run: cardiovascular-disease-medication-amaryl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule260
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-exenatide---primary/output
  cardiovascular-disease-medication-diabetamide---primary:
    run: cardiovascular-disease-medication-diabetamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule261
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-amaryl---primary/output
  enyglid-cardiovascular-disease-medication---primary:
    run: enyglid-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule262
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-diabetamide---primary/output
  cardiovascular-disease-medication-vipidia---primary:
    run: cardiovascular-disease-medication-vipidia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule263
      potentialCases:
        id: potentialCases
        source: enyglid-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-vildagliptin---primary:
    run: cardiovascular-disease-medication-vildagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule264
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-vipidia---primary/output
  cardiovascular-disease-medication-yaltormin---primary:
    run: cardiovascular-disease-medication-yaltormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule265
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-vildagliptin---primary/output
  cardiovascular-disease-medication-rybelsus---primary:
    run: cardiovascular-disease-medication-rybelsus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule266
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-yaltormin---primary/output
  cardiovascular-disease-medication-nateglinide---primary:
    run: cardiovascular-disease-medication-nateglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule267
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-rybelsus---primary/output
  cardiovascular-disease-medication-nazdol---primary:
    run: cardiovascular-disease-medication-nazdol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule268
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nateglinide---primary/output
  cardiovascular-disease-medication-forxiga---primary:
    run: cardiovascular-disease-medication-forxiga---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule269
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nazdol---primary/output
  cardiovascular-disease-medication-semaglutide---primary:
    run: cardiovascular-disease-medication-semaglutide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule270
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-forxiga---primary/output
  cardiovascular-disease-medication-tolbutamide---primary:
    run: cardiovascular-disease-medication-tolbutamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule271
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-semaglutide---primary/output
  cardiovascular-disease-medication-canagliflozin---primary:
    run: cardiovascular-disease-medication-canagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule272
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tolbutamide---primary/output
  cardiovascular-disease-medication-avandamet---primary:
    run: cardiovascular-disease-medication-avandamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule273
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-canagliflozin---primary/output
  cardiovascular-disease-medication-chlorpropamide---primary:
    run: cardiovascular-disease-medication-chlorpropamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule274
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-avandamet---primary/output
  cardiovascular-disease-medication-invokana---primary:
    run: cardiovascular-disease-medication-invokana---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule275
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-chlorpropamide---primary/output
  cardiovascular-disease-medication-novonorm---primary:
    run: cardiovascular-disease-medication-novonorm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule276
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-invokana---primary/output
  cardiovascular-disease-medication-albiglutide---primary:
    run: cardiovascular-disease-medication-albiglutide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule277
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-novonorm---primary/output
  cardiovascular-disease-medication-niddaryl---primary:
    run: cardiovascular-disease-medication-niddaryl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule278
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-albiglutide---primary/output
  cardiovascular-disease-medication-jardiance---primary:
    run: cardiovascular-disease-medication-jardiance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule279
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-niddaryl---primary/output
  cardiovascular-disease-medication-glipizide---primary:
    run: cardiovascular-disease-medication-glipizide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule280
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-jardiance---primary/output
  cardiovascular-disease-medication-glimepiride---primary:
    run: cardiovascular-disease-medication-glimepiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule281
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-glipizide---primary/output
  cardiovascular-disease-medication-granule---primary:
    run: cardiovascular-disease-medication-granule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule282
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-glimepiride---primary/output
  cardiovascular-disease-medication-bolamyn---primary:
    run: cardiovascular-disease-medication-bolamyn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule283
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-granule---primary/output
  cardiovascular-disease-medication-074ml---primary:
    run: cardiovascular-disease-medication-074ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule284
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bolamyn---primary/output
  cardiovascular-disease-medication-minodiab---primary:
    run: cardiovascular-disease-medication-minodiab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule285
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-074ml---primary/output
  cardiovascular-disease-medication-eperzan---primary:
    run: cardiovascular-disease-medication-eperzan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule286
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-minodiab---primary/output
  cardiovascular-disease-medication-lamzarin---primary:
    run: cardiovascular-disease-medication-lamzarin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule287
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-eperzan---primary/output
  cardiovascular-disease-medication-starlix---primary:
    run: cardiovascular-disease-medication-starlix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule288
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lamzarin---primary/output
  cardiovascular-disease-medication-rosiglitazone---primary:
    run: cardiovascular-disease-medication-rosiglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule289
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-starlix---primary/output
  cardiovascular-disease-medication-januvia---primary:
    run: cardiovascular-disease-medication-januvia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule290
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-rosiglitazone---primary/output
  cardiovascular-disease-medication-prandin---primary:
    run: cardiovascular-disease-medication-prandin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule291
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-januvia---primary/output
  cardiovascular-disease-medication-glucobay---primary:
    run: cardiovascular-disease-medication-glucobay---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule292
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-prandin---primary/output
  cardiovascular-disease-medication-jentadueto---primary:
    run: cardiovascular-disease-medication-jentadueto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule293
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-glucobay---primary/output
  cardiovascular-disease-medication-dulaglutide---primary:
    run: cardiovascular-disease-medication-dulaglutide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule294
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-jentadueto---primary/output
  cardiovascular-disease-medication-diamicron---primary:
    run: cardiovascular-disease-medication-diamicron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule295
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-dulaglutide---primary/output
  cardiovascular-disease-medication-meijumet---primary:
    run: cardiovascular-disease-medication-meijumet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule296
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-diamicron---primary/output
  cardiovascular-disease-medication-prolongedrelease---primary:
    run: cardiovascular-disease-medication-prolongedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule297
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-meijumet---primary/output
  cardiovascular-disease-medication-steglatro---primary:
    run: cardiovascular-disease-medication-steglatro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule298
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-prolongedrelease---primary/output
  cardiovascular-disease-medication-sukkarto---primary:
    run: cardiovascular-disease-medication-sukkarto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule299
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-steglatro---primary/output
  cardiovascular-disease-medication-glucophage---primary:
    run: cardiovascular-disease-medication-glucophage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule300
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-sukkarto---primary/output
  cardiovascular-disease-medication-500mg---primary:
    run: cardiovascular-disease-medication-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule301
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-glucophage---primary/output
  cardiovascular-disease-medication-pioglitazone---primary:
    run: cardiovascular-disease-medication-pioglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule302
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-500mg---primary/output
  cardiovascular-disease-medication-diabiom---primary:
    run: cardiovascular-disease-medication-diabiom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule303
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-pioglitazone---primary/output
  cardiovascular-disease-medication-synjardy---primary:
    run: cardiovascular-disease-medication-synjardy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule304
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-diabiom---primary/output
  glucient-cardiovascular-disease-medication---primary:
    run: glucient-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule305
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-synjardy---primary/output
  cardiovascular-disease-medication-zicron---primary:
    run: cardiovascular-disease-medication-zicron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule306
      potentialCases:
        id: potentialCases
        source: glucient-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-bilxona---primary:
    run: cardiovascular-disease-medication-bilxona---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule307
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-zicron---primary/output
  cardiovascular-disease-medication-glidipion---primary:
    run: cardiovascular-disease-medication-glidipion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule308
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bilxona---primary/output
  cardiovascular-disease-medication-dapagliflozin---primary:
    run: cardiovascular-disease-medication-dapagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule309
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-glidipion---primary/output
  cardiovascular-disease-medication-xigduo---primary:
    run: cardiovascular-disease-medication-xigduo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule310
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-dapagliflozin---primary/output
  cardiovascular-disease-medication-bydureon---primary:
    run: cardiovascular-disease-medication-bydureon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule311
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-xigduo---primary/output
  cardiovascular-disease-medication-avandia---primary:
    run: cardiovascular-disease-medication-avandia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule312
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bydureon---primary/output
  cardiovascular-disease-medication-gliclazide---primary:
    run: cardiovascular-disease-medication-gliclazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule313
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-avandia---primary/output
  cardiovascular-disease-medication-repaglinide---primary:
    run: cardiovascular-disease-medication-repaglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule314
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-gliclazide---primary/output
  cardiovascular-disease-medication-ertugliflozin---primary:
    run: cardiovascular-disease-medication-ertugliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule315
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-repaglinide---primary/output
  cardiovascular-disease-medication-alogliptin---primary:
    run: cardiovascular-disease-medication-alogliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule316
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ertugliflozin---primary/output
  cardiovascular-disease-medication-onglyza---primary:
    run: cardiovascular-disease-medication-onglyza---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule317
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-alogliptin---primary/output
  cardiovascular-disease-medication-850mg---primary:
    run: cardiovascular-disease-medication-850mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule318
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-onglyza---primary/output
  cardiovascular-disease-medication-euglucon---primary:
    run: cardiovascular-disease-medication-euglucon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule319
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-850mg---primary/output
  cardiovascular-disease-medication-acarbose---primary:
    run: cardiovascular-disease-medication-acarbose---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule320
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-euglucon---primary/output
  cardiovascular-disease-medication-metformin---primary:
    run: cardiovascular-disease-medication-metformin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule321
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-acarbose---primary/output
  cardiovascular-disease-medication-glizofar---primary:
    run: cardiovascular-disease-medication-glizofar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule322
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-metformin---primary/output
  cardiovascular-disease-medication-komboglyze---primary:
    run: cardiovascular-disease-medication-komboglyze---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule323
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-glizofar---primary/output
  cardiovascular-disease-medication-vokanamet---primary:
    run: cardiovascular-disease-medication-vokanamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule324
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-komboglyze---primary/output
  cardiovascular-disease-medication-sitagliptin---primary:
    run: cardiovascular-disease-medication-sitagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule325
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-vokanamet---primary/output
  cardiovascular-disease-medication-lixis---primary:
    run: cardiovascular-disease-medication-lixis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule326
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-sitagliptin---primary/output
  cardiovascular-disease-medication-humaject---primary:
    run: cardiovascular-disease-medication-humaject---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule327
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lixis---primary/output
  abasaglar-cardiovascular-disease-medication---primary:
    run: abasaglar-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule328
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-humaject---primary/output
  cardiovascular-disease-medication-fiasp---primary:
    run: cardiovascular-disease-medication-fiasp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule329
      potentialCases:
        id: potentialCases
        source: abasaglar-cardiovascular-disease-medication---primary/output
  rapid-cardiovascular-disease-medication---primary:
    run: rapid-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule330
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-fiasp---primary/output
  cardiovascular-disease-medication-sanofi---primary:
    run: cardiovascular-disease-medication-sanofi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule331
      potentialCases:
        id: potentialCases
        source: rapid-cardiovascular-disease-medication---primary/output
  actrapid-cardiovascular-disease-medication---primary:
    run: actrapid-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule332
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-sanofi---primary/output
  cardiovascular-disease-medication-detemir---primary:
    run: cardiovascular-disease-medication-detemir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule333
      potentialCases:
        id: potentialCases
        source: actrapid-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-isoph---primary:
    run: cardiovascular-disease-medication-isoph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule334
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-detemir---primary/output
  cardiovascular-disease-medication-aspart---primary:
    run: cardiovascular-disease-medication-aspart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule335
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-isoph---primary/output
  cardiovascular-disease-medication-glulisine---primary:
    run: cardiovascular-disease-medication-glulisine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule336
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-aspart---primary/output
  cardiovascular-disease-medication-opticlik---primary:
    run: cardiovascular-disease-medication-opticlik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule337
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-glulisine---primary/output
  cardiovascular-disease-medication-blister---primary:
    run: cardiovascular-disease-medication-blister---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule338
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-opticlik---primary/output
  cardiovascular-disease-medication-novomix---primary:
    run: cardiovascular-disease-medication-novomix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule339
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-blister---primary/output
  cardiovascular-disease-medication-lispro---primary:
    run: cardiovascular-disease-medication-lispro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule340
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-novomix---primary/output
  junior-cardiovascular-disease-medication---primary:
    run: junior-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule341
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lispro---primary/output
  cardiovascular-disease-medication-toujeo---primary:
    run: cardiovascular-disease-medication-toujeo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule342
      potentialCases:
        id: potentialCases
        source: junior-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-suliqua---primary:
    run: cardiovascular-disease-medication-suliqua---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule343
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-toujeo---primary/output
  cardiovascular-disease-medication-exubera---primary:
    run: cardiovascular-disease-medication-exubera---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule344
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-suliqua---primary/output
  cardiovascular-disease-medication-burinex---primary:
    run: cardiovascular-disease-medication-burinex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule345
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-exubera---primary/output
  cardiovascular-disease-medication-entresto---primary:
    run: cardiovascular-disease-medication-entresto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule346
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-burinex---primary/output
  cardiovascular-disease-medication-lasix---primary:
    run: cardiovascular-disease-medication-lasix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule347
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-entresto---primary/output
  cardiovascular-disease-medication-bumetanide---primary:
    run: cardiovascular-disease-medication-bumetanide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule348
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-lasix---primary/output
  cardiovascular-disease-medication-nebivolol---primary:
    run: cardiovascular-disease-medication-nebivolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule349
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bumetanide---primary/output
  cardiovascular-disease-medication-carvedilol---primary:
    run: cardiovascular-disease-medication-carvedilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule350
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nebivolol---primary/output
  cardiovascular-disease-medication-froop---primary:
    run: cardiovascular-disease-medication-froop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule351
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-carvedilol---primary/output
  cardiovascular-disease-medication-sacubitril---primary:
    run: cardiovascular-disease-medication-sacubitril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule352
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-froop---primary/output
  cardiovascular-disease-medication-torem---primary:
    run: cardiovascular-disease-medication-torem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule353
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-sacubitril---primary/output
  eucardic-cardiovascular-disease-medication---primary:
    run: eucardic-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule354
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-torem---primary/output
  cardiovascular-disease-medication-furosemide---primary:
    run: cardiovascular-disease-medication-furosemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule355
      potentialCases:
        id: potentialCases
        source: eucardic-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-torasemide---primary:
    run: cardiovascular-disease-medication-torasemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule356
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-furosemide---primary/output
  cardiovascular-disease-medication-amyben---primary:
    run: cardiovascular-disease-medication-amyben---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule357
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-torasemide---primary/output
  cardiovascular-disease-medication-amiodarone---primary:
    run: cardiovascular-disease-medication-amiodarone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule358
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-amyben---primary/output
  cardiovascular-disease-medication-5microgram---primary:
    run: cardiovascular-disease-medication-5microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule359
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-amiodarone---primary/output
  cardiovascular-disease-medication-tambocor---primary:
    run: cardiovascular-disease-medication-tambocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule360
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-5microgram---primary/output
  cardiovascular-disease-medication-cordarone---primary:
    run: cardiovascular-disease-medication-cordarone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule361
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-tambocor---primary/output
  cardiovascular-disease-medication-betacardone---primary:
    run: cardiovascular-disease-medication-betacardone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule362
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cordarone---primary/output
  cardiovascular-disease-medication-flecainide---primary:
    run: cardiovascular-disease-medication-flecainide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule363
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-betacardone---primary/output
  cardiovascular-disease-medication-carmil---primary:
    run: cardiovascular-disease-medication-carmil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule364
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-flecainide---primary/output
  cardiovascular-disease-medication-sotacor---primary:
    run: cardiovascular-disease-medication-sotacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule365
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-carmil---primary/output
  cardiovascular-disease-medication-12500unit---primary:
    run: cardiovascular-disease-medication-12500unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule366
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-sotacor---primary/output
  cardiovascular-disease-medication-transidermnitro---primary:
    run: cardiovascular-disease-medication-transidermnitro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule367
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-12500unit---primary/output
  cardiovascular-disease-medication-ikorel---primary:
    run: cardiovascular-disease-medication-ikorel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule368
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-transidermnitro---primary/output
  cardiovascular-disease-medication-monit---primary:
    run: cardiovascular-disease-medication-monit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule369
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ikorel---primary/output
  cardiovascular-disease-medication-bottle---primary:
    run: cardiovascular-disease-medication-bottle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule370
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-monit---primary/output
  cardiovascular-disease-medication-monosorb---primary:
    run: cardiovascular-disease-medication-monosorb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule371
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-bottle---primary/output
  cardiovascular-disease-medication-eumon---primary:
    run: cardiovascular-disease-medication-eumon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule372
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-monosorb---primary/output
  cardiovascular-disease-medication-isoket---primary:
    run: cardiovascular-disease-medication-isoket---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule373
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-eumon---primary/output
  cardiovascular-disease-medication-aerosol---primary:
    run: cardiovascular-disease-medication-aerosol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule374
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-isoket---primary/output
  cardiovascular-disease-medication-imazin---primary:
    run: cardiovascular-disease-medication-imazin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule375
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-aerosol---primary/output
  cardiovascular-disease-medication-nyzamac---primary:
    run: cardiovascular-disease-medication-nyzamac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule376
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-imazin---primary/output
  cardiovascular-disease-medication-minitran---primary:
    run: cardiovascular-disease-medication-minitran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule377
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nyzamac---primary/output
  cardiovascular-disease-medication-infusion---primary:
    run: cardiovascular-disease-medication-infusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule378
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-minitran---primary/output
  cardiovascular-disease-medication-isotard---primary:
    run: cardiovascular-disease-medication-isotard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule379
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-infusion---primary/output
  cardiovascular-disease-medication-zemon---primary:
    run: cardiovascular-disease-medication-zemon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule380
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-isotard---primary/output
  cibral-cardiovascular-disease-medication---primary:
    run: cibral-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule381
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-zemon---primary/output
  cardiovascular-disease-medication-sustac---primary:
    run: cardiovascular-disease-medication-sustac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule382
      potentialCases:
        id: potentialCases
        source: cibral-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-trinitrate---primary:
    run: cardiovascular-disease-medication-trinitrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule383
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-sustac---primary/output
  cardiovascular-disease-medication-ranexa---primary:
    run: cardiovascular-disease-medication-ranexa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule384
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-trinitrate---primary/output
  cardiovascular-disease-medication-ivabradine---primary:
    run: cardiovascular-disease-medication-ivabradine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule385
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ranexa---primary/output
  cardiovascular-disease-medication-ointment---primary:
    run: cardiovascular-disease-medication-ointment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule386
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ivabradine---primary/output
  buccal-cardiovascular-disease-medication---primary:
    run: buccal-cardiovascular-disease-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule387
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ointment---primary/output
  cardiovascular-disease-medication-elantan---primary:
    run: cardiovascular-disease-medication-elantan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule388
      potentialCases:
        id: potentialCases
        source: buccal-cardiovascular-disease-medication---primary/output
  cardiovascular-disease-medication-sonislo---primary:
    run: cardiovascular-disease-medication-sonislo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule389
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-elantan---primary/output
  cardiovascular-disease-medication-nitrodur---primary:
    run: cardiovascular-disease-medication-nitrodur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule390
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-sonislo---primary/output
  cardiovascular-disease-medication-ranolazine---primary:
    run: cardiovascular-disease-medication-ranolazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule391
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-nitrodur---primary/output
  cardiovascular-disease-medication-isodur---primary:
    run: cardiovascular-disease-medication-isodur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule392
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-ranolazine---primary/output
  cardiovascular-disease-medication-cedocard---primary:
    run: cardiovascular-disease-medication-cedocard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule393
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-isodur---primary/output
  cardiovascular-disease-medication-modisal---primary:
    run: cardiovascular-disease-medication-modisal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule394
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-cedocard---primary/output
  cardiovascular-disease-medication-isordil---primary:
    run: cardiovascular-disease-medication-isordil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule395
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-modisal---primary/output
  cardiovascular-disease-medication-trintek---primary:
    run: cardiovascular-disease-medication-trintek---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule396
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-isordil---primary/output
  cardiovascular-disease-medication-dynamin---primary:
    run: cardiovascular-disease-medication-dynamin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule397
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-trintek---primary/output
  cardiovascular-disease-medication-angeze---primary:
    run: cardiovascular-disease-medication-angeze---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule398
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-dynamin---primary/output
  cardiovascular-disease-medication-suscard---primary:
    run: cardiovascular-disease-medication-suscard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule399
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-angeze---primary/output
  cardiovascular-disease-medication-019ml---primary:
    run: cardiovascular-disease-medication-019ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule400
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-suscard---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule401
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-medication-019ml---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
    doc: Python implementation unit
    type: File
  inputModule244:
    id: inputModule244
    doc: Python implementation unit
    type: File
  inputModule245:
    id: inputModule245
    doc: Python implementation unit
    type: File
  inputModule246:
    id: inputModule246
    doc: Python implementation unit
    type: File
  inputModule247:
    id: inputModule247
    doc: Python implementation unit
    type: File
  inputModule248:
    id: inputModule248
    doc: Python implementation unit
    type: File
  inputModule249:
    id: inputModule249
    doc: Python implementation unit
    type: File
  inputModule250:
    id: inputModule250
    doc: Python implementation unit
    type: File
  inputModule251:
    id: inputModule251
    doc: Python implementation unit
    type: File
  inputModule252:
    id: inputModule252
    doc: Python implementation unit
    type: File
  inputModule253:
    id: inputModule253
    doc: Python implementation unit
    type: File
  inputModule254:
    id: inputModule254
    doc: Python implementation unit
    type: File
  inputModule255:
    id: inputModule255
    doc: Python implementation unit
    type: File
  inputModule256:
    id: inputModule256
    doc: Python implementation unit
    type: File
  inputModule257:
    id: inputModule257
    doc: Python implementation unit
    type: File
  inputModule258:
    id: inputModule258
    doc: Python implementation unit
    type: File
  inputModule259:
    id: inputModule259
    doc: Python implementation unit
    type: File
  inputModule260:
    id: inputModule260
    doc: Python implementation unit
    type: File
  inputModule261:
    id: inputModule261
    doc: Python implementation unit
    type: File
  inputModule262:
    id: inputModule262
    doc: Python implementation unit
    type: File
  inputModule263:
    id: inputModule263
    doc: Python implementation unit
    type: File
  inputModule264:
    id: inputModule264
    doc: Python implementation unit
    type: File
  inputModule265:
    id: inputModule265
    doc: Python implementation unit
    type: File
  inputModule266:
    id: inputModule266
    doc: Python implementation unit
    type: File
  inputModule267:
    id: inputModule267
    doc: Python implementation unit
    type: File
  inputModule268:
    id: inputModule268
    doc: Python implementation unit
    type: File
  inputModule269:
    id: inputModule269
    doc: Python implementation unit
    type: File
  inputModule270:
    id: inputModule270
    doc: Python implementation unit
    type: File
  inputModule271:
    id: inputModule271
    doc: Python implementation unit
    type: File
  inputModule272:
    id: inputModule272
    doc: Python implementation unit
    type: File
  inputModule273:
    id: inputModule273
    doc: Python implementation unit
    type: File
  inputModule274:
    id: inputModule274
    doc: Python implementation unit
    type: File
  inputModule275:
    id: inputModule275
    doc: Python implementation unit
    type: File
  inputModule276:
    id: inputModule276
    doc: Python implementation unit
    type: File
  inputModule277:
    id: inputModule277
    doc: Python implementation unit
    type: File
  inputModule278:
    id: inputModule278
    doc: Python implementation unit
    type: File
  inputModule279:
    id: inputModule279
    doc: Python implementation unit
    type: File
  inputModule280:
    id: inputModule280
    doc: Python implementation unit
    type: File
  inputModule281:
    id: inputModule281
    doc: Python implementation unit
    type: File
  inputModule282:
    id: inputModule282
    doc: Python implementation unit
    type: File
  inputModule283:
    id: inputModule283
    doc: Python implementation unit
    type: File
  inputModule284:
    id: inputModule284
    doc: Python implementation unit
    type: File
  inputModule285:
    id: inputModule285
    doc: Python implementation unit
    type: File
  inputModule286:
    id: inputModule286
    doc: Python implementation unit
    type: File
  inputModule287:
    id: inputModule287
    doc: Python implementation unit
    type: File
  inputModule288:
    id: inputModule288
    doc: Python implementation unit
    type: File
  inputModule289:
    id: inputModule289
    doc: Python implementation unit
    type: File
  inputModule290:
    id: inputModule290
    doc: Python implementation unit
    type: File
  inputModule291:
    id: inputModule291
    doc: Python implementation unit
    type: File
  inputModule292:
    id: inputModule292
    doc: Python implementation unit
    type: File
  inputModule293:
    id: inputModule293
    doc: Python implementation unit
    type: File
  inputModule294:
    id: inputModule294
    doc: Python implementation unit
    type: File
  inputModule295:
    id: inputModule295
    doc: Python implementation unit
    type: File
  inputModule296:
    id: inputModule296
    doc: Python implementation unit
    type: File
  inputModule297:
    id: inputModule297
    doc: Python implementation unit
    type: File
  inputModule298:
    id: inputModule298
    doc: Python implementation unit
    type: File
  inputModule299:
    id: inputModule299
    doc: Python implementation unit
    type: File
  inputModule300:
    id: inputModule300
    doc: Python implementation unit
    type: File
  inputModule301:
    id: inputModule301
    doc: Python implementation unit
    type: File
  inputModule302:
    id: inputModule302
    doc: Python implementation unit
    type: File
  inputModule303:
    id: inputModule303
    doc: Python implementation unit
    type: File
  inputModule304:
    id: inputModule304
    doc: Python implementation unit
    type: File
  inputModule305:
    id: inputModule305
    doc: Python implementation unit
    type: File
  inputModule306:
    id: inputModule306
    doc: Python implementation unit
    type: File
  inputModule307:
    id: inputModule307
    doc: Python implementation unit
    type: File
  inputModule308:
    id: inputModule308
    doc: Python implementation unit
    type: File
  inputModule309:
    id: inputModule309
    doc: Python implementation unit
    type: File
  inputModule310:
    id: inputModule310
    doc: Python implementation unit
    type: File
  inputModule311:
    id: inputModule311
    doc: Python implementation unit
    type: File
  inputModule312:
    id: inputModule312
    doc: Python implementation unit
    type: File
  inputModule313:
    id: inputModule313
    doc: Python implementation unit
    type: File
  inputModule314:
    id: inputModule314
    doc: Python implementation unit
    type: File
  inputModule315:
    id: inputModule315
    doc: Python implementation unit
    type: File
  inputModule316:
    id: inputModule316
    doc: Python implementation unit
    type: File
  inputModule317:
    id: inputModule317
    doc: Python implementation unit
    type: File
  inputModule318:
    id: inputModule318
    doc: Python implementation unit
    type: File
  inputModule319:
    id: inputModule319
    doc: Python implementation unit
    type: File
  inputModule320:
    id: inputModule320
    doc: Python implementation unit
    type: File
  inputModule321:
    id: inputModule321
    doc: Python implementation unit
    type: File
  inputModule322:
    id: inputModule322
    doc: Python implementation unit
    type: File
  inputModule323:
    id: inputModule323
    doc: Python implementation unit
    type: File
  inputModule324:
    id: inputModule324
    doc: Python implementation unit
    type: File
  inputModule325:
    id: inputModule325
    doc: Python implementation unit
    type: File
  inputModule326:
    id: inputModule326
    doc: Python implementation unit
    type: File
  inputModule327:
    id: inputModule327
    doc: Python implementation unit
    type: File
  inputModule328:
    id: inputModule328
    doc: Python implementation unit
    type: File
  inputModule329:
    id: inputModule329
    doc: Python implementation unit
    type: File
  inputModule330:
    id: inputModule330
    doc: Python implementation unit
    type: File
  inputModule331:
    id: inputModule331
    doc: Python implementation unit
    type: File
  inputModule332:
    id: inputModule332
    doc: Python implementation unit
    type: File
  inputModule333:
    id: inputModule333
    doc: Python implementation unit
    type: File
  inputModule334:
    id: inputModule334
    doc: Python implementation unit
    type: File
  inputModule335:
    id: inputModule335
    doc: Python implementation unit
    type: File
  inputModule336:
    id: inputModule336
    doc: Python implementation unit
    type: File
  inputModule337:
    id: inputModule337
    doc: Python implementation unit
    type: File
  inputModule338:
    id: inputModule338
    doc: Python implementation unit
    type: File
  inputModule339:
    id: inputModule339
    doc: Python implementation unit
    type: File
  inputModule340:
    id: inputModule340
    doc: Python implementation unit
    type: File
  inputModule341:
    id: inputModule341
    doc: Python implementation unit
    type: File
  inputModule342:
    id: inputModule342
    doc: Python implementation unit
    type: File
  inputModule343:
    id: inputModule343
    doc: Python implementation unit
    type: File
  inputModule344:
    id: inputModule344
    doc: Python implementation unit
    type: File
  inputModule345:
    id: inputModule345
    doc: Python implementation unit
    type: File
  inputModule346:
    id: inputModule346
    doc: Python implementation unit
    type: File
  inputModule347:
    id: inputModule347
    doc: Python implementation unit
    type: File
  inputModule348:
    id: inputModule348
    doc: Python implementation unit
    type: File
  inputModule349:
    id: inputModule349
    doc: Python implementation unit
    type: File
  inputModule350:
    id: inputModule350
    doc: Python implementation unit
    type: File
  inputModule351:
    id: inputModule351
    doc: Python implementation unit
    type: File
  inputModule352:
    id: inputModule352
    doc: Python implementation unit
    type: File
  inputModule353:
    id: inputModule353
    doc: Python implementation unit
    type: File
  inputModule354:
    id: inputModule354
    doc: Python implementation unit
    type: File
  inputModule355:
    id: inputModule355
    doc: Python implementation unit
    type: File
  inputModule356:
    id: inputModule356
    doc: Python implementation unit
    type: File
  inputModule357:
    id: inputModule357
    doc: Python implementation unit
    type: File
  inputModule358:
    id: inputModule358
    doc: Python implementation unit
    type: File
  inputModule359:
    id: inputModule359
    doc: Python implementation unit
    type: File
  inputModule360:
    id: inputModule360
    doc: Python implementation unit
    type: File
  inputModule361:
    id: inputModule361
    doc: Python implementation unit
    type: File
  inputModule362:
    id: inputModule362
    doc: Python implementation unit
    type: File
  inputModule363:
    id: inputModule363
    doc: Python implementation unit
    type: File
  inputModule364:
    id: inputModule364
    doc: Python implementation unit
    type: File
  inputModule365:
    id: inputModule365
    doc: Python implementation unit
    type: File
  inputModule366:
    id: inputModule366
    doc: Python implementation unit
    type: File
  inputModule367:
    id: inputModule367
    doc: Python implementation unit
    type: File
  inputModule368:
    id: inputModule368
    doc: Python implementation unit
    type: File
  inputModule369:
    id: inputModule369
    doc: Python implementation unit
    type: File
  inputModule370:
    id: inputModule370
    doc: Python implementation unit
    type: File
  inputModule371:
    id: inputModule371
    doc: Python implementation unit
    type: File
  inputModule372:
    id: inputModule372
    doc: Python implementation unit
    type: File
  inputModule373:
    id: inputModule373
    doc: Python implementation unit
    type: File
  inputModule374:
    id: inputModule374
    doc: Python implementation unit
    type: File
  inputModule375:
    id: inputModule375
    doc: Python implementation unit
    type: File
  inputModule376:
    id: inputModule376
    doc: Python implementation unit
    type: File
  inputModule377:
    id: inputModule377
    doc: Python implementation unit
    type: File
  inputModule378:
    id: inputModule378
    doc: Python implementation unit
    type: File
  inputModule379:
    id: inputModule379
    doc: Python implementation unit
    type: File
  inputModule380:
    id: inputModule380
    doc: Python implementation unit
    type: File
  inputModule381:
    id: inputModule381
    doc: Python implementation unit
    type: File
  inputModule382:
    id: inputModule382
    doc: Python implementation unit
    type: File
  inputModule383:
    id: inputModule383
    doc: Python implementation unit
    type: File
  inputModule384:
    id: inputModule384
    doc: Python implementation unit
    type: File
  inputModule385:
    id: inputModule385
    doc: Python implementation unit
    type: File
  inputModule386:
    id: inputModule386
    doc: Python implementation unit
    type: File
  inputModule387:
    id: inputModule387
    doc: Python implementation unit
    type: File
  inputModule388:
    id: inputModule388
    doc: Python implementation unit
    type: File
  inputModule389:
    id: inputModule389
    doc: Python implementation unit
    type: File
  inputModule390:
    id: inputModule390
    doc: Python implementation unit
    type: File
  inputModule391:
    id: inputModule391
    doc: Python implementation unit
    type: File
  inputModule392:
    id: inputModule392
    doc: Python implementation unit
    type: File
  inputModule393:
    id: inputModule393
    doc: Python implementation unit
    type: File
  inputModule394:
    id: inputModule394
    doc: Python implementation unit
    type: File
  inputModule395:
    id: inputModule395
    doc: Python implementation unit
    type: File
  inputModule396:
    id: inputModule396
    doc: Python implementation unit
    type: File
  inputModule397:
    id: inputModule397
    doc: Python implementation unit
    type: File
  inputModule398:
    id: inputModule398
    doc: Python implementation unit
    type: File
  inputModule399:
    id: inputModule399
    doc: Python implementation unit
    type: File
  inputModule400:
    id: inputModule400
    doc: Python implementation unit
    type: File
  inputModule401:
    id: inputModule401
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
