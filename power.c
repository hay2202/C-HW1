#include "myMath.h"
#define e 2.71828

double Exponent(int x)
{
	double ans=e;
	if(x==0)
	return 1;

	else if(x>0)
	{
		while(x>1)
		{
			ans=ans*e;
			x--;
		}
		return ans;
	}
	else 
	{
		while(x<-1)
		{
			ans=ans*e;
			x++;
		}
		return 1/e;
	}


}

double Power(double x , int y)
{
	if(y==0)
	return 1;

	else if(y>0)
	{
		double temp=x;
		while(y>1)
		{
		temp=temp*x;
		y--;	
		}
		return temp;
	}
	else
	{
		double temp=x;
		while(y<-1)
		{
		temp=temp*x;
		y++;
		}
		return 1/ temp;
	}
}


