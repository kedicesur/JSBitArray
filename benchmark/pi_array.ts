export function pi(start : number, end : number) : number {
  
  function sieve(g : number, o : number) : number {
    let t = (Math.sqrt(4+8*(g+o))-2)/4,
        e = 0,
        s = 0,
        a = new Array(g),
        c = 0,
        l = o ? (g+o-1)/3
              : (g-1)/3;
       
    if (o) {
      for(let i = Math.ceil((o-1)/3); i < l; i++) a[1+3*i-o] = 1;
      for(let i = 2; i < t; i++){
        if (i%3-1) {
          s = Math.ceil((o-i)/(1+2*i));
          e = (g+o-i)/(1+2*i);
          for(let j = s; j < e; j++) a[i + j + 2*i*j-o] = 1; 
        }
      }
    } else {
        for(let i = 1; i < l; i++) a[1+3*i] = 1;
        for(let i = 2; i < t; i++){
          if (i%3-1){
            e = (g-i)/(1+2*i);
            for(let j = i; j < e; j++) a[i + j + 2*i*j] = 1;
          }
        }
      }
    for (let i = 0; i < g; i++) !a[i] && c++;
    return c;
  }
  
  end   % 2 && end--;             // make end even
  start % 2 && start--;           // make start even
  
  let n  = end - start,
      cs = n < 2e6 ? 5e3   :      // chunk size
           n < 2e7 ? 5e4   :
                     4.65e5 ,
      cc = Math.floor(n/cs),      // chunk count
      xs = n % cs,                // excess after last chunk
      pc = 0;                     // prime count
  for(let i = 0; i < cc; i++) pc += sieve(cs/2,(start+i*cs)/2);
  xs && (pc += sieve(xs/2,(start+cc*cs)/2));
  return pc;
}