sed -i 's/[A-ZÁÉÍÓÚÀÇÃÕÂÊÔ][A-ZÁÉÍÓÚÀÇÃÕÂÊÔ]\+/\\versal{&}/g' TEXTO_2.tex
#sed -i 's/\\versa{\\versal/{\\versal/g' *.tex
sed -i 's/\.\.\./…/g' *.tex
sed -i 's/\ -\ /\ --\ /g' *.tex
sed -i 's/^-\ /--\ /g' *.tex
sed -i 's/\ -$/\ --/g' *.tex
sed -i 's/^\*\*\*$/\\asterisc/g' *.tex

