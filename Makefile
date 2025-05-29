all: normal analytics

normal:
	pdflatex resume.tex
	mv resume.pdf output/Kyle_Onela_Resume.pdf

analytics:
	pdflatex "\def\includeanalytics{}\input{resume}"
	mv resume.pdf output/Kyle_Onela_Resume_With_Analytics.pdf

clean:
	rm -f *.aux *.log *.out