#!/usr/bin/env ruby

require 'fileutils'

DEFAULT_FOLDER = "/media/Windows/Users/jackson/Dropbox/inbox"

GRAPHICS = ["cdr", "gif", "xcf", "jpg", "jpeg", "cbr", "eps", "bmp", "wbz", "ico", "png", "xcf", "psd", "jpg-large"]
ARCHIVES = ["rar", "zip", "arj", "gz", "xz", "bz2", "tar", "z", "tgz", "iso", "rpm", "deb", "exe", "pdb", "prc", "torrent", "skz", "url", "ini", "jar", "js"]
MEDIA = ["ogg", "mp3", "wav", "rm", "wmv", "srt", "swf", "wav", "au", "mpg", "mpeg", "mp4", "mpe", "ra", "ram", "avi", "mid"]
DOCS = ["html", "htm", "shtml", "odt", "ppt", "xml", "xls", "xlsx", "xlsm", "mysql", "csv", "chm", "chm", "doc", "docx", "php", "cgi", "pdf", "ps", "rtf", "sql", "cf", "log", "dat", "sx", "sh", "opml", "txt", "html", "mm", "mobi"]

p "------------------------------------------------------ GRAPHICS ------------------------------------------------------"
GRAPHICS.each do |f|
	Dir["#{DEFAULT_FOLDER}/*.#{f}"].each do |item|
	  FileUtils.mv(item, "#{DEFAULT_FOLDER}/arquivos/imagens")
	  p "#{item} to #{DEFAULT_FOLDER}/arquivos/imagens}"
	end;
end

p "------------------------------------------------------ ARCHIVES ------------------------------------------------------"
ARCHIVES.each do |f|
	Dir["#{DEFAULT_FOLDER}/*.#{f}"].each do |item|
	  FileUtils.mv(item, "#{DEFAULT_FOLDER}/arquivos/compactados")
	  p "#{item} to #{DEFAULT_FOLDER}/arquivos/compactados}"
	end;
end

p "------------------------------------------------------- MEDIA --------------------------------------------------------"
MEDIA.each do |f|
	Dir["#{DEFAULT_FOLDER}/*.#{f}"].each do |item|
	  FileUtils.mv(item, "#{DEFAULT_FOLDER}/arquivos/media")
	  p "#{item} to #{DEFAULT_FOLDER}/arquivos/media}"
	end;
end

p "-------------------------------------------------------- DOCS --------------------------------------------------------"
DOCS.each do |f|
	Dir["#{DEFAULT_FOLDER}/*.#{f}"].each do |item|
	  FileUtils.mv(item, "#{DEFAULT_FOLDER}/arquivos/textos")
	  p "#{item} to #{DEFAULT_FOLDER}/arquivos/textos}"
	end;
end