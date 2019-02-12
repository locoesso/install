mkdir -p ~/.local/share/gtksourceview-3.0/styles
mkdir -p ~/.local/share/gedit/styles
git clone https://github.com/systematicat/gedit-material-theme
cd gedit-material-theme
cp adapta.xml ~/.local/share/gtksourceview-3.0/styles
cp adapta.xml ~/.local/share/gedit/styles

