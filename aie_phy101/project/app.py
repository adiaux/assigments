from flask import Flask, render_template,request

app= Flask(__name__)

@app.route('/')
def index():
    return render_template('home.html')




@app.route('/polygon',methods = ['GET','POST'])
def polygon():
    listX=[]
    listY=[]
    if request.method == 'POST': # basic Flask structure 
        n = int(request.form['inputShape'])
        Xt=str(request.form['inputX']).split( )    
        Yt=str(request.form['inputY']).split( )                   
        codeP(Xt,Yt,n)
        return codeP(Xt,Yt,n)
    return render_template('index.html')


@app.route('/comp',methods = ['GET','POST'])
def comp():
    listX=[]
    listY=[]
    if request.method == 'POST': # basic Flask structure 
        n = int(request.form['inputShape'])
        Xt=str(request.form['inputX']).split( )    
        Yt=str(request.form['inputY']).split( )   
        n1= int(request.form['inputShapeC'])
        X1=str(request.form['inputX1']).split( )    
        Y1=str(request.form['inputY2']).split( )                   
        codeC(Xt,Yt,n,X1,Y1,n1)
        return codeC(Xt,Yt,n,X1,Y1,n1)
    return render_template('comp.html')

@app.route('/cut',methods = ['GET','POST'])
def cut():
    listX=[]
    listY=[]
    if request.method == 'POST': # basic Flask structure 
        n = int(request.form['inputShape'])
        Xt=str(request.form['inputX']).split( )    
        Yt=str(request.form['inputY']).split( )                   
        nCut= int(request.form['inputShapeCut'])
        XCut=str(request.form['inputXcut']).split( )    
        YCut=str(request.form['inputYcut']).split( )          
        codeCut(Xt,Yt,n,XCut,YCut,nCut)
        return codeCut(Xt,Yt,n,XCut,YCut,nCut)
    return render_template('cut.html')


@app.errorhandler(500)
def not_found(e):
  return render_template('error.html'), 500

def polygonArea(X, Y, n): 
    area = 0.0
    j = n - 1
    for i in range(0,n): 
        area += (X[j] + X[i]) * (Y[j] - Y[i]) 
        j = i         
  
    return int(abs(area / 2.0))  



def codeP(Xt,Yt,n):
    global area
    inertia=[]
    centroid=[]
    X = []
    Y = []
    IxMain =0.0
    IyMain =0.0
    Ix = 0.0
    Iy = 0.0
    Cx=0.0
    Cy=0.0
    for i in range(len(Xt)):
        X.append(int(Xt[i]))
        Y.append(int(Yt[i]))
    area=polygonArea(X, Y, len(X))
    for i in range(0,n):
        k=i+1
        if k>=n:
            k=0
        #Calculating centroid using formula
        Cx+=(X[i]+X[k])*(X[i]*Y[k]-X[k]*Y[i])
        Cy+=(Y[i]+Y[k])*(X[i]*Y[k]-X[k]*Y[i])
        #Calculating moment of inertia about x and y axes
        Ix+=(X[i]*Y[k]-X[k]*Y[i])*(Y[i]*Y[i]+Y[i]*Y[k]+Y[k]*Y[k])
        Iy+=(X[i]*Y[k]-X[k]*Y[i])*(X[i]*X[i]+X[i]*X[k]+X[k]*X[k])
    #Finding centroid of polygon using formula
    Cx=1/(6*area)*Cx
    Cy=1/(6*area)*Cy
    #Finding moment of inertia of polygon about x and y axes    
    Ix=(1/12)*Ix
    Iy=(1/12)*Iy
    #Calculating moment of inertia of polygon about centroid of polygon (using parallel axis theorem)
    IxMain=Ix-(area)*Cy*Cy
    IyMain=Iy-(area)*Cx*Cx
    tempList1=[]
    tempList1.append(Cx)
    tempList1.append(Cy)
    centroid=tempList1
    tempList2=[]
    tempList2.append(IxMain)
    tempList2.append(IyMain)
    inertia=tempList2
    return render_template('page.html',centroid=centroid,inertia=inertia,area=area) 
    

