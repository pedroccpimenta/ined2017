<html>
<%@ LANGUAGE="VBSCRIPT" %>
<% 
    Response.addheader "cache-control", "private"
    Response.addheader "pragma", "no-cache"
    Response.expires=0 
    Response.buffer=true 
%>

<head>
<%	dibug=0
	dibug=lcase(request.querystring("debug"))
	if dibug="" or isnull(dibug) then
	dibug=0
	end if
	
	%>

<title>Soy un Arlequin<%=" "&dibug%></title>
<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">

<% 

if 7=9 then
randomize timer
r=int(rnd*4)
'response.write r

if r=0 then %>
<LINK REL="SHORTCUT ICON" HREF="./pics/cgi.ico" type="image/x-icon" title="1112">
<% elseif r=1 then%>
<LINK REL="SHORTCUT ICON" HREF="./pics/ggomez.ico" type="image/x-icon" title="1112">
<% elseif r=2 then%>
<LINK REL="SHORTCUT ICON" HREF="./pics/croldan.ico" type="image/x-icon" title="1112">
<% else %>
<LINK REL="SHORTCUT ICON" HREF="./pics/canaro.ico" type="image/x-icon" title="1112">
<%end if

end if
%>

<script type="text/javascript" src="./jquery/jquery-1.7.2.min.js"></script> 
<script type="text/javascript">
// console.clear;	

 var p=[];
    p.push({doc:'./pics/'});
    
	
function hj(x)
{	document.getElementById('ki').value=x;
}

function hj2(x)
{	document.getElementById('ki2').value=x;
}

var cps =	[ 
				/*  1 */   80700,  83190, 
				/*  2 */   84000,  87000, 
				/*  3 */   87950,  89988,
				/*  4 */   90525,  93465,
				/*  5 */   94165,  96429,
				/*  6 */   97300,  99900,
				/*  7 */  100816, 102637,
				/*  8 */  103313, 106371,
				/*  9 */  107071, 108891,
				/* 10 */  109661, 113489,
				/* 11 */  113745, 115799,
				/* 12 */  116102, 119176
				
				
				];
				
