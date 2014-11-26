cwd <- getwd()

path <- paste(dirname(system.file(".",package="rSlick")), .Platform$file.sep, "", sep="")
lib.java.path <- paste(path, "java", sep="")
dir.create(lib.java.path, recursive=TRUE, showWarnings=FALSE)
setwd(lib.java.path)
rSlick.jars <- c("rSlick-lib-0.1.jar", "mysql-connector-java-5.1.12.jar")

for ( jarName in rSlick.jars ) {
  url <- paste("http://github.com/alexander-myltsev/rSlick/releases/download/v0.1/", jarName, sep="")
  download.file(url, jarName, mode="wb", quiet=FALSE, method="wget")
}

setwd(cwd)