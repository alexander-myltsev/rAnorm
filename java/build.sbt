name := "lib-src"

version := "0.1.0"

scalaVersion := "2.11.4"

libraryDependencies ++= Seq(
  "com.typesafe.slick"             %% "slick"               % "2.1.0",
  "org.slf4j"                      %  "slf4j-simple"        % "1.6.1"
)

assemblyJarName in assembly := s"RSlick-lib-${version.value}.jar"