pollutantmean<-function(directory="specdata",pollutant="nitrate", id=1:332){
        numerator<-0
        denominator<-0
        for (i in 1:length(id)) {
                numero<-id[i]
                filenames <- sprintf("%03d.csv", numero)
                filenames <- paste("C:/Users/quent/Desktop/DSS", directory, filenames, sep="/")
                fichier<-read.csv(filenames)
                col<-fichier[pollutant]
                if (length(col[!is.na(col)])==0) {next}
                denominator<-denominator+length(col[!is.na(col)])
                numerator<-numerator+sum(fichier[pollutant],na.rm = TRUE)
        
        }
       print(numerator/denominator)
}


        

        
