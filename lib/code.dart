class Transaction{
  int from;
  int to;
  double amount;
  Transaction(this.from,this.to,this.amount);
}

List<double> calculateNet(List<double>paid)
{
//current user paid amount
List<double>net=[for (var i = 0; i < (paid.length); i++) 0];
for (int i = 0; i < (paid.length); i++)
{
  if(paid[i]==0)continue;
  double pay=paid[i]/(paid.length);
  net[i]-=paid[i];
  for (int j = 0; j < (paid.length); j++)
  {
      net[j]+=pay;
  }
  
}

return net;
}
List<Transaction>answer=[];
void solve(List<double>a)
{
   List<int> indices = [for (var i = 0; i < (a.length); i++) i];
   //a.sort();

   int mx=(indices.reduce((curr, next) => a[curr] > a[next]? curr: next)); // 8 --> Max
   int mn=(indices.reduce((curr, next) => a[curr] < a[next]? curr: next)); // 1 --> Min
   double settle=0;
   if(a[mn]==0 && a[mx]==0){return ;}
   if(a[mn]*-1 > a[mx]){settle=a[mx];}
   else {settle =a[mn]*-1;}
   a[mx]-=settle;
   a[mn]+=settle;
   Transaction t= Transaction(mx,mn,settle);
   answer.add(t);
   solve(a);
  
   return ;
}


void main() { 
   List<double>p=[100,200,300,0,0];
   print(p);
   //List<int> a = [-200,100,-300,500,-100]; 
   List<double> a=calculateNet(p);
  solve(a);
  //print(answer.length);
   for (int i = 0; i < (answer.length); i++)
   {
       print(answer[i].from);
       print(answer[i].to);
       print(answer[i].amount);
   }
}
