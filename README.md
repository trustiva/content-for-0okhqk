# Hypefy Website Mirror

This directory contains a local mirror of the Hypefy website (https://hypefy.webflow.io/) that was downloaded using PowerShell scripts since wget was not available on this Windows system.

## What Was Downloaded

### HTML Pages
- **Main Pages**: Home (index.html), About, Services, Contact, Pricing
- **Alternative Home Pages**: Home 02, Home 03
- **Case Studies**: Case Studies 01, 02, 03
- **Blog Pages**: Blog 01, 02, 03
- **Template Info**: Style Guide, Licenses, Changelog

### Assets
- **CSS**: Main stylesheet (hypefy.webflow.css)
- **Images**: Logos, favicon, webclip, bag icon, open graph image
- **Directories**: Organized by content type (case-studies/, blog/, template-info/)

## How It Was Created

Since the original `wget --mirror` command couldn't be executed (wget not available on Windows), we used PowerShell's `Invoke-WebRequest` to:

1. **Download HTML Pages**: Created `download_website.ps1` to download all main navigation pages
2. **Download Assets**: Created `download_assets.ps1` to download CSS, images, and other resources
3. **Organize Files**: Created proper directory structure to match the website organization

## File Structure

```
content for 0okhqk/
├── index.html (homepage)
├── about.html
├── services.html
├── contact.html
├── pricing.html
├── home-02.html
├── home-03.html
├── case-studies/
│   ├── case-studies.html
│   ├── case-studies-02.html
│   └── case-studies-03.html
├── blog/
│   ├── blog.html
│   ├── blog-02.html
│   └── blog-03.html
├── template-info/
│   ├── style-guide.html
│   ├── licenses.html
│   └── changelog.html
├── css/
│   └── hypefy.webflow.css
├── images/
│   ├── logo.svg
│   ├── footer-logo.svg
│   ├── favicon.svg
│   ├── webclip.svg
│   ├── bag-icon.svg
│   └── open-graph-image.jpg
├── js/
├── fonts/
├── download_website.ps1
├── download_assets.ps1
└── README.md
```

## How to Use

1. **View the Website**: Open `index.html` in your web browser to start browsing
2. **Navigate**: Use the downloaded HTML files to explore different sections
3. **Offline Access**: All content is now available offline
4. **Customization**: Modify the HTML/CSS files as needed for your projects

## Limitations

- **Dynamic Content**: Some JavaScript functionality may not work offline
- **External Resources**: Some resources may still reference external URLs
- **Not a Complete Mirror**: This is a selective download of main pages and assets, not a full recursive mirror

## Scripts

- `download_website.ps1`: Downloads all HTML pages
- `download_assets.ps1`: Downloads CSS, images, and other assets

## Original Website

The original Hypefy website is a Webflow ecommerce template with neubrutalism style design and advanced 3D animations. This mirror preserves the visual design and content structure for offline use and reference.

## Note

This mirror was created for educational and reference purposes. Please respect the original website's terms of service and copyright when using this content.
