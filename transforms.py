i = 0
j = 0 ## 
cl = 1 ## cell number
cols = 16 ## num of columns
rows = 9 ## num rows
trnsx = 1 ## amount to translate by x
trnsy = 1 ## amount to translate by y
sclx = -1 ## scale along x
scly = -1 ## scale along y
colnum = 1 ## keep track of column number
rwnum = 1  ## row number
flprw = 0 ## flip row odd or even
while i < rows:
    while j < cols:
        ##f.write use the shell uncomment this to 
        print("\n \n //cell #" + str(cl) + " column# "+ str(colnum) + " row #" + str(rwnum) +## compact and quick for testing  
        "\n  pushMatrix();" + ##replace print with write
        "\n  translate(h * " + str(trnsx) + ", h * " + str(trnsy) +");\n" +
        "  scale(" + str(sclx) + "," + str(scly) + " ); \n" 
        "  scale(1.2);\n" +
        "  image(buffer[iRead], 0, 0);\n" +
        "  popMatrix();")
        colnum = cl%cols+1
        trnsx = trnsx + colnum%2 * 2
        sclx = sclx * -1
        cl+= 1
        j+= 1
    rwnum += 1
    trnsx = 1
    trnsy = trnsy + rwnum%2 * 2 ##trnsy = 1
    sclx = -1
    scly = scly * -1         
    i+= 1
    j = 0
        
        
