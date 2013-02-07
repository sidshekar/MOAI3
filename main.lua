-- Load a new simulator
MOAISim.openWindow("LEARNING IMAGE FUNCTIONS", 320, 480)

-- Load a new viewport
myViewport = MOAIViewport.new()
myViewport:setSize(320, 480)
myViewport:setScale(320, 480)

-- Load a new layer
myLayer = MOAILayer2D.new()
myLayer:setViewport(myViewport)

-- Load a new render table
myTable = {}
table.insert(myTable, myLayer)
MOAIRenderMgr.setRenderTable(myTable)

-- Load background's quad
backQuad = MOAIGfxQuad2D.new()
backQuad:setTexture("background.png")
backQuad:setRect(-160, -240, 160, 240)

-- Display background
backImage = MOAIProp2D.new()
backImage:setDeck(backQuad)
myLayer:insertProp(backImage)

-- Load Durazno's quad
duraznoQuad = MOAIGfxQuad2D.new()
duraznoQuad:setTexture("durazno.png")
duraznoQuad:setRect(-100, -100, 100, 100)

-- Display Durazno
duraznoImage = MOAIProp2D.new()
duraznoImage:setDeck(duraznoQuad)
myLayer:insertProp(duraznoImage)

--image functions
duraznoImage:setLoc(0,100)--move up y 100
duraznoImage:setScl(1.5,1.5)--scale in x & y by 1.5
duraznoImage:setColor(1,1,1,0.5) --change color & opacity
duraznoImage:setVisible(true) --set visibility

--seek is like tween
duraznoImage:seek(0, 0, 0, 1, 1, 2)--x,y,rot,hScale, vScale,Duration
duraznoImage:seekColor(1, 1, 1, 1, 2)-- r,g,b,a, duration