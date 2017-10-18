corr<-function(directory="specdata", threshold=0){
        
        complete_table <- complete("specdata", 1:332)
        nobs <- complete_table$nobs
        ids <- complete_table$id[nobs > threshold]
        id_len <- length(ids)
        corr_vector <- rep(0, id_len)
        
        j <- 1
        
        for(i in ids) {
                
                filenames <- sprintf("%03d.csv", i)
                filenames <- paste("C:/Users/quent/Desktop/DSS", directory, filenames, sep="/")
                fichier<-read.csv(filenames)
                
                corr_vector[j] <- cor(fichier$sulfate, fichier$nitrate, use="complete.obs")
                j <- j + 1
        }
        result <- corr_vector
        return(result)   
}