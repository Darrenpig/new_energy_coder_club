# Configuration file for the NEC Community Sphinx documentation.
#
# This file contains the configuration for building NEC (New Energy Coder)
# Community documentation using Sphinx. It supports both reStructuredText
# and Markdown formats via MyST parser.
#
# For the full list of built-in configuration values, see:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

import os
import sys
from datetime import datetime

# -- Path setup --------------------------------------------------------------
# Add project root to path for autodoc
sys.path.insert(0, os.path.abspath('..'))

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'NEC 新能源开发者社区'
copyright = f'{datetime.now().year}, NEC Community'
author = 'NEC Community Contributors'
release = '1.0.0'
version = '1.0'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    # Sphinx built-in extensions
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.napoleon',
    'sphinx.ext.intersphinx',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax',
    'sphinx.ext.ifconfig',
    'sphinx.ext.githubpages',
    
    # Third-party extensions
    'sphinxcontrib.mermaid',
    'myst_parser',
    'sphinx_copybutton',
    'sphinx_tabs.tabs',
    'sphinxext.opengraph',
    'notfound.extension',
]

# -- Source file configuration ----------------------------------------------

# Support both .rst and .md files
source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}

# Master document (homepage)
master_doc = 'index'

# Templates path
templates_path = ['_templates']

# Patterns to exclude
exclude_patterns = [
    '_build',
    'Thumbs.db',
    '.DS_Store',
    '**/node_modules',
    '**/.git',
    '**/venv',
    '**/.venv',
    'nec_quickstart/out',  # Generated output
]

# Language setting
language = 'zh_CN'

# -- MyST Parser configuration ----------------------------------------------
# https://myst-parser.readthedocs.io/en/latest/configuration.html

myst_enable_extensions = [
    "colon_fence",
    "deflist",
    "html_admonition",
    "html_image",
    "linkify",
    "replacements",
    "smartquotes",
    "substitution",
    "tasklist",
    "attrs_inline",
    "attrs_block",
]

myst_heading_anchors = 4
myst_all_links_external = False

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
html_extra_path = ['.nojekyll']

# Theme options
html_theme_options = {
    'analytics_id': '',
    'analytics_anonymize_ip': False,
    'logo_only': False,
    'display_version': True,
    'prev_next_buttons_location': 'bottom',
    'style_external_links': True,
    'vcs_pageview_mode': 'blob',
    'style_nav_header_background': '#2980B9',
    # Toc options
    'collapse_navigation': False,
    'sticky_navigation': True,
    'navigation_depth': 4,
    'includehidden': True,
    'titles_only': False
}

# Custom sidebar templates
html_sidebars = {
    '**': [
        'localtoc.html',
        'relations.html',
        'searchbox.html',
        'donate.html',
    ]
}

# HTML context
html_context = {
    "display_github": True,
    "github_user": "Darrenpig",
    "github_repo": "new_energy_coder_club",
    "github_version": "master",
    "conf_py_path": "/docs/",
}

# -- Options for HTML help output -------------------------------------------
htmlhelp_basename = 'NECCommunitydoc'

# -- Options for LaTeX output -----------------------------------------------
latex_elements = {
    'papersize': 'a4paper',
    'pointsize': '11pt',
    'figure_align': 'htbp',
}

latex_documents = [
    (master_doc, 'NECCommunity.tex', 'NEC 新能源开发者社区文档',
     'NEC Community', 'manual'),
]

# -- Options for manual page output -----------------------------------------
man_pages = [
    (master_doc, 'neccommunity', 'NEC 新能源开发者社区文档',
     [author], 1)
]

# -- Options for Texinfo output ---------------------------------------------
texinfo_documents = [
    (master_doc, 'NECCommunity', 'NEC 新能源开发者社区文档',
     author, 'NECCommunity', '面向新能源与机器人竞赛的开源工程社区',
     'Miscellaneous'),
]

# -- Options for Epub output ------------------------------------------------
epub_title = project
epub_author = author
epub_publisher = author
epub_copyright = copyright
epub_exclude_files = ['search.html']

# -- Intersphinx configuration ----------------------------------------------
intersphinx_mapping = {
    'python': ('https://docs.python.org/3/', None),
    'sphinx': ('https://www.sphinx-doc.org/en/master/', None),
}

# -- Todo configuration -----------------------------------------------------
todo_include_todos = True

# -- Copy button configuration ----------------------------------------------
copybutton_prompt_text = r">>> |\.\.\. |\$ |In \[\d*\]: | {2,5}\.\.\.: | {5,8}: "
copybutton_prompt_is_regexp = True

# -- OpenGraph configuration -----------------------------------------------
ogp_site_url = "https://newenergycoder.readthedocs.io/"
ogp_site_name = "NEC 新能源开发者社区"
ogp_image = "https://newenergycoder.club/shared/images/Image/Logo.png"

# -- Not found page configuration -------------------------------------------
notfound_template = '404.rst'
notfound_context = {
    'title': 'Page Not Found',
    'body': '<h1>页面未找到</h1>\n<p>抱歉，您访问的页面不存在。</p>\n<p>请返回 <a href="/">首页</a> 或使用搜索功能。</p>',
}

# -- Custom CSS and JS ------------------------------------------------------
def setup(app):
    app.add_css_file('custom.css')
    app.add_js_file('custom.js')
