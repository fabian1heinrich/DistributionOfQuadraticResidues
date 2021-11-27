iso_d_tupel_nr(p,d)={
  x=legendre_fast(p);
  x=concat(1,x);
  
  y1=matrix(p-1,d);
  bool=1;
  counter=0;
  
  for(j=1,p-d,
    for(k=1,d,
      if(x[j+k]==1,bool=0)
     );
     if(bool==1 && x[j]==1 && if(j+d+1<p-1,x[j+d+1]==1,0),
        for(l=1,d,y1[j,l]=j+l-1);counter=counter+1
     );
     bool=1;
  );
  return(counter);
}
