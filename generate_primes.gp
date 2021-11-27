generate_primes(p1,p2,name)={
    p=vector(p2-p1);
    counter=1;
    for(i=p1,p2-1,
        p[counter]=prime(i);
        counter+=1;
    );
    write(name,p);
}
 
