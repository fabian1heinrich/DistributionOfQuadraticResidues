d_tupel_r(p,d)={
  x=legendre_fast(p);
  
  y1=matrix(p-1,d);
  bool=1;
  counter=0;
  
  for(j=1,p-d,
    for(k=1,d,
      if(x[j+k-1]==-1,bool=0)
     );
     if(bool==1,for(l=1,d,y1[j,l]=j+l-1);counter=counter+1);
     bool=1;
  );
  
  /* ausgabe generieren */
  c=0;
  y2=matrix(counter,d);
  for(i=1,p-1,if(y1[i,1]!=0,
    c=c+1;
    for(j=1,d,y2[c,j]=y1[i,j]);
    )
  );
  return(counter);
}
