import camelot

tables = camelot.read_pdf('/usr/src/app/data/scratch.pdf')
tables.export('/usr/src/app/outputs/scratch.csv', f='csv') # json, excel, html, sqlite

# tables[0].to_csv('scratch.csv') # to_json, to_excel, to_html, to_sqlite
