module Priority_Encoder4( 
 input wire [3:0] In,
 output wire [1:0] Out,
 output wire V
 ); 

//priority 3 -> 1 -> 0 -> 2
wire tempAnd;
and(tempAnd, !In[1], !In[0]); 
or c1(Out[1], tempAnd, In[3]);
or c2(Out[0], In[3], In[1]);
or c3(V, In[3], In[2], In[1], In[0]);


endmodule