function pv()
{	document.getElementById('e').value=1-parseInt(document.getElementById('e').value);
	var e=document.getElementById('e').value;
	if (e==1)
	{
		document.getElementById('v').value=parseInt(document.getElementById('v').value)+1;
		var v=document.getElementById('v').value;
		document.getElementById('v'+v).style.background='yellow';
	}
	else
	{	var v=document.getElementById('v').value;
		document.getElementById('v'+v).style.background='white';
		document.getElementById('v').value=document.getElementById('v').value+'d';
	};
	
	//document.getElementById('time').value=cps[2*(v-1)];
	if ((v==1)||(v==26))
	{	$("#c1a").fadeOut(500, 'linear'); 	
		$("#c1fd").fadeOut(1000, 'linear');
		$("#c2fd").fadeIn(1000, 'linear');
		$("#c3fd").fadeOut(1000, 'linear');	
		$("#c4fd").fadeOut(1000, 'linear');	
		$("#c5fd").fadeOut(1000, 'linear');	
	}
	
	if ((v==6)||(v==34))
	{	$("#c1a").fadeOut(500, 'linear'); 	
		$("#c1fd").fadeOut(1000, 'linear');
		$("#c2fd").fadeOut(1000, 'linear');
		$("#c3fd").fadeIn(1000, 'linear');
		$("#c4fd").fadeOut(1000, 'linear');
		$("#c5fd").fadeOut(1000, 'linear');
	}
	
	if ((v==12))
	{	$("#c1a").fadeOut(500, 'linear'); 	
		$("#c1fd").fadeOut(1000, 'linear');
		$("#c2fd").fadeOut(1000, 'linear');
		$("#c3fd").fadeOut(1000, 'linear');
		$("#c4fd").fadeIn(1000, 'linear');
		$("#c5fd").fadeOut(1000, 'linear');
	}
	
	if ((v==30)||(v==18))
	{	$("#c1a").fadeOut(500, 'linear'); 	
		$("#c1fd").fadeOut(1000, 'linear');
		$("#c2fd").fadeOut(1000, 'linear');
		$("#c3fd").fadeOut(1000, 'linear');
		$("#c4fd").fadeOut(1000, 'linear');
		$("#c5fd").fadeIn(1000, 'linear');
	}	
	
	if (v<4)
				{frame1.scrollTop=0;
				};
				if (v>20)
				{//frame1.scrollTop=952;
				}
				else
				{//frame1.scrollTop=54.4*(v-4);
				};				
				document.getElementById('topi').value=frame1.scrollTop;
	
	document.getElementById('topi').value=frame1.scrollTop;
		
	document.getElementById('time').value='.'+$f('player3c').seek(); 
	// st($("player3c").seek/1000);
}

				
function st(x)
{	console.clear;
	$f('player3c').pause();
	document.getElementById('time').value=x;
	ms=parseInt(x*1000);
	document.getElementById('time').value=ms;
	// console.log ('ms:'+ms);
	// Percorrer o vector cps e (re) inicializar as variáveis v-versículo e e-estado
	var i=0;
	var j=cps.length;
	
	var v=1;
	var fl=0;
	var e=0;
	var k=0;
	var f2=0;
	var pin=0;
	
	console.log("ms"+ms+"-- length:"+j);
	
	while (fl==0)
	{	k++;
		
		var pin=Math.floor((i+j)/2);
		
		pin=Math.floor((i+j)/2);
		//console.log('pin:'+pin);
		//console.log('k:'+k+': i:'+i+': j:'+j+': pin:'+pin);
	
		if (ms < cps[pin])
		{	j=pin;
		}
		else
		{	if ((ms==cps[pin])||(i+1==j))
			{	i=pin;
				j=pin+1;
				fl=1;
				if(ms==cps[pin]) {f2=1;};
			}
			else
			{	i=pin;
			}
		};
				
		if (k>9) 
		{	fl=1;
			k=0;
		}
	};
	console.log('k:'+k+': i:'+i+': j:'+j+': pin:'+pin);
					
	// if(i+1==j) // Sucesso na identificação do sector seek
	{	if (j==0) {j=-1;};
		//if(j==46) {j=47;};	
	
		if (j%2==0)
		{	console.log ('j par:'+j);
			v=(j+1)/2;
			if ((v==0) ||(v==4.5))
			{	document.getElementById('e').value=0;
				document.getElementById('v').value=0;			
			}
			else
			{	document.getElementById('e').value=1;
				document.getElementById('v').value=v;
		
				if (v<4)
				{frame1.scrollTop=0;
				};
				if (v>20)
				{// frame1.scrollTop=952;
				}
				else
				{// frame1.scrollTop=54.4*(v-4);
				};				
				document.getElementById('topi').value=frame1.scrollTop;
			}				
		}
		else
		{	
			v=((j+1)/2)-1;
			console.log ('j ímpar:'+j+' -> v:'+v +' f2:'+f2 );
			if (v==-1)
			{	document.getElementById('e').value=0;
			}
			else
			{	document.getElementById('e').value=1;
			};
			
			
			if (f2==0)
			{	v=v+1;
			};
			
			document.getElementById('v').value=v;
				if (v<4)
				{frame1.scrollTop=0;
				};
				if (v>20)
				{// frame1.scrollTop=952;
				}
				else
				{// frame1.scrollTop=54.4*(v-4);
				};				
				document.getElementById('topi').value=frame1.scrollTop;
		}
							
		for (i=1; i <=cps.length/2;i++)
		{	if (i==v) 
			{	document.getElementById('v'+v).style.background='khaki';
			}
			else
			{	document.getElementById('v'+i).style.background='white';
			};
		};
	};
		
	// document.getElementById('topi').value=frame1.scrollTop;
	
	console.log('... go !');
	
	var date = new Date();
	var curDate = null;

	//do { curDate = new Date(); }
	//while(curDate-date < 800);
	
	$f('player3c').resume();
	
}


