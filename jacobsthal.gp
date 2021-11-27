jacobsthal(p,t)={
    if(p%4==3,
        return(0),
        return(sum(c=1,p-1,kronecker(c*(c^2-t),p))));
}
