luncher_stack = new Array();

function luncher_add(fnc)
{
	luncher_stack[luncher_stack.length] = fnc;
}

function	init()
{
	for (i = 0; i < luncher_stack.length; i++)
		luncher_stack[i]();
}
