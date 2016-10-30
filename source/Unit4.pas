unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IdFTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdExplicitTLSClientServerBase;

type
  TForm4 = class(TForm)
    ListBox1: TListBox;
    Panel1: TPanel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    IdHTTP1: TIdHTTP;
    IdFTP1: TIdFTP;
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2, Unit3, Unit6, Unit1;

{$R *.dfm}
 function wspolx(var i,x,y:integer): integer;
begin
      case i of
0: begin x:=23; y:=38; end;
1: begin x:=50; y:=17; end;
2: begin x:=512; y:=178; end;
3: begin x:=494; y:=188; end;
4: begin x:=482; y:=212; end;
5: begin x:=494; y:=220; end;
6: begin x:=523; y:=232; end;
7: begin x:=541; y:=227; end;
8: begin x:=530; y:=255; end;
9: begin x:=501; y:=255; end;
10: begin x:=483; y:=271; end;
11: begin x:=493; y:=285; end;
12: begin x:=518; y:=284; end;
13: begin x:=501; y:=318; end;
14: begin x:=515; y:=311; end;
15: begin x:=513; y:=328; end;
16: begin x:=536; y:=313; end;
17: begin x:=552; y:=327; end;
18: begin x:=527; y:=343; end;
19: begin x:=541; y:=376; end;
20: begin x:=553; y:=395; end;
21: begin x:=560; y:=363; end;
22: begin x:=577; y:=378; end;
23: begin x:=527; y:=397; end;
24: begin x:=510; y:=411; end;
25: begin x:=506; y:=436; end;
26: begin x:=526; y:=422; end;
27: begin x:=539; y:=423; end;
28: begin x:=567; y:=415; end;
29: begin x:=580; y:=413; end;
30: begin x:=600; y:=413; end;
31: begin x:=493; y:=464; end;
32: begin x:=511; y:=467; end;
33: begin x:=528; y:=468; end;
34: begin x:=552; y:=463; end;
35: begin x:=560; y:=437; end;
36: begin x:=583; y:=438; end;
37: begin x:=623; y:=432; end;
38: begin x:=620; y:=444; end;
39: begin x:=603; y:=461; end;
40: begin x:=567; y:=469; end;
41: begin x:=553; y:=481; end;
42: begin x:=534; y:=496; end;
43: begin x:=511; y:=500; end;
44: begin x:=506; y:=518; end;
45: begin x:=477; y:=529; end;
46: begin x:=554; y:=507; end;
47: begin x:=569; y:=489; end;
48: begin x:=579; y:=497; end;
49: begin x:=611; y:=484; end;
50: begin x:=632; y:=486; end;
51: begin x:=612; y:=500; end;
52: begin x:=445; y:=337; end;
53: begin x:=430; y:=341; end;
54: begin x:=413; y:=338; end;
55: begin x:=405; y:=365; end;
56: begin x:=378; y:=371; end;
57: begin x:=378; y:=390; end;
58: begin x:=409; y:=390; end;
59: begin x:=430; y:=388; end;
60: begin x:=416; y:=412; end;
61: begin x:=387; y:=412; end;
62: begin x:=434; y:=432; end;
63: begin x:=417; y:=446; end;
64: begin x:=383; y:=448; end;
65: begin x:=914; y:=298; end;
66: begin x:=913; y:=327; end;
67: begin x:=937; y:=362; end;
68: begin x:=906; y:=363; end;
69: begin x:=906; y:=393; end;
70: begin x:=929; y:=405; end;
71: begin x:=914; y:=411; end;
72: begin x:=936; y:=433; end;
73: begin x:=973; y:=433; end;
74: begin x:=991; y:=444; end;
75: begin x:=887; y:=425; end;
76: begin x:=898; y:=442; end;
77: begin x:=917; y:=448; end;
78: begin x:=964; y:=465; end;
79: begin x:=1014; y:=454; end;
80: begin x:=1000; y:=477; end;
81: begin x:=971; y:=494; end;
82: begin x:=906; y:=489; end;
83: begin x:=867; y:=460; end;
84: begin x:=867; y:=438; end;
85: begin x:=837; y:=457; end;
86: begin x:=815; y:=450; end;
87: begin x:=780; y:=456; end;
88: begin x:=768; y:=486; end;
89: begin x:=809; y:=480; end;
90: begin x:=796; y:=499; end;
91: begin x:=838; y:=483; end;
92: begin x:=827; y:=506; end;
93: begin x:=844; y:=537; end;
94: begin x:=883; y:=519; end;
95: begin x:=919; y:=521; end;
96: begin x:=959; y:=532; end;
97: begin x:=927; y:=549; end;
98: begin x:=874; y:=546; end;
99: begin x:=925; y:=576; end;
100: begin x:=947; y:=586; end;
101: begin x:=879; y:=590; end;
102: begin x:=848; y:=576; end;
103: begin x:=845; y:=601; end;
104: begin x:=845; y:=627; end;
105: begin x:=824; y:=625; end;
106: begin x:=804; y:=613; end;
107: begin x:=783; y:=611; end;
108: begin x:=794; y:=581; end;
109: begin x:=815; y:=557; end;
110: begin x:=802; y:=534; end;
111: begin x:=790; y:=526; end;
112: begin x:=774; y:=520; end;
113: begin x:=748; y:=505; end;
114: begin x:=718; y:=518; end;
115: begin x:=708; y:=533; end;
116: begin x:=675; y:=522; end;
117: begin x:=676; y:=545; end;
118: begin x:=714; y:=553; end;
119: begin x:=731; y:=540; end;
120: begin x:=754; y:=540; end;
121: begin x:=784; y:=555; end;
122: begin x:=736; y:=567; end;
123: begin x:=694; y:=563; end;
124: begin x:=742; y:=578; end;
125: begin x:=663; y:=561; end;
126: begin x:=652; y:=570; end;
127: begin x:=666; y:=580; end;
128: begin x:=713; y:=596; end;
129: begin x:=768; y:=599; end;
130: begin x:=578; y:=587; end;
131: begin x:=513; y:=591; end;
132: begin x:=541; y:=606; end;
133: begin x:=563; y:=616; end;
134: begin x:=625; y:=603; end;
135: begin x:=609; y:=627; end;
136: begin x:=675; y:=610; end;
137: begin x:=727; y:=633; end;
138: begin x:=757; y:=628; end;
139: begin x:=746; y:=663; end;
140: begin x:=799; y:=645; end;
141: begin x:=700; y:=654; end;
142: begin x:=664; y:=653; end;
143: begin x:=627; y:=653; end;
144: begin x:=592; y:=650; end;
145: begin x:=560; y:=650; end;
146: begin x:=531; y:=624; end;
147: begin x:=505; y:=616; end;
148: begin x:=591; y:=682; end;
149: begin x:=568; y:=685; end;
150: begin x:=627; y:=685; end;
151: begin x:=659; y:=691; end;
152: begin x:=706; y:=697; end;
153: begin x:=749; y:=695; end;
154: begin x:=784; y:=682; end;
155: begin x:=566; y:=715; end;
156: begin x:=597; y:=711; end;
157: begin x:=634; y:=723; end;
158: begin x:=665; y:=738; end;
159: begin x:=718; y:=721; end;
160: begin x:=743; y:=715; end;
161: begin x:=778; y:=706; end;
162: begin x:=761; y:=742; end;
163: begin x:=723; y:=757; end;
164: begin x:=684; y:=761; end;
165: begin x:=700; y:=778; end;
166: begin x:=671; y:=789; end;
167: begin x:=622; y:=745; end;
168: begin x:=622; y:=770; end;
169: begin x:=581; y:=754; end;
170: begin x:=606; y:=782; end;
171: begin x:=631; y:=810; end;
172: begin x:=665; y:=825; end;
173: begin x:=715; y:=833; end;
174: begin x:=720; y:=803; end;
175: begin x:=565; y:=784; end;
176: begin x:=603; y:=818; end;
177: begin x:=627; y:=846; end;
178: begin x:=657; y:=855; end;
179: begin x:=552; y:=808; end;
180: begin x:=587; y:=840; end;
181: begin x:=551; y:=835; end;
182: begin x:=575; y:=861; end;
183: begin x:=611; y:=869; end;
184: begin x:=638; y:=876; end;
185: begin x:=652; y:=905; end;
186: begin x:=629; y:=921; end;
187: begin x:=588; y:=906; end;
188: begin x:=553; y:=922; end;
189: begin x:=555; y:=887; end;
190: begin x:=501; y:=901; end;
191: begin x:=565; y:=937; end;
192: begin x:=520; y:=854; end;
193: begin x:=524; y:=840; end;
194: begin x:=481; y:=829; end;
195: begin x:=476; y:=879; end;
196: begin x:=420; y:=834; end;
197: begin x:=451; y:=821; end;
198: begin x:=449; y:=851; end;
199: begin x:=386; y:=839; end;
200: begin x:=353; y:=787; end;
201: begin x:=366; y:=833; end;
202: begin x:=325; y:=827; end;
203: begin x:=301; y:=856; end;
204: begin x:=335; y:=872; end;
205: begin x:=363; y:=880; end;
206: begin x:=408; y:=890; end;
207: begin x:=395; y:=912; end;
208: begin x:=295; y:=894; end;
209: begin x:=325; y:=908; end;
210: begin x:=265; y:=927; end;
211: begin x:=315; y:=942; end;
212: begin x:=342; y:=942; end;
213: begin x:=384; y:=941; end;
214: begin x:=411; y:=946; end;
215: begin x:=460; y:=931; end;
216: begin x:=463; y:=950; end;
217: begin x:=405; y:=986; end;
218: begin x:=456; y:=986; end;
219: begin x:=507; y:=988; end;
220: begin x:=527; y:=953; end;
221: begin x:=433; y:=1014; end;
222: begin x:=366; y:=978; end;
223: begin x:=362; y:=992; end;
224: begin x:=301; y:=983; end;
225: begin x:=280; y:=960; end;
226: begin x:=267; y:=992; end;
227: begin x:=273; y:=1021; end;
228: begin x:=329; y:=1030; end;
229: begin x:=305; y:=1034; end;
230: begin x:=326; y:=1055; end;
231: begin x:=371; y:=1052; end;
232: begin x:=344; y:=1078; end;
233: begin x:=390; y:=1080; end;
234: begin x:=421; y:=1047; end;
235: begin x:=494; y:=1056; end;
236: begin x:=458; y:=1073; end;
237: begin x:=496; y:=1018; end;
238: begin x:=523; y:=1033; end;
239: begin x:=656; y:=1005; end;
240: begin x:=692; y:=997; end;
241: begin x:=335; y:=1152; end;
242: begin x:=360; y:=1140; end;
243: begin x:=329; y:=1184; end;
244: begin x:=311; y:=1224; end;
245: begin x:=350; y:=1225; end;
246: begin x:=369; y:=1181; end;
247: begin x:=404; y:=1160; end;
248: begin x:=444; y:=1185; end;
249: begin x:=461; y:=1155; end;
250: begin x:=534; y:=1180; end;
251: begin x:=527; y:=1148; end;
252: begin x:=527; y:=1115; end;
253: begin x:=574; y:=1118; end;
254: begin x:=573; y:=1129; end;
255: begin x:=572; y:=1176; end;
256: begin x:=630; y:=1156; end;
257: begin x:=644; y:=1120; end;
258: begin x:=662; y:=1092; end;
259: begin x:=662; y:=1157; end;
260: begin x:=702; y:=1140; end;
261: begin x:=728; y:=1106; end;
262: begin x:=754; y:=1109; end;
263: begin x:=790; y:=1091; end;
264: begin x:=829; y:=1112; end;
265: begin x:=867; y:=1088; end;
266: begin x:=843; y:=1082; end;
267: begin x:=841; y:=1161; end;
268: begin x:=850; y:=1197; end;
269: begin x:=896; y:=1208; end;
270: begin x:=964; y:=1233; end;
271: begin x:=1024; y:=1285; end;
272: begin x:=1118; y:=1312; end;
273: begin x:=1170; y:=1252; end;
274: begin x:=1198; y:=1264; end;
275: begin x:=1212; y:=1214; end;
276: begin x:=1274; y:=1257; end;
277: begin x:=1331; y:=1276; end;
278: begin x:=1386; y:=1284; end;
279: begin x:=1346; y:=1315; end;
280: begin x:=1410; y:=1315; end;
281: begin x:=991; y:=1109; end;
282: begin x:=1007; y:=1129; end;
283: begin x:=1049; y:=1118; end;
284: begin x:=1061; y:=1145; end;
285: begin x:=1061; y:=1119; end;
286: begin x:=1352; y:=1163; end;
287: begin x:=1410; y:=1169; end;
288: begin x:=845; y:=993; end;
289: begin x:=851; y:=961; end;
290: begin x:=869; y:=907; end;
291: begin x:=1106; y:=1067; end;
292: begin x:=1107; y:=1045; end;
293: begin x:=1121; y:=1008; end;
294: begin x:=1162; y:=1002; end;
295: begin x:=1137; y:=979; end;
296: begin x:=1082; y:=994; end;
297: begin x:=1077; y:=1012; end;
298: begin x:=1096; y:=961; end;
299: begin x:=1040; y:=975; end;
300: begin x:=1043; y:=958; end;
301: begin x:=1030; y:=911; end;
302: begin x:=1003; y:=922; end;
303: begin x:=982; y:=935; end;
304: begin x:=950; y:=918; end;
305: begin x:=939; y:=896; end;
306: begin x:=958; y:=894; end;
307: begin x:=986; y:=881; end;
308: begin x:=1002; y:=871; end;
309: begin x:=954; y:=863; end;
310: begin x:=934; y:=874; end;
311: begin x:=972; y:=838; end;
312: begin x:=937; y:=838; end;
313: begin x:=913; y:=854; end;
314: begin x:=902; y:=830; end;
315: begin x:=938; y:=819; end;
316: begin x:=966; y:=817; end;
317: begin x:=858; y:=820; end;
318: begin x:=827; y:=847; end;
319: begin x:=787; y:=846; end;
320: begin x:=758; y:=846; end;
321: begin x:=759; y:=822; end;
322: begin x:=775; y:=805; end;
323: begin x:=793; y:=793; end;
324: begin x:=811; y:=816; end;
325: begin x:=818; y:=793; end;
326: begin x:=830; y:=816; end;
327: begin x:=814; y:=746; end;
328: begin x:=786; y:=738; end;
329: begin x:=801; y:=721; end;
330: begin x:=829; y:=700; end;
331: begin x:=833; y:=726; end;
332: begin x:=842; y:=746; end;
333: begin x:=863; y:=776; end;
334: begin x:=871; y:=801; end;
335: begin x:=903; y:=782; end;
336: begin x:=908; y:=807; end;
337: begin x:=944; y:=793; end;
338: begin x:=933; y:=771; end;
339: begin x:=917; y:=748; end;
340: begin x:=884; y:=744; end;
341: begin x:=862; y:=725; end;
342: begin x:=884; y:=720; end;
343: begin x:=911; y:=696; end;
344: begin x:=970; y:=761; end;
345: begin x:=954; y:=719; end;
346: begin x:=957; y:=787; end;
347: begin x:=979; y:=773; end;
348: begin x:=1002; y:=748; end;
349: begin x:=1036; y:=774; end;
350: begin x:=1028; y:=805; end;
351: begin x:=1056; y:=799; end;
352: begin x:=1055; y:=760; end;
353: begin x:=861; y:=679; end;
354: begin x:=869; y:=635; end;
355: begin x:=914; y:=606; end;
356: begin x:=905; y:=644; end;
357: begin x:=934; y:=660; end;
358: begin x:=941; y:=670; end;
359: begin x:=950; y:=623; end;
360: begin x:=973; y:=693; end;
361: begin x:=988; y:=707; end;
362: begin x:=1009; y:=672; end;
363: begin x:=988; y:=635; end;
364: begin x:=995; y:=610; end;
365: begin x:=995; y:=550; end;
366: begin x:=1025; y:=564; end;
367: begin x:=1035; y:=641; end;
368: begin x:=1055; y:=589; end;
369: begin x:=1049; y:=604; end;
370: begin x:=1071; y:=653; end;
371: begin x:=1069; y:=679; end;
372: begin x:=1055; y:=725; end;
373: begin x:=1083; y:=760; end;
374: begin x:=1080; y:=819; end;
375: begin x:=1090; y:=786; end;
376: begin x:=1111; y:=821; end;
377: begin x:=1110; y:=850; end;
378: begin x:=1088; y:=865; end;
379: begin x:=1122; y:=877; end;
380: begin x:=1183; y:=882; end;
381: begin x:=1183; y:=862; end;
382: begin x:=1172; y:=826; end;
383: begin x:=1157; y:=790; end;
384: begin x:=1146; y:=752; end;
385: begin x:=1175; y:=757; end;
386: begin x:=1153; y:=710; end;
387: begin x:=1101; y:=715; end;
388: begin x:=1101; y:=696; end;
389: begin x:=1120; y:=651; end;
390: begin x:=1118; y:=624; end;
391: begin x:=1101; y:=595; end;
392: begin x:=1079; y:=566; end;
393: begin x:=1118; y:=534; end;
394: begin x:=1124; y:=572; end;
395: begin x:=1075; y:=524; end;
396: begin x:=1025; y:=529; end;
397: begin x:=1060; y:=493; end;
398: begin x:=1087; y:=436; end;
399: begin x:=1063; y:=437; end;
400: begin x:=972; y:=374; end;
401: begin x:=1008; y:=342; end;
402: begin x:=1018; y:=363; end;
403: begin x:=1026; y:=332; end;
404: begin x:=1053; y:=309; end;
405: begin x:=1076; y:=331; end;
406: begin x:=1007; y:=301; end;
407: begin x:=989; y:=263; end;
408: begin x:=992; y:=235; end;
409: begin x:=906; y:=253; end;
410: begin x:=879; y:=221; end;
411: begin x:=927; y:=219; end;
412: begin x:=979; y:=210; end;
413: begin x:=942; y:=210; end;
414: begin x:=900; y:=163; end;
415: begin x:=910; y:=95; end;
416: begin x:=960; y:=143; end;
417: begin x:=972; y:=104; end;
418: begin x:=995; y:=33; end;
419: begin x:=1049; y:=42; end;
420: begin x:=1108; y:=50; end;
421: begin x:=1079; y:=93; end;
422: begin x:=1043; y:=90; end;
423: begin x:=1074; y:=117; end;
424: begin x:=1054; y:=151; end;
425: begin x:=1095; y:=166; end;
426: begin x:=1016; y:=213; end;
427: begin x:=1114; y:=190; end;
428: begin x:=1065; y:=224; end;
429: begin x:=1069; y:=210; end;
430: begin x:=1106; y:=232; end;
431: begin x:=1063; y:=264; end;
432: begin x:=1142; y:=309; end;
433: begin x:=1207; y:=54; end;
434: begin x:=1209; y:=139; end;
435: begin x:=1209; y:=174; end;
436: begin x:=1294; y:=26; end;
437: begin x:=1322; y:=16; end;
438: begin x:=1284; y:=92; end;
439: begin x:=1321; y:=95; end;
440: begin x:=1264; y:=168; end;
441: begin x:=1330; y:=162; end;
442: begin x:=1354; y:=149; end;
443: begin x:=1365; y:=184; end;
444: begin x:=1347; y:=188; end;
445: begin x:=1425; y:=137; end;
446: begin x:=1403; y:=203; end;
447: begin x:=1371; y:=238; end;
448: begin x:=1311; y:=218; end;
449: begin x:=1286; y:=221; end;
450: begin x:=1310; y:=240; end;
451: begin x:=1231; y:=230; end;
452: begin x:=1233; y:=263; end;
453: begin x:=1293; y:=257; end;
454: begin x:=1291; y:=291; end;
455: begin x:=1381; y:=287; end;
456: begin x:=1336; y:=322; end;
457: begin x:=1250; y:=316; end;
458: begin x:=1211; y:=317; end;
459: begin x:=1212; y:=339; end;
460: begin x:=1262; y:=353; end;
461: begin x:=1281; y:=359; end;
462: begin x:=1310; y:=362; end;
463: begin x:=1201; y:=389; end;
464: begin x:=1188; y:=413; end;
465: begin x:=1155; y:=434; end;
466: begin x:=1128; y:=434; end;
467: begin x:=1128; y:=460; end;
468: begin x:=1121; y:=488; end;
469: begin x:=1153; y:=486; end;
470: begin x:=1177; y:=464; end;
471: begin x:=1197; y:=425; end;
472: begin x:=1266; y:=394; end;
473: begin x:=1243; y:=390; end;
474: begin x:=1224; y:=462; end;
475: begin x:=1244; y:=427; end;
476: begin x:=1267; y:=451; end;
477: begin x:=1308; y:=422; end;
478: begin x:=1360; y:=403; end;
479: begin x:=1359; y:=444; end;
480: begin x:=1324; y:=481; end;
481: begin x:=1352; y:=493; end;
482: begin x:=1280; y:=488; end;
483: begin x:=1202; y:=527; end;
484: begin x:=1242; y:=540; end;
485: begin x:=1189; y:=550; end;
486: begin x:=1141; y:=524; end;
487: begin x:=1229; y:=586; end;
488: begin x:=1170; y:=586; end;
489: begin x:=1172; y:=622; end;
490: begin x:=1205; y:=611; end;
491: begin x:=1154; y:=652; end;
492: begin x:=1221; y:=649; end;
493: begin x:=1181; y:=673; end;
494: begin x:=1204; y:=638; end;
495: begin x:=1233; y:=613; end;
496: begin x:=1246; y:=637; end;
497: begin x:=1277; y:=627; end;
498: begin x:=1307; y:=584; end;
499: begin x:=1224; y:=706; end;
500: begin x:=1224; y:=735; end;
501: begin x:=1224; y:=754; end;
502: begin x:=1257; y:=769; end;
503: begin x:=1221; y:=809; end;
504: begin x:=1240; y:=836; end;
505: begin x:=1275; y:=807; end;
506: begin x:=1306; y:=780; end;
507: begin x:=1278; y:=717; end;
508: begin x:=1289; y:=744; end;
509: begin x:=1302; y:=711; end;
510: begin x:=1315; y:=665; end;
511: begin x:=1357; y:=668; end;
512: begin x:=1358; y:=686; end;
513: begin x:=1358; y:=732; end;
514: begin x:=1432; y:=705; end;
515: begin x:=1423; y:=713; end;
516: begin x:=1358; y:=796; end;
517: begin x:=1233; y:=888; end;
518: begin x:=1260; y:=871; end;
519: begin x:=1224; y:=917; end;
520: begin x:=1286; y:=857; end;
521: begin x:=1287; y:=877; end;
522: begin x:=1263; y:=928; end;
523: begin x:=1276; y:=921; end;
524: begin x:=1244; y:=982; end;
525: begin x:=1224; y:=963; end;
526: begin x:=1255; y:=1021; end;
527: begin x:=1274; y:=1047; end;
528: begin x:=1289; y:=1072; end;
529: begin x:=1294; y:=1100; end;
530: begin x:=1307; y:=1085; end;
531: begin x:=1311; y:=1105; end;
532: begin x:=1321; y:=1057; end;
533: begin x:=1312; y:=1029; end;
534: begin x:=1347; y:=1034; end;
535: begin x:=1298; y:=1001; end;
536: begin x:=1298; y:=968; end;
537: begin x:=1321; y:=952; end;
538: begin x:=1338; y:=910; end;
539: begin x:=1343; y:=887; end;
540: begin x:=1371; y:=897; end;
541: begin x:=1396; y:=919; end;
542: begin x:=1400; y:=902; end;
543: begin x:=1358; y:=855; end;
544: begin x:=1380; y:=827; end;
545: begin x:=1394; y:=862; end;
546: begin x:=1396; y:=781; end;
547: begin x:=1400; y:=756; end;
548: begin x:=1332; y:=597; end;
549: begin x:=1345; y:=621; end;
550: begin x:=1389; y:=641; end;
551: begin x:=1440; y:=654; end;
552: begin x:=1411; y:=427; end;
553: begin x:=1407; y:=503; end;
554: begin x:=1385; y:=521; end;
555: begin x:=1443; y:=485; end;
556: begin x:=1427; y:=419; end;
557: begin x:=1417; y:=350; end;
558: begin x:=1410; y:=566; end;
559: begin x:=1457; y:=603; end;
560: begin x:=1496; y:=546; end;
561: begin x:=1443; y:=608; end;
562: begin x:=1578; y:=585; end;
563: begin x:=1597; y:=530; end;
564: begin x:=1598; y:=628; end;
565: begin x:=1537; y:=669; end;
566: begin x:=1525; y:=701; end;
567: begin x:=1518; y:=732; end;
568: begin x:=1539; y:=765; end;
569: begin x:=1541; y:=746; end;
570: begin x:=1568; y:=736; end;
571: begin x:=1604; y:=493; end;
572: begin x:=1591; y:=418; end;
573: begin x:=1559; y:=416; end;
574: begin x:=1537; y:=454; end;
575: begin x:=1496; y:=375; end;
576: begin x:=1490; y:=433; end;
577: begin x:=1456; y:=323; end;
578: begin x:=1490; y:=318; end;
579: begin x:=1464; y:=288; end;
580: begin x:=1432; y:=268; end;
581: begin x:=1466; y:=209; end;
582: begin x:=1470; y:=102; end;
583: begin x:=1519; y:=70; end;
584: begin x:=1564; y:=110; end;
585: begin x:=1544; y:=160; end;
586: begin x:=1505; y:=240; end;
587: begin x:=1524; y:=217; end;
588: begin x:=1536; y:=313; end;
589: begin x:=1545; y:=285; end;
590: begin x:=1579; y:=258; end;
591: begin x:=1579; y:=314; end;
592: begin x:=1576; y:=378; end;
593: begin x:=1598; y:=378; end;
594: begin x:=1643; y:=350; end;
595: begin x:=1639; y:=319; end;
596: begin x:=1653; y:=259; end;
597: begin x:=1701; y:=259; end;
598: begin x:=1686; y:=305; end;
599: begin x:=1715; y:=312; end;
600: begin x:=1606; y:=216; end;
601: begin x:=1602; y:=175; end;
602: begin x:=1649; y:=198; end;
603: begin x:=1682; y:=70; end;
604: begin x:=1595; y:=15; end;
605: begin x:=1718; y:=189; end;
606: begin x:=1691; y:=383; end;
607: begin x:=1715; y:=392; end;
608: begin x:=1673; y:=436; end;
609: begin x:=1656; y:=510; end;
610: begin x:=1656; y:=547; end;
611: begin x:=1707; y:=591; end;
612: begin x:=1660; y:=650; end;
613: begin x:=1636; y:=672; end;
614: begin x:=1712; y:=662; end;
615: begin x:=1653; y:=697; end;
616: begin x:=1611; y:=719; end;
617: begin x:=1718; y:=711; end;
618: begin x:=1661; y:=742; end;
619: begin x:=1717; y:=728; end;
620: begin x:=1763; y:=698; end;
621: begin x:=1834; y:=735; end;
622: begin x:=1765; y:=758; end;
623: begin x:=1746; y:=804; end;
624: begin x:=1736; y:=767; end;
625: begin x:=1778; y:=795; end;
626: begin x:=1813; y:=789; end;
627: begin x:=1799; y:=831; end;
628: begin x:=1780; y:=856; end;
629: begin x:=1725; y:=841; end;
630: begin x:=1850; y:=841; end;
631: begin x:=1848; y:=865; end;
632: begin x:=1817; y:=883; end;
633: begin x:=1773; y:=877; end;
634: begin x:=1714; y:=882; end;
635: begin x:=1682; y:=873; end;
636: begin x:=1642; y:=883; end;
637: begin x:=1860; y:=912; end;
638: begin x:=1851; y:=931; end;
639: begin x:=1805; y:=931; end;
640: begin x:=1745; y:=926; end;
641: begin x:=1716; y:=952; end;
642: begin x:=1687; y:=928; end;
643: begin x:=1632; y:=934; end;
644: begin x:=1601; y:=923; end;
645: begin x:=1564; y:=910; end;
646: begin x:=1542; y:=881; end;
647: begin x:=1564; y:=939; end;
648: begin x:=1568; y:=871; end;
649: begin x:=1578; y:=967; end;
650: begin x:=1648; y:=969; end;
651: begin x:=1672; y:=959; end;
652: begin x:=1631; y:=997; end;
653: begin x:=1606; y:=1010; end;
654: begin x:=1566; y:=994; end;
655: begin x:=1568; y:=1035; end;
656: begin x:=1519; y:=1027; end;
657: begin x:=1518; y:=1002; end;
658: begin x:=1519; y:=967; end;
659: begin x:=1507; y:=900; end;
660: begin x:=1523; y:=930; end;
661: begin x:=1490; y:=937; end;
662: begin x:=1459; y:=987; end;
663: begin x:=1418; y:=960; end;
664: begin x:=1437; y:=962; end;
665: begin x:=1422; y:=995; end;
666: begin x:=1425; y:=1028; end;
667: begin x:=1463; y:=1045; end;
668: begin x:=1451; y:=1083; end;
669: begin x:=1574; y:=1091; end;
670: begin x:=1595; y:=1079; end;
671: begin x:=1679; y:=986; end;
672: begin x:=1693; y:=993; end;
673: begin x:=1770; y:=988; end;
674: begin x:=1738; y:=986; end;
675: begin x:=1744; y:=979; end;
676: begin x:=1823; y:=984; end;
677: begin x:=1872; y:=984; end;
678: begin x:=1931; y:=969; end;
679: begin x:=1682; y:=1023; end;
680: begin x:=1661; y:=1016; end;
681: begin x:=1661; y:=1034; end;
682: begin x:=1729; y:=1022; end;
683: begin x:=1759; y:=1020; end;
684: begin x:=1914; y:=1024; end;
685: begin x:=1673; y:=1071; end;
686: begin x:=1709; y:=1061; end;
687: begin x:=1664; y:=1087; end;
688: begin x:=1721; y:=1048; end;
689: begin x:=1758; y:=1045; end;
690: begin x:=1848; y:=1050; end;
691: begin x:=1660; y:=1114; end;
692: begin x:=1686; y:=1108; end;
693: begin x:=1701; y:=1076; end;
694: begin x:=1725; y:=1084; end;
695: begin x:=1754; y:=1086; end;
696: begin x:=1754; y:=1068; end;
697: begin x:=1788; y:=1081; end;
698: begin x:=1825; y:=1080; end;
699: begin x:=1886; y:=1075; end;
700: begin x:=1911; y:=1058; end;
701: begin x:=1649; y:=1145; end;
702: begin x:=1652; y:=1167; end;
703: begin x:=1673; y:=1169; end;
704: begin x:=1647; y:=1200; end;
705: begin x:=1664; y:=1203; end;
706: begin x:=1608; y:=1225; end;
707: begin x:=1650; y:=1240; end;
708: begin x:=1663; y:=1232; end;
709: begin x:=1600; y:=1241; end;
710: begin x:=1614; y:=1261; end;
711: begin x:=1665; y:=1274; end;
712: begin x:=1683; y:=1244; end;
713: begin x:=1582; y:=1272; end;
714: begin x:=1534; y:=1295; end;
715: begin x:=1504; y:=1293; end;
716: begin x:=1501; y:=1317; end;
717: begin x:=1488; y:=1307; end;
718: begin x:=1479; y:=1261; end;
719: begin x:=1462; y:=1283; end;
720: begin x:=1481; y:=1339; end;
721: begin x:=1643; y:=1291; end;
722: begin x:=1704; y:=1289; end;
723: begin x:=1721; y:=1246; end;
724: begin x:=1700; y:=1168; end;
725: begin x:=1700; y:=1183; end;
726: begin x:=1695; y:=1124; end;
727: begin x:=1710; y:=1120; end;
728: begin x:=1718; y:=1141; end;
729: begin x:=1738; y:=1183; end;
730: begin x:=1767; y:=1233; end;
731: begin x:=1745; y:=1304; end;
732: begin x:=1754; y:=1143; end;
733: begin x:=1744; y:=1119; end;
734: begin x:=1781; y:=1121; end;
735: begin x:=1808; y:=1168; end;
736: begin x:=1811; y:=1185; end;
737: begin x:=1831; y:=1258; end;
738: begin x:=1833; y:=1124; end;
739: begin x:=1865; y:=1182; end;
740: begin x:=1885; y:=1248; end;
741: begin x:=1891; y:=1271; end;
742: begin x:=1893; y:=1134; end;
743: begin x:=1922; y:=1162; end;
744: begin x:=1925; y:=1202; end;
745: begin x:=1962; y:=1245; end;
746: begin x:=1936; y:=1286; end;
747: begin x:=1941; y:=1099; end;
748: begin x:=1954; y:=1140; end;
749: begin x:=1964; y:=1205; end;
750: begin x:=1984; y:=1275; end;
751: begin x:=1956; y:=1324; end;
752: begin x:=1982; y:=1085; end;
753: begin x:=1996; y:=1176; end;
754: begin x:=2002; y:=1130; end;
755: begin x:=2007; y:=1237; end;
756: begin x:=2037; y:=1275; end;
757: begin x:=2049; y:=1109; end;
758: begin x:=2052; y:=1150; end;
759: begin x:=2034; y:=1181; end;
760: begin x:=2067; y:=1204; end;
761: begin x:=2078; y:=1267; end;
762: begin x:=2120; y:=1236; end;
763: begin x:=2189; y:=1156; end;
764: begin x:=2102; y:=1076; end;
765: begin x:=2102; y:=1103; end;
766: begin x:=2144; y:=1103; end;
767: begin x:=2144; y:=1042; end;
768: begin x:=2116; y:=1033; end;
769: begin x:=2139; y:=1000; end;
770: begin x:=2206; y:=986; end;
771: begin x:=2093; y:=870; end;
772: begin x:=2138; y:=928; end;
773: begin x:=2056; y:=767; end;
774: begin x:=1988; y:=668; end;
775: begin x:=2089; y:=671; end;
776: begin x:=1817; y:=647; end;
777: begin x:=1872; y:=718; end;
778: begin x:=1761; y:=565; end;
779: begin x:=1904; y:=538; end;
780: begin x:=1814; y:=540; end;
781: begin x:=1754; y:=464; end;
782: begin x:=1827; y:=457; end;
783: begin x:=1890; y:=428; end;
784: begin x:=1782; y:=381; end;
785: begin x:=1815; y:=333; end;
786: begin x:=1770; y:=263; end;
787: begin x:=1823; y:=215; end;
788: begin x:=1791; y:=178; end;

