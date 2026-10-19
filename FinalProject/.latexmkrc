# Needed by the mermaid package, which runs mmdc through shell escape.
$pdflatex = 'pdflatex -shell-escape %O %S';

# mmdc re-renders the diagram PDF on every pass with a new timestamp, which makes
# latexmk loop until "Maximum runs reached". Ignore the timestamps.
$hash_calc_ignore_pattern{'pdf'} = '^/CreationDate |^/ModDate ';
