//For Firefox to append anti-alias corners; 
function makeCanvasCorner()
{
    var YUD = YAHOO.util.Dom;
    var aModule = YUD.getElementsByClassName('module','div');
   
    var aParams = [
        [180,270,12],
        [290,-10,12.5],
        [15,60,12.5],
        [110,170,12]
    ];
    
    var makeCorner = function(dModule)
    {
        var dContainer = YUD.getElementsByClassName('container','div',dModule)[0];
        var dContent = YUD.getElementsByClassName('content','div',dModule)[0];
        var sPosition = YUD.getStyle( dModule , 'position');
        if( sPosition!='absolute'){ alert('position is not absolute') ;  makeCorner = function(){}; return;};
       
        var sBorderColor = YUD.getStyle( dContent , 'border-color') ;
            sBorderColor = document.defaultView.getComputedStyle(dContent,null).getPropertyValue('border-top-color');
        var sBgColor = YUD.getStyle( dContainer , 'backgroundColor') 
        YUD.addClass(dModule,'module-has-canvas-shadow');
        
        for(var i=0;i<4;i++){
        var oDiv = document.createElement('div');
        oDiv.className = 'canvas-corner canvas-corner-' +  i;
        oDiv.innerHTML = '<canvas class="cvs"></canvas>';
        dModule.appendChild(oDiv );
        
        
            var oCanva = oDiv.firstChild;
            if( oCanva && oCanva.getContext)
            {
               
                var ctx =oCanva.getContext('2d');
                    ctx.beginPath()
                var x          = aParams[i][2];               // x coordinate
                var y          = aParams[i][2];                      // y coordinate
                var radius     = 11.8;                    // Arc radius
                var startAngle =  (Math.PI/180)*aParams[i][0] ;                     // Starting point on circle
                var endAngle   =  (Math.PI/180)*aParams[i][1]; // End point on circle
                var clockwise  = false; // clockwise or anticlockwise
            
                ctx.arc(x,y,radius,startAngle,endAngle, clockwise);
                ctx.lineWidth = 1.6;
                ctx.strokeStyle=sBorderColor;
                ctx.stroke();
            };
        };
        
        
        dContainer.style.background='transparent'; 
        var nOpac = 1 / 10 ;
        for(var s=1;s<5;s++)
        {
            var oShadow = document.createElement('div');
           oShadow.className = 'shadow-patch';
            var oShadowStyle= oShadow.style;
            oShadowStyle.position = 'absolute';
            oShadowStyle.zIndex = -s;
            oShadowStyle.top = s*2 - 6  + 'px';
            oShadowStyle.left = s*2  - 2+ 'px';
            oShadowStyle.background = sBgColor ;
            oShadowStyle.opacity = nOpac ;            
            dModule.appendChild(oShadow);          
            
        };
    
    };
    
    for(var i=0;i<aModule.length;i++)
    {
         makeCorner(aModule[i],i);
        
    }
};

//For Firefox to append anti-alias corners; 
var canvas =  document.createElement('canvas');
if( 
    canvas && canvas.getContext && (
    document.getBoxObjectFor )
 )
 { 
     YAHOO.util.Event.addListener(window,'load',makeCanvasCorner);
 };