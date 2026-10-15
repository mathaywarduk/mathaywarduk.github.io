# On `jekyll build` (not `jekyll serve`), put the stylesheet straight into
# each page's <head> instead of linking to it. That removes a
# render-blocking request so the first paint happens sooner.
# Font and image URLs in the CSS are root-relative, so they still work.
Jekyll::Hooks.register :site, :post_write do |site|
  next if site.config["serving"]

  css_path = File.join(site.dest, "assets/css/styles.css")
  next unless File.exist?(css_path)

  css = File.read(css_path, encoding: "UTF-8").strip
  link = %r{<link rel="?stylesheet"? href="?/assets/css/styles\.css"?\s*/?>}

  Dir.glob(File.join(site.dest, "**/*.html")).each do |path|
    html = File.read(path, encoding: "UTF-8")
    next unless html.match?(link)

    File.write(path, html.sub(link) { "<style>#{css}</style>" }, encoding: "UTF-8")
  end
end
