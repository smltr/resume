format:
	python3 format.py unformatted_resume.txt sam_trouy_resume.txt --width 80 --padding 3 -m 1

publish:
	git add .
	git commit -m "Publish resume"
	git push
