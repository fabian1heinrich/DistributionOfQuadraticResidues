legendre(p)={
    y=vector(p-1);
    for(i=1,p-1,
        y[i]=kronecker(i,p);
    );
    return(y);
}
