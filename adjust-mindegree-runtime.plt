set term pdf
set terminal pdf size 15in,7.2in font ",20"
set output 'adjust-mindegree-runtime.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set title noenhanced
set style fill solid border lt -1
set style textbox opaque noborder
set lmargin 4.5
set tmargin 1
unset xtics
set logscale x 10
set logscale y 10
set format x "10^{%L}"
set grid   y
set key off
set multiplot layout 2,4 margins 0.07,0.98,0.14,0.95 spacing 0.06,0.10
# set xlabel  'Batch fraction'
# set ylabel  'Runtime (s)'


## Set line styles
set style line  1 linewidth 2 linetype 8 pointtype 5
set style line  2 linewidth 2 linetype 7 pointtype 7
set style line  3 linewidth 2 linetype 6 pointtype 6
set style line  4 linewidth 2 linetype 3 pointtype 5
set style line  5 linewidth 2 linetype 2 pointtype 4
set style line  6 linewidth 2 linetype 1 pointtype 3
set style line  7 linewidth 2 linetype 7 pointtype 7 dashtype 2
set style line  8 linewidth 2 linetype 6 pointtype 6 dashtype 2
set style line  9 linewidth 2 linetype 3 pointtype 5 dashtype 2
set style line 10 linewidth 2 linetype 2 pointtype 4 dashtype 2
set style line 11 linewidth 2 linetype 1 pointtype 3 dashtype 2


## Draw plot
set label "Runtime (s)" at screen 0.01,0.45 center rotate font ",20"
set label "Batch fraction" at screen 0.5,0.02 center font ",20"
files='JC SI SC HP HD LHN AA RA'
do for [i=1:words(files)] {
if (i>=5) { set xtics rotate by 45 right }
set title word(files, i) offset 0,-0.8
plot 'adjust-mindegree/'.word(files, i).'.csv' \
       using 3:($4 /1000) title '∞'    linestyle 1  with linespoints, \
    '' using 3:($5 /1000) title '2'    linestyle 2  with linespoints, \
    '' using 3:($6 /1000) title '4'    linestyle 3  with linespoints, \
    '' using 3:($7 /1000) title '8'    linestyle 4  with linespoints, \
    '' using 3:($8 /1000) title '16'   linestyle 5  with linespoints, \
    '' using 3:($9 /1000) title '32'   linestyle 6  with linespoints, \
    '' using 3:($10/1000) title '64'   linestyle 7  with linespoints, \
    '' using 3:($11/1000) title '128'  linestyle 8  with linespoints, \
    '' using 3:($12/1000) title '256'  linestyle 9  with linespoints, \
    '' using 3:($13/1000) title '512'  linestyle 10 with linespoints, \
    '' using 3:($14/1000) title '1024' linestyle 11 with linespoints
}
unset multiplot




## Names of CSV files.
# 01. JC
# 02. SI
# 03. SC
# 04. HP
# 05. HD
# 06. LHN
# 07. AA
# 08. RA


## Columns in CSV file.
# 01. graph
# 02. batch_deletions_fraction
# 03. batch_insertions_fraction
# 04. method0-t
# 05. method2-t
# 06. method4-t
# 07. method8-t
# 08. method16-t
# 09. method32-t
# 10. method64-t
# 11. method128-t
# 12. method256-t
# 13. method512-t
# 14. method1024-t
# 15. method0-p
# 16. method2-p
# 17. method4-p
# 18. method8-p
# 19. method16-p
# 20. method32-p
# 21. method64-p
# 22. method128-p
# 23. method256-p
# 24. method512-p
# 25. method1024-p
# 26. method0-r
# 27. method2-r
# 28. method4-r
# 29. method8-r
# 30. method16-r
# 31. method32-r
# 32. method64-r
# 33. method128-r
# 34. method256-r
# 35. method512-r
# 36. method1024-r
