legendre_fast(p)={
    y=vector(p-1);
    
    if(p%4==1,
        for(i=1,(p-1)/2,
            y[i]=kronecker(i,p);
            y[p-i]=y[i];
        );,
        for(i=1,(p-1)/2,
            y[i]=kronecker(i,p);
            y[p-i]=-y[i];
        );
    );
    return(y);
};