function kl()
{	// alert('lo');
	console.log(" entering cuepoints...");
	
	$f("player3c").onCuepoint( 
		cps,  				// each integer represents milliseconds in the timeline	
		function(clip, cuepoint) // this function is triggered when a cuepoint is reached
		{	pv();
			// sf(cuepoint);
			//st('d');
			//alert('cuepoint ' + clip.seekPoint + ' entered on clip ' );
		});
		console.log ("done onCuepoints...");
}

function fim()
{	document.getElementById('e').value=0;
	document.getElementById('v').value=0;	
}

function p0()
{	// alert(8);
	$("#c1a").delay(2000).fadeOut(3000, 'linear'); 	
	$("#c1fd").delay(4000).fadeIn(4000, 'linear');
	// alert('76');
}

function ftt()
{
	if(document.getElementById('ftf').value==0)
	{ $('#ft').fadeIn(2000);
	}
	else
	{ $('#ft').fadeOut(2000);
	};
	document.getElementById('ftf').value=1-parseInt(document.getElementById('ftf').value);

}

</script>

<script type="text/javascript" src="./flowplayer-3.2.12/flowplayer/flowplayer-3.2.11.min.js"></script>

</head>
<body><center>
<table border=0 width='800' cellpadding=0 cellspacing=0>
<tr><td valign=top align=center colspan=2>
<center>
<a href="./mp3/Lomuto  - Soy Un Arlequin Charlo.mp3" style="display:block;width:804px;height:30px;" id='player3c' title='Player3c'></a>
</center>
<script>
var wer;

$f("player3c", "./flowplayer-3.2.12/flowplayer/flowplayer-3.2.12.swf", 
	{	onLoad: function() {kl()},
			clip: {	autoPlay:true,autoBuffering:true },
		
		onVolume: function(level){ hj("volume level alterado "+level  );},
		onSeek: function(seek, s2)
			{	$f('player3c').pause();			
				hj2("seek position: "+s2);
				//wer=seek;
				st(s2);
			},
		
		onMute: function(){ hj('Mute|'+player3c.clientHeight+'|');},
		onUnmute: function(){ hj('unMute|'+player3c.port+'|'+player3c.cue);},		
		onResume: function(){hj('resume level:'+$f("player3c").seek+'|');},			
		onPause: function(){hj('pause'+ player3c+'|'+player3c.attributes.length);},
		onFinish: function(){fim();},
	
		plugins: 
		{	audio: 
			{	url: './flowplayer-3.2.12/flowplayer.audio-3.2.9.swf' },
				controls: {	fullscreen: false, height: 30, autoHide: false }
		},
		controls: {
			height: 30,
			width: 800,
            autoHide: false,
			backgroundColor: '#228866'
        }	
	}
);

// $f().onVolume(function(level) {    alert("volume level is now " + level);}).onFullscreen(function()  {    alert("player went fullscreen");});

</script>

<% 
'response.write "78787"
if (dibug=1) then 
%><span style='display:;'><%
else
%><span style='display:none;'><%
end if
%>
ki:<input type=text id=ki value=0 size=50>
ki2:<input type=text id=ki2 value=0 size=30>
 v: <input type=text id=v value=0 size=3>
 e: <input type=text id=e value=0 size=2> 
 time:<input type=text id=time value=0 size=4>

 top: <input type=text id=topi value=4>
<br><span onclick="$f('player3c').seek(80.50);console.log('setseek directo à voz');">goto voz</span>


</span>


<tr><td colspan=2>

<span style='display:;'>

<div style='display:inline;' onclick="document.getElementById('frame1').style.fontSize='15px';document.getElementById('frame1').style.fontFamily='Verdana';"
	title='formata texto em fonte Verdana'><font face=verdana size=2>Verdana</div>&nbsp;
<div style='display:inline;' onclick="document.getElementById('frame1').style.fontSize='16px';document.getElementById('frame1').style.fontFamily='Garamond';"
	title='formata texto em fonte Garamond'><font face=garamond size=3>Garamond</div>
</span>
<tr><td width=396 >

<div id='frame1'
style="width:396px;height:400px;border:2px solid #ccc;font-family:16px/26px Georgia, Garamond, Serif;overflow:auto;padding:4px;"> 