def codeC(Xt,Yt,n,Xs,Ys,n1):
    area = 0
    inertia=[]
    centroid=[]
    X = []
    Y = []
    IxMain =0.0
    IyMain =0.0
    Ix = 0.0
    Iy = 0.0
    Cx=0.0
    Cy=0.0
    for i in range(len(Xt)):
        X.append(int(Xt[i]))
        Y.append(int(Yt[i]))
    area=polygonArea(X, Y, len(X))
    for i in range(0,n):
        k=i+1
        if k>=n:
            k=0
        #Calculating centroid using formula
        Cx+=(X[i]+X[k])*(X[i]*Y[k]-X[k]*Y[i])
        Cy+=(Y[i]+Y[k])*(X[i]*Y[k]-X[k]*Y[i])
        #Calculating moment of inertia about x and y axes
        Ix+=(X[i]*Y[k]-X[k]*Y[i])*(Y[i]*Y[i]+Y[i]*Y[k]+Y[k]*Y[k])
        Iy+=(X[i]*Y[k]-X[k]*Y[i])*(X[i]*X[i]+X[i]*X[k]+X[k]*X[k])
    #Finding centroid of polygon using formula
    Cx=1/(6*area)*Cx
    Cy=1/(6*area)*Cy
    #Finding moment of inertia of polygon about x and y axes    
    Ix=(1/12)*Ix
    Iy=(1/12)*Iy
    #Calculating moment of inertia of polygon about centroid of polygon (using parallel axis theorem)
    IxMain=Ix-(area)*Cy*Cy
    IyMain=Iy-(area)*Cx*Cx
    tempList1=[]
    tempList1.append(Cx)
    tempList1.append(Cy)
    centroid=tempList1
    tempList2=[]
    tempList2.append(IxMain)
    tempList2.append(IyMain)
    inertia=tempList2
    centroid =[]
    inertia =[]
    Ixpoly=0.0
    Iypoly=0.0
    Cx1=0.0
    Cy1=0.0
    Ix1=0.0
    Iy1=0.0
    X1=[]
    Y1=[]
    for i in range(len(Xs)):
        X1.append(int(Xs[i]))
        Y1.append(int(Ys[i]))
    area1=polygonArea(X1, Y1, len(X1))
    for i in range(0,n1):
        k=i+1
        if k>=n1:
            k=0
        #Calculating centroid using formula
        Cx1+=(X1[i]+X1[k])*(X1[i]*Y1[k]-X1[k]*Y1[i])
        Cy1+=(Y1[i]+Y1[k])*(X1[i]*Y1[k]-X1[k]*Y1[i])
        #Calculating moment of inertia about x and y axes
        Ix1+=(X1[i]*Y1[k]-X1[k]*Y1[i])*(Y1[i]*Y1[i]+Y1[i]*Y1[k]+Y1[k]*Y1[k])
        Iy1+=(X1[i]*Y1[k]-X1[k]*Y1[i])*(X1[i]*X1[i]+X1[i]*X1[k]+X1[k]*X1[k])
    #Finding centroid of composite shape using formula
    Cx1=1/(6*area1)*Cx1
    Cy1=1/(6*area1)*Cy1
    #Finding moment of inertia of composite shape about x and y axes
    Ix1=(1/12)*Ix1
    Iy1=(1/12)*Iy1
    #Finding centroid of polygon + composite shape
    Cx1=(Cx*area+Cx1*area1)/(area1+area)
    Cy1=(Cy*area+Cy1*area1)/(area1+area)
    tempList1=[]
    tempList1.append(Cx1)
    tempList1.append(Cy1)
    centroid=tempList1
    #Calculating moment of inertia of polygon about centroid of polygon + composite shape (using parallel axis theorem)
    Ixpoly=Ix-(area)*Cy1*Cy1
    Iypoly=Iy-(area)*Cx1*Cx1
    #Calculating moment of inertia of composite shape about centroid of polygon + composite shape (using parallel axis theorem)
    Ix1=Ix1-(area1)*Cy1*Cy1
    Iy1=Iy1-(area1)*Cx1*Cx1
    #Adding both the above moments of inertia to find the overall moment of inertia
    Ixpoly=Ixpoly+Ix1
    Iypoly=Ixpoly+Ix1
    tempList2=[]
    tempList2.append(Ixpoly)
    tempList2.append(Iypoly)
    inertia=tempList2
    compCentroid=str(centroid)
    compInertia=str(inertia)
    compArea=str(area+area1)
    return render_template('page.html',centroid=compCentroid,inertia=compInertia,area=compArea) 



