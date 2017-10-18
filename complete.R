complete<-function(directory="specdata", id=1:332){
        result <- data.frame("id"=numeric(),"nobs"=numeric()) 
        
        for (i in 1:length(id)) {
                numero<-id[i]
                filenames <- sprintf("%03d.csv", numero)
                filenames <- paste("C:/Users/quent/Desktop/DSS", directory, filenames, sep="/")
                fichier<-read.csv(filenames)
                nb<-0
                
                for (j in 1:nrow(fichier)) {
                        x<-fichier[[j,"nitrate"]]
                        y<-fichier[[j,"sulfate"]]
                        if(!is.na(x) && !is.na(y)){nb<-nb+1}
                        
                        result[[i,"id"]]<-numero
                        result[[i,"nobs"]]<-nb
                }
        }
        result
}
