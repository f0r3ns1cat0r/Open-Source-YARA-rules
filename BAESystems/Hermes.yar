rule Hermes2_1 {
   meta:
      date = "2017/10/11"
      author = "BAE"
      hash = "b27881f59c8d8cc529fa80a58709db36"
      reference = "https://baesystemsai.blogspot.com/2017/10/taiwan-heist-lazarus-tools.html"
   strings:
      $magic = { 4D 5A }
      //in both version 2.1 and sample in Feb
      $s1 = "SYSTEM\\CurrentControlSet\\Control\\Nls\\Language\\"
      $s2 = "0419"
      $s3 = "0422"
      $s4 = "0423"
      //in version 2.1 only
      $S1 = "HERMES"
      $S2 = "vssadminn"
      $S3 = "finish work"
      $S4 = "testlib.dll"
      $S5 = "shadowstorageiet"
      //maybe unique in the file
      $u1 = "ALKnvfoi4tbmiom3t40iomfr0i3t4jmvri3tb4mvi3btv3rgt4t777"
      $u2 = "HERMES 2.1 TEST BUILD, press ok"
      $u3 = "hnKwtMcOadHwnXutKHqPvpgfysFXfAFTcaDHNdCnktA" //RSA Key part
   condition:
      $magic at 0 and all of ($s*) and 3 of ($S*) and 1 of ($u*)
}
