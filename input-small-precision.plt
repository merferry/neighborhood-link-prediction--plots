set term pdf
set terminal pdf size 10in,2.5in
set output 'input-small-precision.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 30 right
set key above font ",12"
set ylabel  '{/:Bold Precision (%)}'
set logscale y
set grid y
set format y '10^{%L}'
set yrange [1e-10:1e+4]



## Draw plot
plot "input-small.csv" \
     using ($10):xtic(1) title '10^{-4}|E|' with histogram fill pattern 3, \
  '' using ($11):xtic(1) title '10^{-3}|E|' with histogram fill pattern 3, \
  '' using ($12):xtic(1) title '10^{-2}|E|' with histogram fill pattern 3, \
  '' using ($13):xtic(1) title '0.1|E|'     with histogram fill pattern 3, \
  '' using ($0-5.2/20):($10):($10>=1e-3? sprintf("%.1f", 100*$10) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,-0.9 title '', \
  '' using ($0-5.2/20):($10):($10 <1e-3? sprintf("%.1e", 100*$10) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.6 title '', \
  '' using ($0-5.2/20):($10):(strlen(stringcolumn(2))<=3? sprintf("%s", stringcolumn(2)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.9 title '', \
  '' using ($0-5.2/20):($10):(strlen(stringcolumn(2)) >3? sprintf("%s", stringcolumn(2)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,1.3 title '', \
  '' using ($0-1.8/20):($11):($11>=1e-3? sprintf("%.1f", 100*$11) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,-0.9 title '', \
  '' using ($0-1.8/20):($11):($11 <1e-3? sprintf("%.1e", 100*$11) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.6 title '', \
  '' using ($0-1.8/20):($11):(strlen(stringcolumn(3))<=3? sprintf("%s", stringcolumn(3)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.9 title '', \
  '' using ($0-1.8/20):($11):(strlen(stringcolumn(3)) >3? sprintf("%s", stringcolumn(3)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,1.3 title '', \
  '' using ($0+1.8/20):($12):($12>=1e-3? sprintf("%.1f", 100*$12) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,-0.9 title '', \
  '' using ($0+1.8/20):($12):($12 <1e-3? sprintf("%.1e", 100*$12) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.6 title '', \
  '' using ($0+1.8/20):($12):(strlen(stringcolumn(4))<=3? sprintf("%s", stringcolumn(4)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.9 title '', \
  '' using ($0+1.8/20):($12):(strlen(stringcolumn(4)) >3? sprintf("%s", stringcolumn(4)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,1.3 title '', \
  '' using ($0+5.2/20):($13):($13>=1e-3? sprintf("%.1f", 100*$13) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,-0.9 title '', \
  '' using ($0+5.2/20):($13):($13 <1e-3? sprintf("%.1e", 100*$13) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.6 title '', \
  '' using ($0+5.2/20):($13):(strlen(stringcolumn(5))<=3? sprintf("%s", stringcolumn(5)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.9 title '', \
  '' using ($0+5.2/20):($13):(strlen(stringcolumn(5))==4? sprintf("%s", stringcolumn(5)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,1.3 title '', \
  '' using ($0+5.2/20):($13):(strlen(stringcolumn(5))>=5? sprintf("%s", stringcolumn(5)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,2.0 title ''




## Columns in CSV file.
# 01. graph
# 02. method4
# 03. method3
# 04. method2
# 05. method1
# 06. time4
# 07. time3
# 08. time2
# 09. time1
# 10. precision4
# 11. precision3
# 12. precision2
# 13. precision1
# 14. recall4
# 15. recall3
# 16. recall2
# 17. recall1