def codeCut(Xt,Yt,n,XCut,YCut,nCut):
    area = 0
    inertia=[]
    centroid=[]
    X = []
    Y = []
    IxMain =0.0
    IyMain =0.0
    Ix = 0.0
    Iy = 0.0
    Cx=0.0
    Cy=0.0
    for i in range(len(Xt)):
        X.append(int(Xt[i]))
        Y.append(int(Yt[i]))
    area=polygonArea(X, Y, len(X))
    for i in range(0,n):
        k=i+1
        if k>=n:
            k=0
        #Calculating centroid using formula
        Cx+=(X[i]+X[k])*(X[i]*Y[k]-X[k]*Y[i])
        Cy+=(Y[i]+Y[k])*(X[i]*Y[k]-X[k]*Y[i])
        #Calculating moment of inertia about x and y axes
        Ix+=(X[i]*Y[k]-X[k]*Y[i])*(Y[i]*Y[i]+Y[i]*Y[k]+Y[k]*Y[k])
        Iy+=(X[i]*Y[k]-X[k]*Y[i])*(X[i]*X[i]+X[i]*X[k]+X[k]*X[k])
    #Finding centroid of polygon using formula
    Cx=1/(6*area)*Cx
    Cy=1/(6*area)*Cy
    #Finding moment of inertia of polygon about x and y axes    
    Ix=(1/12)*Ix
    Iy=(1/12)*Iy
    #Calculating moment of inertia of polygon about centroid of polygon (using parallel axis theorem)
    IxMain=Ix-(area)*Cy*Cy
    IyMain=Iy-(area)*Cx*Cx
    tempList1=[]
    tempList1.append(Cx)
    tempList1.append(Cy)
    centroid=tempList1
    tempList2=[]
    tempList2.append(IxMain)
    tempList2.append(IyMain)
    inertia=tempList2
    centroid =[]
    inertia =[]
    Ixpoly=0.0
    Iypoly=0.0
    Cx1=0.0
    Cy1=0.0
    Ix1=0.0
    Iy1=0.0
    area1=0
    X1=[]
    Y1=[]
    for i in range(len(XCut)):
        X1.append(int(XCut[i]))
        Y1.append(int(YCut[i]))
    area1=polygonArea(X1, Y1, len(X1))
    #Negating cutout area
    area1=-1*area1
    for i in range(0,nCut):
        k=i+1
        if k>=nCut:
            k=0
        #Calculating centroid using formula
        Cx1+=(X1[i]+X1[k])*(X1[i]*Y1[k]-X1[k]*Y1[i])
        Cy1+=(Y1[i]+Y1[k])*(X1[i]*Y1[k]-X1[k]*Y1[i])
        #Calculating moment of inertia about x and y axes
        Ix1+=(X1[i]*Y1[k]-X1[k]*Y1[i])*(Y1[i]*Y1[i]+Y1[i]*Y1[k]+Y1[k]*Y1[k])
        Iy1+=(X1[i]*Y1[k]-X1[k]*Y1[i])*(X1[i]*X1[i]+X1[i]*X1[k]+X1[k]*X1[k])
    #Finding centroid of cutout using formula
    Cx1=1/(-6*area1)*Cx1
    Cy1=1/(-6*area1)*Cy1
    #Finding moment of inertia of cutout about x and y axes
    Ix1=(1/12)*Ix1
    Iy1=(1/12)*Iy1
    #Finding centroid of polygon - cutout shape
    Cx1=(Cx*area+Cx1*area1)/(area1+area)
    Cy1=(Cy*area+Cy1*area1)/(area1+area)
    tempList1=[]
    tempList1.append(Cx1)
    tempList1.append(Cy1)
    centroid=tempList1
    #Calculating moment of inertia of polygon about centroid of polygon - cutout (using parallel axis theorem)
    Ixpoly=Ix-(area)*Cy1*Cy1
    Iypoly=Iy-(area)*Cx1*Cx1
    #Calculating moment of inertia of composite shape about centroid of polygon - cutout (using parallel axis theorem)
    Ix1=Ix1-(area1)*Cy1*Cy1
    Iy1=Iy1-(area1)*Cx1*Cx1
    #Adding both the above moments of inertia to find the overall moment of inertia
    Ixpoly=Ixpoly+Ix1
    Iypoly=Ixpoly+Ix1
    tempList2=[]
    tempList2.append(Ixpoly)
    tempList2.append(Iypoly)
    inertia=tempList2
    return render_template('page.html',centroid=str(centroid),inertia=str(inertia),area=str(area+area1)) 



if __name__=='__main__':
	app.run()
