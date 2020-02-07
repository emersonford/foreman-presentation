IMAGES = configuration_sd.tex discovery_sd.tex installation_sd.tex provisioning_diagram.tex provisioning_foreman_diagram.tex

all: presentation.pdf

presentation.pdf: presentation.tex images
	pdflatex presentation.tex

images: $(IMAGES)
	echo $^ | xargs -n1 pdflatex

clean:
	rm *.pdf
