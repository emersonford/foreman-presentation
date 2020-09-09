IMAGES = configuration_sd.pdf discovery_sd.pdf installation_sd.pdf provisioning_diagram.pdf provisioning_foreman_diagram.pdf

all: presentation.pdf

presentation.pdf: $(IMAGES)

%.pdf: %.tex
	pdflatex $<

clean:
	rm *.pdf