<div id=v1 style='display:inline;' onclick="$f('player3c').seek(cps[0]/1000)">Soy un arlequín,</div>&nbsp; 
<div id=v2 style='display:inline;' onclick="$f('player3c').seek(cps[2]/1000)">un arlequín que canta y baila</div>
<br>
<div id=v3 style='display:inline;' onclick="$f('player3c').seek(cps[4]/1000)">para ocultar</div>&nbsp;
<div id=v4 style='display:inline;' onclick="$f('player3c').seek(cps[6]/1000)">su corazón lleno de pena</div>.
<br>
<div id=v5 style='display:inline;' onclick="$f('player3c').seek(cps[8]/1000)">Me clavó en la cruz</div>,&nbsp;
<div id=v6 style='display:inline;' onclick="$f('player3c').seek(cps[10]/1000)">tu folletín de Magdalena</div>
<br>
<div id=v7 style='display:inline;' onclick="$f('player3c').seek(cps[12]/1000)">porque soñé</div>&nbsp;
<div id=v8 style='display:inline;' onclick="$f('player3c').seek(cps[14]/1000)">que era Jesús y te salvaba</div>.
<br><br>
<div id=v9 style='display:inline;' onclick="$f('player3c').seek(cps[16]/1000)">Me engañó tu voz</div>,&nbsp;
<div id=v10 style='display:inline;' onclick="$f('player3c').seek(cps[18]/1000)">tu llorar de arrepentida sin perdón</div>;
<br>
<div id=v11 style='display:inline;' onclick="$f('player3c').seek(cps[20]/1000)">Eras mujer... </div>&nbsp;
<div id=v12 style='display:inline;' onclick="$f('player3c').seek(cps[22]/1000)">¡Pensé en mi madre y me clavé</div>!
<br>
<br><font color=gray>
<div id=v13 style='display:inline;' onclick="$f('player3c').seek(cps[24]/1000)">Viví en tu amor</div>&nbsp;
<div id=v14 style='display:inline;' onclick="$f('player3c').seek(cps[26]/1000)">una esperanza</div>&nbsp;
<br>
<div id=v15 style='display:inline;' onclick="$f('player3c').seek(cps[28]/1000)">la inútil ansia</div>&nbsp;
<div id=v16 style='display:inline;' onclick="$f('player3c').seek(cps[30]/1000)">de tu salvación</div>.&nbsp;

 <br>
<div id=v17 style='display:inline;' onclick="$f('player3c').seek(cps[32]/1000)">¡Perdonáme si fui bueno!</div>.&nbsp;
<br>
<div id=v18 style='display:inline;' onclick="$f('player3c').seek(cps[34]/1000)">Si no sé más que sufrir.</div>.&nbsp;

<br>
Si he vivido entre las risas<br>
por quererte redimir.<br>
¡Cuánto dolor que hace reír!<br>


</div>
<td valign=middle align=center width=392  bgcolor=black
style='border-radius:12px;-webkit-border-radius:12px;-moz-border-radius:12px;'
>
<!---
<table bgcolor=red border=6 style='-webkit-border-radius: 8px;-moz-border-radius: 8px;border-radius: 8px;'
>
<tr><td>lkjlkj</table>
--->