end;

end;
procedure TForm4.ListBox1Click(Sender: TObject);
var
c:string;
x,y,czas,i:integer;
begin
i:=(ListBox1.Itemindex+1);
wspolx(i,x,y);
    form2.image1.left:=(form2.Panel1.Height div 2)-x;
    form2.image1.top:=(form2.Panel1.Height div 2)-y;

    try
      form2.image1.canvas.Brush.color:=stringtocolor(form2.label13.Caption);
      form2.image1.Canvas.FloodFill(strtoint(form2.label11.caption),strtoint(form2.label12.caption),clblack,fsborder);
    except
    sleep(0);
  end;
  if strtoint(form2.label14.Caption)=0 then begin
        c:=colortostring(form2.image1.Canvas.Pixels[x,y]);
  if c='$00FF20FF' then c:='clFuchsia';
    if (c = 'clWhite') or (c= 'clYellow') or (c= 'clRed') or (c='clGreen') or (c='clFuchsia')
    or (c='clLime') or (c='clBlue') or (c='clAqua') or (c='clNavy') or (c='clOlive') or (c='clGray')
    or (c='clMaroon') or (c='clPurple') or (c='clTeal') then begin

       form2.memo2.lines.clear;
   form1.client.Socket.SendText('ACO-'+LowerCase(c));
    sleep(100);
    czas:=0;
    repeat
      form2.memo2.lines.Text:=form1.client.Socket.ReceiveText;
      sleep(100);
      czas:=czas+1;
      if czas=60 then begin
        showmessage('Up造n像 czas 蕨dania.');
        application.terminate;
      end;
    until
      form2.memo2.Lines.Strings[0]<>'';

      label4.caption:=form2.memo2.Lines.strings[0];
      form3.posiadacz.caption:=form2.memo2.Lines.strings[0];
      form3.numer.caption:=inttostr(listbox1.itemindex+1);
      form2.label11.Caption:=inttostr(x);
      form2.label12.caption:=inttostr(y);
      form2.image1.Canvas.Brush.Color:=clactiveborder;
      form2.label13.Caption:=colortostring(form2.image1.Canvas.Pixels[x,y]);
      form2.image1.Canvas.FloodFill(x,y,clblack,fsborder);
    end;

