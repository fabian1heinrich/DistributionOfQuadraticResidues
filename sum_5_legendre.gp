sum_5_legendre(p)={
    if(p%4==3,
        return(0),
        return(sum(i=3,p-3,kronecker(lift(Mod((i-2)*(i-1)*i*(i+1)*(i+2),p)),p))));
}
