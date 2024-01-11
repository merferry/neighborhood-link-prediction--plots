set term pdf
set terminal pdf size 10in,2.5in
set output 'input-large-runtime.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 30 right
set key above font ",12"
set ylabel  '{/:Bold Runtime (s)}'
set logscale y
set grid y
set yrange [0.01:25]



## Draw plot
plot "input-large.csv" \
     using ($6 /1000):xtic(1) title '10^{-4}|E|' with histogram fill pattern 3, \
  '' using ($7 /1000):xtic(1) title '10^{-3}|E|' with histogram fill pattern 3, \
  '' using ($8 /1000):xtic(1) title '10^{-2}|E|' with histogram fill pattern 3, \
  '' using ($9 /1000):xtic(1) title '0.1|E|'     with histogram fill pattern 3, \
  '' using ($0-5.2/20):($6 /1000):($6<100? sprintf("%.2f", $6 /1000) : sprintf("%.1f", $6 /1000))   with labels textcolor rgb 'white' rotate by 90 offset character 0,-1 title '', \
  '' using ($0-5.2/20):($6 /1000):(strlen(stringcolumn(2))<=3? sprintf("%s", stringcolumn(2)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.9 title '', \
  '' using ($0-5.2/20):($6 /1000):(strlen(stringcolumn(2)) >3? sprintf("%s", stringcolumn(2)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,1.3 title '', \
  '' using ($0-1.8/20):($7 /1000):($7<100? sprintf("%.2f", $7 /1000) : sprintf("%.1f", $7 /1000))   with labels textcolor rgb 'white' rotate by 90 offset character 0,-1 title '', \
  '' using ($0-1.8/20):($7 /1000):(strlen(stringcolumn(3))<=3? sprintf("%s", stringcolumn(3)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.9 title '', \
  '' using ($0-1.8/20):($7 /1000):(strlen(stringcolumn(3)) >3? sprintf("%s", stringcolumn(3)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,1.3 title '', \
  '' using ($0+1.8/20):($8 /1000):($8<100? sprintf("%.2f", $8 /1000) : sprintf("%.1f", $8 /1000))   with labels textcolor rgb 'white' rotate by 90 offset character 0,-1 title '', \
  '' using ($0+1.8/20):($8 /1000):(strlen(stringcolumn(4))<=3? sprintf("%s", stringcolumn(4)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.9 title '', \
  '' using ($0+1.8/20):($8 /1000):(strlen(stringcolumn(4)) >3? sprintf("%s", stringcolumn(4)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,1.3 title '', \
  '' using ($0+5.2/20):($9 /1000):($9<100? sprintf("%.2f", $9 /1000) : sprintf("%.1f", $9 /1000))   with labels textcolor rgb 'white' rotate by 90 offset character 0,-1 title '', \
  '' using ($0+5.2/20):($9 /1000):(strlen(stringcolumn(5))<=3? sprintf("%s", stringcolumn(5)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.9 title '', \
  '' using ($0+5.2/20):($9 /1000):(strlen(stringcolumn(5))==4? sprintf("%s", stringcolumn(5)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,1.3 title '', \
  '' using ($0+5.2/20):($9 /1000):(strlen(stringcolumn(5))>=5? sprintf("%s", stringcolumn(5)) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,2.0 title ''




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
