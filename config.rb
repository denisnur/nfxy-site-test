# Require any additional compass plugins here.
project_type = :stand_alone

# Publishing paths
http_path = "//static.denisn.com/"
http_images_path = "//static.denisn.com/assets/images"
http_fonts_path = "//static.denisn.com/assets/fonts"
http_stylesheets_path = "//static.denisn.com/assets/css"

# http_images_path = "/assets/images"
# http_fonts_path = "/assets/fonts"
# http_stylesheets_path = "/assets/css"

# Local development paths
sass_dir = "assets/scss"
images_dir = "assets/images"
fonts_dir = "assets/fonts"
css_dir = "dist/assets/css"

line_comments = false
output_style = :compressed

environment = :production
asset_cache_buster :none