end;
end;
procedure TForm4.Button1Click(Sender: TObject);
var
i,x,y,czas:integer;
begin
i:=listbox1.ItemIndex+1;
if label4.caption='brak' then begin
  ladowanie.show;
  ladowanie.refresh;

    form1.client.Socket.SendText('MAPC-'+inttostr(i)+':'+lowercase(colortostring(form2.kolor.Color)));
    sleep(100);
    czas:=0;
    repeat
      sleep(100);
      czas:=czas+1;
      if czas=60 then begin
          showmessage('Up造n像 limit czasu 蕨dania.');
          halt;
          application.terminate;
      end;
    until
  form1.client.socket.receivetext='DONE';

   memo1.lines.clear;
   form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.Color)));
    sleep(100);
    czas:=0;
    repeat
      memo1.lines.Text:=form1.client.Socket.ReceiveText;
      sleep(100);
      czas:=czas+1;
      if czas=60 then begin
          showmessage('Up造n像 limit czasu 蕨dania.');
          halt;
          application.terminate;
      end;
    until
      memo1.Lines.Strings[0]<>'';

  memo1.Lines.Delete(1);
  memo1.lines.add('1');

        form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.Color))+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up造n像 limit czasu 蕨dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

form2.Button1Click(button1);


  ladowanie.hide;
  button1.enabled:=false;
end else
showmessage('Nie mo瞠sz zaj寞 tego terenu.');
end;

end.
