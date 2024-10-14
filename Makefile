image::
	git pull
	pdm run python image_generator.py
	rm -f *.png
	~/go/bin/zmk-viewer generate -f /tmp/corne.keymap crkbd/r2g
	montage crkbd_r2g_split_3x6_3_default_layer.png crkbd_r2g_split_3x6_3_lower_layer.png crkbd_r2g_split_3x6_3_raise_layer.png -tile 1x3 -geometry +0+0 output.png  
	mogrify -resize x960 output.png

list::
	watch gh run list -L 1

download::
	rm -rf firmware firmware.zip
	$(eval ID := $(shell gh run list -L 1 --json databaseId -q '.[0].databaseId'))
	gh run download $(ID)

left::
	cp firmware/corne_tp_left-nice_nano_v2-zmk.uf2 /Volumes/NICENANO

right::
	cp firmware/corne_tp_right-nice_nano_v2-zmk.uf2 /Volumes/NICENANO
