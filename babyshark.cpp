#include <iostream>
#include <vector>

using namespace std;

int main(){
  vector<string> family = {"Baby", "Mommy", "Daddy", "Grandma", "Grandpa", "Let's go hunt", "Run away", "Safe at last", "It's the end"};
  // The last four aren't actually part of a "family" but I didn't want to put them in another vector
  for(int i=0;i<9;i++){
    for(int j=0;j<3;j++){
    	cout<<family[i];
    	if(i<=4){
    		cout<<" shark";
    	}
      cout<<", doo doo doo doo doo doo"<<endl;
    }
    cout<<family[i];
    if(i<=4){
    	cout<<" shark";
    }
    cout<<"!"<<endl;
  }
  return 0;
}