<font color=red face=Garamond><center>
<div id=s0 
	align=center
	valign=middle
	style='position:relative;width:390px;height:300px;heigth:300px;border:solid black 1px;text-align:center;align:center;'
	><center>
	
	<div id='c1fd'
		align=center
		valign=middle
		style='display:none;position:absolute;top:0px;left:0px;border:solid black 1px;align:center;width:390px;text-align:center;height:300px;valign:middle;'>
		<center>
		<img src='./pics/esd2.png' onLoad='p0();' height=200 align=center valign=top palign=center><br>
		<a href='http://www.todotango.com/english/creadores/esd.asp' target='danma' 
			title='Enrique Santos Discépolo @ TodoTango'><b>Enrique Santos Discépolo @ Todotango</b></a>
		
		</center></div>

	<div id='c2fd'
		align=center
		valign=middle
		style='display:none;position:absolute;top:0px;left:0px;border:solid black 1px;align:center;width:390px;text-align:center;height:300px;valign:middle;'>
		<center>
		<img src='./pics/fl2.png' height=200 align=center valign=top palign=center><br>
		<a href='http://www.todotango.com/spanish/creadores/Flomuto.asp' target='CRTT' 
			title='Francisco Lomuto @ TodoTango'><b>Francisco Lomuto @ Todotango</b></a>
		
		</center></div>

	<div id='c3fd'
		align=center
		valign=middle
		style='display:none;position:absolute;top:0px;left:0px;border:solid black 1px;align:center;width:390px;text-align:center;height:300px;valign:middle;'>
		<center>
		<img src='./pics/charlo.gif' height=200 align=center valign=top palign=center><br>
		<a href='http://www.todotango.com/english/creadores/charlo.html' target='FCTT' 
			title='Charlo @ TodoTango'><b>Charlo @ Todotango</b></a>
		</center></div>
		
	<div id='c4fd'
		align=center
		valign=middle
		style='display:none;position:absolute;top:0px;left:0px;border:solid black 1px;align:center;width:390px;text-align:center;height:300px;valign:middle;'>
		<center>
		<img src='./pics/charlo.gif' height=200 align=center valign=top palign=center><br>
		<a href='http://www.todotango.com/spanish/creadores/charlo.asp' target='HMTT' 
			title='Charlo @ TodoTango'><b>Charlo @ Todotango</b></a>
		</center></div>
		
	<div id='c5fd'
		align=center
		valign=middle
		style='display:none;position:absolute;top:0px;left:0px;border:solid black 1px;align:center;width:390px;text-align:center;height:300px;valign:middle;'>
		<center>
		<img src='./pics/ggomez.gif' height=200 align=center valign=top palign=center><br>
		<a href='http://www.todotango.com/english/creadores/ggomez.asp' target='GGTT' 
			title='Graciano Gomez @ TodoTango'><b>Graciano Gomez @ Todotango</b></a>
		</center></div>

<div id='c1a' style='display:inline;width:190px;height:300px;vertical-align:middle;text-align:center;'
	vertical-align=middle><br><br><br><br>
	<img src='./pics/rp_spinner.gif' palign=middle valign=middle></div>

</center>
</div>

</center>
</table>
 
<hr width=800>
<table width=800 cellpadding=0 cellspacing=0 border=0 nborder>
<tr><td><font face=verdana size=2 color='#808080'><b><span onclick="ftt();" title='Mostra/esconde ficha técnica'>Ficha Técnica</span></b>
<tr><td><div id=ft style='display:none;font-color:gray;font-family:verdana;font-size:11px;color:gray;text-align:justify;'>
Faixa sonora: formato mp3; 
Pontos de sincronização determinados por inspecção directa com <a href='http://audacity.sourceforge.net/?lang=pt' 
	title='Audacity 1.3.7 Beta' target='aujn65'>audacity</a>; sincronização com <a href='http://flowplayer.org/'
	title='Flowplayer audio 3.2.9' target='flp345'>flowplayer (+audio)</a>. Texto e imagens retirados de 
	<a href='http://www.todotango.com' target='tt654' title='TodoTango'>TodoTango</a><br>.
	Testado em <a href='www.firefox.org' target='ff' title='Firefox 17.0.1'>Firefox</a>, 
		<a href='http://windows.microsoft.com/en-US/internet-explorer/download-ie' target='iex' title='Internet Explorer 9.0'>Internet Explorer</a>, 
		e <a href='http://www.apple.com/safari/' target='sf43' title='Safari 5.1.5'>Safari</a><!-- e Chrome-->.<input type=hidden id=ftf value=0>
</div>
</table>
<hr width=800>


<div id="fb-root"></div>
<script>

(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

</script>

<div class="fb-like" data-href="http://www.gatomilongueiro.com/1112/" 
data-send="true" 
data-width="800" 
data-show-faces="true" 
data-font="verdana"></div>
</body> 
</html>