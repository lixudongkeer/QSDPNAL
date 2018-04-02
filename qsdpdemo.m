%% demo for QSDPNAL for solving QSDP-BIQ and QSDP-QAP problems

clear all
startup

BIQ = 0;

if BIQ
   G = biqread(['be250.2.sparse']);
   [blk,AEt,C,bE,AIt,bI] = biq_sqsdp(G,3);
   Q.QXfun = @(X) randQXfun(X,blk{1,2});
   options.nonnegative = 1;
   [obj,Z,W,QW,S,yE,yI,X,runhist,info] = ... 
          qsdpnal(blk,Q,AEt,bE,C,AIt,bI,options);
end

QAP = 1;
if QAP
   [AA,BB] = qapread(['chr15c.dat']);
   [blk,AEt,C,bE] = qapAW(AA,BB,2);
   AEt = AEt{1}; C = C{1};
   AIt = []; bI = [];
   options.nonnegative = 1;
   Q.QXfun = @(X) randQXfun(X,blk{1,2});
   [obj,Z,W,QW,S,yE,yI,X,runhist,info] = qsdpnal(blk,Q,AEt,bE,C,AIt,bI,options);
end