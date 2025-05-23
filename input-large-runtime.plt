set term pdf
set terminal pdf size 7.5in,2.5in
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
set yrange [0.0001:]




## Draw plot
plot "input-large.csv" \
     using ($4 /1000):xtic(1) title 'IBase 10^{-2}|E|' with histogram fill pattern 3 ls 2, \
  '' using ($14/1000):xtic(1) title 'DLH 10^{-2}|E|' with histogram fill pattern 3 ls 6, \
  '' using ($5 /1000):xtic(1) title 'IBase 0.1|E|'     with histogram fill pattern 3 ls 4, \
  '' using ($15/1000):xtic(1) title 'DLH 0.1|E|'     with histogram fill pattern 3 ls 8, \
  '' using ($0-5.2/20):($4 /1000):(sprintf($4 <100? "%.2f" : ($4 <10000? "%.1f" : "%.0f"), $4 /1000))   with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.2 title '', \
  '' using ($0-1.8/20):($14/1000):(sprintf($14<100? "%.2f" : ($14<10000? "%.1f" : "%.0f"), $14/1000))   with labels textcolor rgb 'white' rotate by 90 offset character 0,-1   title '', \
  '' using ($0+1.8/20):($5 /1000):(sprintf($5 <100? "%.2f" : ($5 <10000? "%.1f" : "%.0f"), $5 /1000))   with labels textcolor rgb 'black' rotate by 90 offset character 0,-1.2 title '', \
  '' using ($0+5.2/20):($15/1000):(sprintf($15<100? "%.2f" : ($15<10000? "%.1f" : "%.0f"), $15/1000))   with labels textcolor rgb 'white' rotate by 90 offset character 0,-1   title '', \
  '' using ($0-5.2/20):(0.0001):(strlen(stringcolumn(2 ))>1 && strlen(stringcolumn(2 ))<=3? sprintf("%s", stringcolumn(2 )) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,0.8 title '', \
  '' using ($0-1.8/20):(0.0001):(strlen(stringcolumn(12))>1 && strlen(stringcolumn(12))<=7? sprintf("%s", stringcolumn(12)) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,1.4 title '', \
  '' using ($0+1.8/20):(0.0001):(strlen(stringcolumn(3 ))>1 && strlen(stringcolumn(3 ))<=3? sprintf("%s", stringcolumn(3 )) : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,0.8 title '', \
  '' using ($0+5.2/20):(0.0001):(strlen(stringcolumn(13))>1 && strlen(stringcolumn(13))<=7? sprintf("%s", stringcolumn(13)) : "") with labels textcolor rgb 'white' rotate by 90 offset character 0,1.4 title '', \
  '' using ($0-5.2/20):(0.0001):(strlen(stringcolumn(2 ))<=1? "No best method" : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,3.2 title '', \
  '' using ($0-1.8/20):(0.0001):(strlen(stringcolumn(12))<=1? "No best method" : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,3.2 title '', \
  '' using ($0+1.8/20):(0.0001):(strlen(stringcolumn(3 ))<=1? "Out of memory"  : "") with labels textcolor rgb 'black' rotate by 90 offset character 0,3.2 title ''




## Columns in CSV file.
# 01. graph
# 02. imethod-2
# 03. imethod-1
# 04. itime-2
# 05. itime-1
# 06. iprecision-2
# 07. iprecision-1
# 08. irecall-2
# 09. irecall-1
# 10. if1-2
# 11. if1-1
# 12. lmethod-2
# 13. lmethod-1
# 14. ltime-2
# 15. ltime-1
# 16. lprecision-2
# 17. lprecision-1
# 18. lrecall-2
# 19. lrecall-1
# 20. lf1-2
# 21. lf1-1
