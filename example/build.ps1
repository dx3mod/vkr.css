py ..\utils\gen-toc.py kyrsach.md 
pandoc toc.md kyrsach.md -o kyrsach.html --css ../vkr.css --standalone
weasyprint kyrsach.html kyrsach.pdf
rm kyrsach.html