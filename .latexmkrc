#!/usr/bin/env perl

# LaTeX
$lualatex = 'lualatex -synctex=1 -halt-on-error -file-line-error %O %S';
$max_repeat = 5;
$pdf_engine = 'lualatex';

# BibTeX
$bibtex = 'pbibtex %O %S';
# biber を使う場合はこちらを有効化（どちらか一方をコメントアウト）
# $biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';

# index
$makeindex = 'mendex %O -o %D %S';

# PDFモードを 1 (PDF直接生成) に
$pdf_mode = 1;

# preview
$pvc_view_file_via_temporary = 0;
# プレビューワーはPDFビューワーのみ設定
if ($^O eq 'linux') {
    $pdf_previewer = "xdg-open %S";
} elsif ($^O eq 'darwin') {
    $pdf_previewer = "open %S";
} else {
    $pdf_previewer = "start %S";
}

$ENV{'TEXINPUTS'} = './style//:' . $ENV{'TEXINPUTS'};
