//<continuation number="1710">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma00_000.nss_MAIN
{
	$TITLE_NOW=" �������������¡��������� ";

	//��e�ޥ����ٌ���
	Conquest("nss/ma00_000.nss","ma00_fire",true);
	Conquest("nss/ma00_000.nss","ma00_fireDelete",true);
	Conquest("nss/ma00_000.nss","ma00_fireProcess",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAuto",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAutoProcess",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAutoDelete",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg001_��a_02=true;
	#bg001_��a_03=true;
	#bg002_��a_03=true;
	#bg003_�Ĥ�Ұ_02=true;
	#bg004_�ɤӤ���a_02=true;
	#bg002_��a_02=true;
	#bg002_��b_03=true;
	#bg004_�ɤӤ���b_03=true;

	#ev001_�y�Ǻ��¼�����`����=true;
	#ev002_�y�Ǻ��¼�����`����=true;
	#ev101_�ץ��`��_a=true;
	#ev101_�ץ��`��_b=true;
	#ev101_�ץ��`��_c=true;
	#ev301_�y�Ǻť���å���=true;
	#ev302_94ʽ���=true;
	#ev505_�����_�M܊=true;
	#ev952_�y�Ǻŵǈ�=true;
//�룺extra����ӛ��`�ө`����ˤĤ���ʹ�ä��Ƥ��ޤ���09/08/18��
	#ev901_�y�Ǻ�����ʧ��С����_a=true;
	#ev901_�y�Ǻ�����ʧ��С����_b=true;
	#ev901_�y�Ǻ�����ʧ��С����_c=true;
	#ev901_�y�Ǻ�����ʧ��С����_d=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�y�Ǻ�=true;
	#voice_on_����������=true;
	#voice_on_������Ů��=true;

	#av_�ũ�ʽָ�]���T=true;
	#av_����ʽ�o�T��=true;
	#av_����ʽָ�]���T=true;
	#av_�y�Ǻ�=true;

//�룺���Y��Ǥ���ӛ����
	if(#��׉���K�� == true && #Ӣ�۾��K�� == true){
		#ħ������� = true;
		$ħ������� = true;
	}

	if(#��׉���K�� == true){$��׉���K�� = true;}

	$PreGameName = $GameName;

	$GameName = "ma01_001.nss";

}

scene ma00_000.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	#voice_on_����������=true;
	#voice_on_������Ů��=true;

	CreateColor("�\Ļ��", 15000, 0, 0, 1024, 576, "Black");

	Fade("@ð�^�ۥ磻��", 1000, 0, null, true);
	Request("@ð�^�ۥ磻��", UnLock);
	Delete("@ð�^�ۥ磻��");

	CreateTextureEX("�}����10", 5000, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	Fade("�}����10", 0, 1000, null, true);


	Fade("�\Ļ��", 1000, 0, null, true);



//��Ϧ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����һ�յ���̨��������Ļ��

����һĻ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(500);

//���Ĥ�Ұ��Ϧ
	CreateTextureSP("����20", 3000, -1024, Middle, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	Request("����20", Smoothing);

	CreateTextureSP("����30", 2500, 0, 0, "cg/bg/bg003_�Ĥ�Ұ_02.jpg");

	CreateSE("SE01","se��Ȼ_�L_Ұԭ01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	Move("����20", 60000, 0, -200, null, false);
	FadeDelete("�}����10", 3000, false);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��һ��С����ǰ�Ļ�ԭ��

����ʮ���������������װ����ǹ֧�;�����ʿ��
�ųɶ��С�
  ��ս������ȴ���������˿־�ľ������Σ�
�ڻ��Ϧ����ɫ���£�����һ��ɱ����

������ǰ�ߣ�һ���������ϣ������������׵���ʿ��
�����š����ص����ף�˶����̫���������µ�ƾһ�
������ʤ������ȫ��������
  �������������ѹ�ȸУ��ޱ���׳����˵����һ��ʵ��

���˿̣���������������𡣷����������ģ�
��������ʿ����Ҳ�Ƕ���֮�ˡ�
����������İ���
���ܲ������������ͳ�ʾ��ӵ����졣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("����20", 1000, 0, null, true);
	Delete("����20");

	SetNwC("cg/fw/nw����L.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000010e237">
����֪�������������Ų���ֹ����ҵļ�����
����ʵ�ѷ��˽�������á�����

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000020e237">
�����򣬾�̤ƽ���壡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 5000, "Black");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������ڣ����ڴ�����ڶ³�Χǽ����Ⱥ��
����ס��

�����˶���⹫������壬Ҳ������Ϊ�ǽ�������в��
��Ȼ�����ֻ������١�

������ǽ�в������͵ģ��Ƿ�ŭ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE10","se����_����_����᤯01_L");
	MusicStart("SE10",2000,700,0,1000,null,true);

	Fade("�}ɫ100", 100, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041]
��
����������Ұ����
������̰Ѱ���⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ100", 100, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0042]
�����������������³��ڣ�
��ȴ��������ؽ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ100", 100, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0043]
��
�����������ޡ�
�����������ޡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 100, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0044]
������Ҫ��������ҧ��㣬������

�������ޡ�
������˳ƺ��ľ��Ӽ������죬�����ظ�����ͬ�Ĺ��档

����������һӦ������˽����������������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����档��һ�Ρ�<k>
{	SetVolume("SE01", 200, 0, null);
	SetVolume("SE10", 200, 0, null);
	StL(2600,@0,@0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	OnSE("se���L_�|��_������01",1000);}
�����ͬʱ��ʿ���ǵ�ǹ��ָ���˴��䡣

������ֹͣ���ֲ��Ĳ������ӡ�
����ʹ��ˣ����˵ĵ�����δ��ɢ��

��������ɱ�⡣
�������ĵ��⡣

{	DeleteStL(300,false);}
��΢���ƽ�⣬��Ȼ�����ˡ�
��������ԭ��ȴ�Ǿ�������ķ���ָ�
����֮ǰ�������˱�ı仯��

�����˵ı�����һ���������У��漴��Ϊ���롣
���Ӻ󷽣���һ����������ǰ��

���������С�
���������������ʿ���ˡ�
��������Ҫ�����ᱻɱ�ġ�
��������ʿ���ˣ�

����ֹ֮���������ڶ���
���ڴˣ���λ����ֻ����һ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000030e286">
�����ɴ���չˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateSE("SE10","se����_����_�z�i��02_L");
	MusicStart("SE10",500,800,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������ǰȥ�������ھ���֮ǰ��

������һ��������ʿ��
������в�����ʿ������ͬ��

����˵�кβ�֮ͬ�����������׵�״̬��
��ʩ��ϸ��ά�������걸�Ļ��ܿ�����Ϊ����
���Ƿ��ò��ˣ�����������ˣ����ܶ񻯡�

��ֻ����˲��
���������ӵ�������������ߵĲ��

{	SetVolume("SE10", 200, 0, null);}
�������ߣ���������ǰһ����
�������֣�ȴ����һֻС�ֽ���ץס�ˡ�

��һ��Ů����
��һ�Բ�����ֻ��ץ����ֻ�֣����ɿ���

����Ҳ��Ĭ�ˣ�����Ů����
�������һֻ�֣����ḧ������ͷ��

��Ȼ�󣬷ſ�����ֻ���������֡�

��Ů����˫ͫʪ��
����Ȼ�����㣬��������ǰ��ȥ��

�������е����ˣ���Χ��֮�ƣ������������ƴ�����
��ȴ��һ�ǻ�����ϣ��������쵥ǹƥ������ǰȥ��
ӭ�������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����100", 500, InRight, -330, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");

//������ʽָ�]���T�Ⱦũ�ʽָ�]���T

	CreateSE("SE01","se��Ȼ_�L_Ұԭ01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	CreateTextureSP("�}STC600", 600, 182, InBottom, "cg/st/3d����ʽָ�]��_����_ͨ��.png");

	Move("�}����100", 5000, @+150, @0, DxlAuto, false);
	Move("�}STC600", 5000, @-100, @0, DxlAuto, false);

	Fade("����30", 500, 0, null, true);

	Wait(1500);

	PrintGO("�ϱ���", 15000);
	CreateTextureSP("�}����200", 300, InLeft, -405, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");

	CreateTextureSP("�}STC400", 400, 242, InBottom, "cg/st/3d�ũ�ʽָ�]��_����_ͨ��.png");

	Move("�}STC400", 5000, @+100, @0, DxlAuto, false);
	Move("�}����200", 5000, @-150, @0, DxlAuto, false);

	FadeDelete("�ϱ���", 500, true);

	Wait(1500);

	PrintGO("�ϱ���", 15000);
	CreateTextureSP("����30", 100, Center, 0, "cg/bg/bg003_�Ĥ�Ұ_02.jpg");

	StL(500,@0,@0,"cg/st/3d����ʽָ�]��_����_ͨ��.png");
	StR(600,@0,@0,"cg/st/3d�ũ�ʽָ�]��_����_ͨ��.png");
	FadeStA(0,false);


	FadeDelete("�ϱ���", 500, true);




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����������֮�䣬���˶��š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000040e286">
����������������������ӡ���

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000050e237">
��ֻ�Ƕ�������˾��ʾ������ѡ�
��ԫ����������<RUBY text="��">ԭ</RUBY>��������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000060e286">
����������
����˵Ҫ�Ź����ӣ����Բ��ٰɡ���

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000070e237">
��ֻҪ���������ˣ��Ͳ��Դ������
���������ԡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000080e286">
����˱�á�
��Ȼ�󡭡�������Ī�ǣ������������ԣ���

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000090e286">
������������ͬ�鲻�Ǹ����𡣡�

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000100e237">
��Ϊ�Σ��ѵ������ֱ�Ҫ����

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000110e286">
��������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000120e237">
������ȥ�����Ե��˶Ծ���δ�Թ�����֮��
Ϊ���ء�
���治�ɣ��ҿɲ���������������������
ǰ����������

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000130e237">
������������������ɡ�
������������֮�ˣ�
��ĩ��֮�̲���ӵ��˿����������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000140e286">
������Ŷ������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000150e237">
����������������װ���Ѿ��˵���˫����
���޷�ʵ�ֵĳ̶��ˡ�
���ڵ�����̫�������ɡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000160e286">
��������������ĺ���׳�ﰡ�����ӡ�
��ĳ����ëС�ӣ�����Խ��Խ�ܴ��ˡ���

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000170e286">
�����Ҿ͹��������������Ϊڤ��·�ϵ����
����׼����������ˡ���

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000180e237">
��������������Ŀ����Ұ���ԫ����
���������������Ƶ��Դ����¾Ʋˣ���������
�Ľ����ҿ��Ǵ����ڿ�ʼ���ڴ��ò����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SoundPlay("@mbgm09",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������Ϊ���ӵĲ������죬�ͱ�����ԫ����������ʿ��
��ӵ�о�Ե�Ķ��˾ʹ��ж϶Ի���ͬʱ�γ�̫����

��������ʿ�����׷���ס������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);
	CreateTextureSP("�}����100", 100, InLeft, -405, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");

	StC(500,@-150,@0,"cg/st/3d����ʽָ�]��_����_ͨ��.png");
	FadeStC(0,true);

	FadeDelete("�ϱ���", 300, true);

//������ʽ���ж�
	StC(1000,@-150,@ 0,"cg/st/3d����ʽָ�]��_����_���Lb.png");

	Wait(200);

	OnSE("se���L_����_������01",1000);
	FadeStC(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��������������ʿ�������ӣ�����ָ��ǰ����
����ӭս׼����
������һ����ɱ����ɱ���˵����۽��Ρ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}���ӂ�", 1200);

	Delete("�}����*");

	CreateTextureSP("�}����100", 100, InRight, -330, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	StC(500,@+150,@0,"cg/st/3d�ũ�ʽָ�]��_����_ͨ��.png");
	FadeStC(0,true);

	Fade("�}���ӂ�", 300, 0, null, true);

//���ũ�ʽ���϶�
	StC(1000,@150,@0,"cg/st/3d�ũ�ʽָ�]��_����_���La.png");

	Wait(200);

	OnSE("se���L_����_������01",1000);
	FadeStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��������������ʿ����ԫ��������������ͷ��
�ڳ���ս���ơ�
������һ�����ϣ��������˵��׵����Ρ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}ԫҊ��", 1200);
	Delete("�}����*");

/*
	CreateTextureSP("����30", 10, Center, 0, "cg/bg/bg003_�Ĥ�Ұ_02.jpg");
	StL(50,@-50,@0,"cg/st/3d����ʽָ�]��_����_���Lb.png");
	StR(60,@+50,@0,"cg/st/3d�ũ�ʽָ�]��_����_���La.png");
	FadeStA(0,true);
*/

	CreateWindow("windowup", 1500, 0, 0, 1024, 288, false);
	SetAlias("windowup","windowup");
	CreateTextureSP("windowup/�}BG100", 1500, 0, Middle, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	SetShade("windowup/�}BG100", MEDIUM);
	CreateTextureEX("windowup/�}st100", 1500, 0, 0, "cg/st/3d����ʽָ�]��_����_���Lb.png");
	Request("windowup/�}st100", Smoothing);
	Zoom("windowup/�}st100", 0, 1200, 1200, null, true);



	CreateWindow("windowdown", 1500, 0, 288, 1024, 288, false);
	SetAlias("windowdown","windowdown");
	CreateTextureSP("windowdown/�}BG200", 1500, -1024, 188, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	SetShade("windowdown/�}BG200", MEDIUM);
	CreateTextureEX("windowdown/�}st200", 1500, 441, 242, "cg/st/3d�ũ�ʽָ�]��_����_���La.png");
	Request("windowdown/�}st200", Smoothing);
	Zoom("windowdown/�}st200", 0, 1200, 1200, null, true);

	Move("windowup/�}st100", 0, @-100, @0, null, true);
	Move("windowdown/�}st200", 0, @+100, @0, null, true);

	Move("windowup/�}st100", 500, @+100, @0, Dxl1, false);
	Move("windowdown/�}st200", 500, @-100, @0, Dxl1, false);
	Fade("windowup/�}st100",300,1000,null,false);
	Fade("windowdown/�}st200",300,1000,null,false);

	Fade("�}ԫҊ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����˶�����
�����������ˡ�

��ʱ��ͽȻ����������

�������ǵ����ľ��Ǻ�ˮ��
�������еĴ������Ҳ������Ȼע���ź���ǰ�׵ľ�����

�����ܿ죬һС������׼ȷ���쵽�˾�ֹ�����塣
˼����ʤ���Ľ�֣�������Ϣ������

 ������������˭����ͼ���Զ��׼���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateEffect("�}����", 5000, 0, 0, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);

	Delete("�}����*");
	Delete("windowup/*");
	Delete("windowdown/*");
	Delete("windowup*");
	Delete("windowdown");

	DeleteStA(0,true);


	Fade("�}���ӂ�", 0, 1000, null, true);
	Fade("�}����", 300, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0131]
������ƽ�ٵ����ӣ���׼�Ŷ��ֺ�����ͻ�̡�
  �ڴ�����������ն�����߾ٵ����Ķ��ද������
���⡣Ϊ�ȵз���ռ�Ȼ�����˵��ͻ���������ѡ��

�����ң��Ժ������׷���֮�ˣ�����Ψ�����Ը��ǵ�
�ؽڲ�λ������������֮���������ʺ���Χ�Ŀ�϶��
������ͻ���˴���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ԫҊ��", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0132]
������ԫ�������ٹ�ͷ��ָ�Է��׼����˴�ͬ��Ҳ
�������޷������Ŀ�϶����ԫ�������ƣ�����̫��
����ŵ�ն�£���ɻ��в���ͷ���ͼ��֮��Ŀ�϶��

  ����ն��������Ԥ���������Եб���ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("�}����", 300, 1000, null, true);

/*
	CreatePlainSP("���ϱ���", 15000);
	CreateTextureSP("������100", 1000, Center, Middle, "cg/bg/bg003_�Ĥ�Ұ_02.jpg");

	StL(1500,@-100,@0,"cg/st/3d����ʽָ�]��_����_���Lb.png");
	StR(1600,@+100,@0,"cg/st/3d�ũ�ʽָ�]��_����_���La.png");
	FadeStA(0,true);

	Fade("�}����", 0, 0, null, true);
	FadeDelete("���ϱ���", 300, true);
*/


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0133]
����ˣ��������ɶ��Ѿ����˽�����ʽ��
��Ȼ��������ȴ����˿������ͽ��ʱ�����š�

���������������˲�������Ͻ���׼���˷�����
��˫�����Ե���Ҳ�д�׼����������ɻ�

  ���������޽��죬���ӳ�������
��ԫ��ֻ������Ť�������ɶ���Ƿ��У�
��������������֮ǰն�£�ʤ��������

  ���������ߣ�ԫ�����п�������
�������˺�һ���ܿ�����������������ԭλ��ɴ�ɱ�޵С�

��������ʹ����ɱ���ܷ�Ҳ�ػ��Ա�ɱ��
��˫�������������ͼ���ʶ��޷�������ս�����š�

���˷����ƣ�����֮��ʤ���������������໥����֮�����

��ԫ�������ӣ����������ά���Ž���һ��һ��
���ȡ�����������ƣ������Ź�����˿��ϸ΢�仯��
�������������š�
��������ˣ���ֲ��¡�

������������Ĵ�����󸺵����Բ����ԡ�
�����Ͽ�̶ȵ�ͬ�����߸�˿���ļ�Ϫ��֮�ϡ�

  ����һ�������ľ������Ʊ�����
������ʱ����һ���������д棬
���������׼�����֮��ʩ�Խ�����ʤ�߼�����

  �����죬���ӡ�
�������ߣ�ԫ����

�����磬���˽�����ʤ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	CreatePlainSP("���ϱ���", 15000);

	DeleteStA(0,true);
	Delete("������*");

	Fade("�}���ӂ�", 0, 1000, null, true);
	Fade("�}ԫҊ��", 0, 0, null, true);

	Fade("�}����", 300, 0, null, true);


	SetNwR("cg/fw/nw����L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000190e237">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ԫҊ��", 300, 1000, null, true);
	Fade("�}���ӂ�", 0, 0, null, true);

	SetNwL("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0141]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000200e286">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}���ӂ�", 0, 1000, null, true);
	Fade("�}ԫҊ��", 300, 0, null, true);

	SetNwR("cg/fw/nw����L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0142]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000210e237">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	CreateTextureSP("�}����100", 100, InRight, -330, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");

	StC(1000,@+150,@0,"cg/st/3d�ũ�ʽָ�]��_����_���La.png");
	FadeStC(0,true);

	FadeDelete("�ϱ���", 300, true);

	Move("@StC*", 300, @+10, @+5, null, false);

	SetNwL("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0143]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000220e286">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	PrintGO("�ϱ���", 15000);

	CreateTextureSP("����30", 100, Center, 0, "cg/bg/bg003_�Ĥ�Ұ_02.jpg");

	CreateWindow("windowleft", 1500, 0, 0, 700, 1000, false);
	SetAlias("windowleft","windowleft");
	Rotate("windowleft", 0, @0, @0, @-10, null,true);
	Move("windowleft", 0, @-170, @-200, null, true);
	CreateTextureSP("windowleft/�}BG100", 1500, 0, Middle, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	CreateTextureSP("windowleft/�}st100", 1500, -30, InBottom, "cg/st/3d����ʽָ�]��_����_���Lb.png");
	CreateTextureSP("�}win����100", 1200, -824, -200, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	CreateTextureSP("�}winst100", 1200, 460, InBottom, "cg/st/3d�ũ�ʽָ�]��_����_���La.png");
	Move("�}winst100", 0, @0, @+30, null, true);


	FadeDelete("�ϱ���", 300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������Ĳ��쿪ʼ���֡�

���Ա�����ֵ׳������ӣ�ԫ����Ϊ�곤��
��������ʵ�е�˥���Ƚ������䡣
�����������Ȼ���󣬵�ȷʵ���ڡ�

�����������ӡ�
��ս���Ľ��Ÿ����������д��һ����

��ԫ���ս�����ʽ˥�����׼��ڵ���֮�°ɡ�
�������������������ˣ�Ψ��Ǭ��һ����
��������նɱ���ӡ�

  �Բ��ض��ԣ�������ǰ�������Ķ�ע��
���������±�ʿ����ǹƥ������������ʿ��
û��΢����и֮ɫ�������������յ���˾��������ͽ��

  ֻ�����ɷ���ס�Ա�������ðʧ������
����������ػ���ɻ�ʤ��

 ������ԫ���������ѡ�

������������
��������������

�����Կ��������������ƽ�����龰��
��Ȼ��ˮ��֮�£�ʤ����ܱ���
�������������ƽ��������б��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateEffect("�}����", 5000, 0, 0, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Delete("windowleft/*");
	Delete("windowleft");
	Delete("�}win����100");
	Delete("�}winst100");


	FadeDelete("�}����", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��ʱ��������š�
��ս����һƬ�ྲ��ӭ���վ֡�

  ��������������̬֮�ˣ����������ҡ�
�������أ�ϥ������Ӵ�

  ����ս���仯��ʼ���ʣ�һ����ʿ����Ц��
�����ڴ��ߡ�
��ô�Ҹ��������ǻ�û��˿���������
������񣬻�δ��

��������ˣ�Ҳ���Ǹе��˲����ȵķ�Χ��
����˭���ǹ�����ػ���һ������ʿ���ˡ�

������������һ���ļ���Ҳδ����֪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("����1000", 15000, Center, 0, "cg/bg/bg003_�Ĥ�Ұ_02.jpg");
	Delete("����30");

	CreateWindow("windowleft", 1500, 0, 0, 700, 1000, false);
	SetAlias("windowleft","windowleft");
	Rotate("windowleft", 0, @0, @0, @-10, null,true);
	Move("windowleft", 0, @-170, @-200, null, true);
	CreateTextureSP("windowleft/�}BG100", 1500, 0, Middle, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	CreateTextureSP("windowleft/�}st100", 1500, 0, InBottom, "cg/st/3d����ʽָ�]��_����_���Lb.png");
	CreateTextureSP("�}win����100", 1200, -824, -200, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	CreateTextureSP("�}winst100", 1200, 460, InBottom, "cg/st/3d�ũ�ʽָ�]��_����_���La.png");

	FadeDelete("����1000",300,true);

	Move("�}win����100", 1000, @-200, @0, Dxl1, false);
	OnSE("se����_����_�᤺����01",1000);
	Move("�}winst100", 1000, @-250, @0, Dxl1, false);
	Move("windowleft", 500, @-1000, @0, null, true);




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0161]
��������ԫ���������ֳ�ʤ����
�����Ŵ��ص���Ϣ����������ǰ��������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("windowleft/*");
	Delete("windowleft");
	Delete("�}win����100");
	Delete("�}winst100");

	CreateTextureSP("�}����100", 100, InLeft, -405, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");

	StC(1000,@-150,@0,"cg/st/3d����ʽָ�]��_����_���Lb.png");
	FadeStC(0,true);

	Move("�}����100", 200, @-100, @0, null, false);
	Move("@StC*", 300, @+100, @0, Dxl1, false);

	OnSE("se����_����_�᤺����01",1000);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0162]
���������ϡ�
��û��һ˲���ɣ������޵�����������Ӧ��

������ʤ�����ڴ˿̾�����

����Ȼ����©��ԫ�����ƵĿ����ԣ������֮һ
��û�У�����˵����������Ҳֻ��˳����°��ˡ�
�����н�����ն�����ܹ���ֻ������л���
һ�����߱���������ͻ�̷�����������Ŀ�ꡣ

  �ؽ���ˡ�
�����ˣ������Ѷ�������������

������ǰ��Ļ����������ۡ�

�����硪��
��էһ������Ϊնɱ��ԫ���ٶ�����ʵ�Ǹ����ӡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CreateTextureSP("�}����100", 100, InRight, -330, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");


	StC(1000,@+50,@0,"cg/st/3d�ũ�ʽָ�]��_����_���La.png");
	FadeStC(0,true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	OnSE("se���L_����_������02",1000);

//���ũ�ʽ�����|����
	StC(1000,@+50,@0,"cg/st/3d�ũ�ʽָ�]��_����_���Lb.png");
	FadeStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����Ӧ��ǰ���µ�̫����ת������
����ֵ��˵���Ҹ���������µ����ơ�

���｣�Ͽ��Ľ��Ρ�

������ն�Ļ���Ƶ����˺�
����׽���϶���̶��ͳ�����һ����

������<RUBY text="����">��Ϣ</RUBY>֮����

���｣�Ͽ���Ŀ������Ҹ�£����߿�䡪��
���׷����ı���֮����
���ڶ�������ʧ�ܶ�����֮ǰ�������������ء�

  ���������֮�ˣ���һ��Ԥ��֮��֮�ˡ�
��˭���Ȼ�������������

�������˷�թ������ͷ��ʼ׼����
�������佫���Ӷ�����ʶ�ơ�
��������Ͷ��·���ϱ�ԫ����
������������·ʱ�Ż�ʹ�õ�Ȧ�ס�

��˲��һ������ʹ����Ľ���޷��رܣ�
Ψ�����һս�������䡣��ͷ�����Ժ���

  ɲ��֮�䣬ս��������ɡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����200", 2000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	SetVolume("SE*", 500, 0, null);


	OnSE("se����_����_���S01",1000);
	Move("@StC*", 100, @-200, @0, Dxl1, false);
	DeleteStC(200, false);
	Wait(100);

	Fade("�}����200", 100, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����һ�Σ�ԫ��������ǰ��������
�������｣�Ͽ���̫����

��ʤ���Ѷ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����֤��塣
	CreateColor("�\Ļ��", 3000, 0, 0, 1024, 576, "Black");
	Fade("�\Ļ��", 0, 0, null, true);
	Fade("�\Ļ��", 200, 1000, null, true);
	Delete("�}����200");

	CreateColor("�\Ļ��", 10000, 0, 0, 1024, 576, "Black");
	Fade("�\Ļ��", 0, 0, null, true);

	CreateColor("��Ļ��", 5000, 0, 0, 1024, 576, "White");
	Request("��Ļ��", AddRender);
	Fade("��Ļ��", 0, 0, null, true);

	SL_centerin(@0,@-100,1500);

	OnSE("se���L_����_�����02",1000);
	SL_centerinfade2(10);

//	Wait(500);


	Fade("��Ļ��", 100, 1000, null, true);
	OnSE("se���L_����_���̤���01",1000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg003_�Ĥ�Ұ_02.jpg");

	Fade("��Ļ��", 500, 0, null, false);

	Fade("�\Ļ��", 1500, 1000, null, false);
	Wait(1200);

//	SL_Delete();

	DeleteStR(0,true);
	DeleteStL(0,true);
	Delete("�\Ļ��");
	Delete("��Ļ��");
	FadeDelete("�\Ļ��", 1000,true);
	SetNwC("cg/fw/nw����.png");

	SetVolume("@mbgm09", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000230e286">
������������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000240e237">
������������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000250e286">
���������ӡ�����

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000260e237">
���ǡ��Ǻǡ����ǺǺǡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000270e286">
������������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000280e237">
���㱾����ʤ�㣬
�����Ҳ���ʤ�����ӡ���

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000290e237">
���ο�������롣��

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000300e286">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SL_centerdam(@0,@0,1600);

//��Ѫ
	OnSE("se����_Ѫ_�����01",1000);
	SL_centerdamfade2(100);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������ԫ�����У������ɫ������
�����˼䷢���˲ҽС�

��ԫ����̫����δ��ʩչ���｣�Ͽ�֮������
�����ӵ�һ����Ư���عᴩ��ԫ���ĺ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����L.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000310e237">
�����������þ���ͬ���ھ�Ҳ�ա���

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000320e237">
������������ʹ��������ʽ������ν��
�����ж�֮ʱ����ֻ����һ���¡���
�䴩��ĺ�������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000330e286">
������������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000340e237">
����ȴ��ͬ����
����Ҫ�õ�ʤ������ڤ;�����
��ŪЩС��Ϸ����

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000350e237">
�����ԲŻ�ӭ���Ɐ�ҵĽ�֡���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000360e286">
��������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000370e237">
�����ɡ���

//���������礦��礦
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000380e237">
�����������޵��佫���������һ����
���ڴ�Ԫ˧�������Ϲ��������£�
���֮����ͳһ��ҵ�ؽ���ɡ���

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000390e237">
������ؽ��ɾͣ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000400e286">
���ա��졭������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000410e237">
��������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000420e286">
�����С����Բ��������£�
�����Ҳ���У��ڶ�־ʿ����

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/ma00/0000430e286">
���������������������ٻ������һ�죡��

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000440e237">
���Բ�֮���������ǵ������Ϸ��
����Щ�������ֻ�ᱳ������ҥ����֮����
��ֵһ�ᡣ��

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000450e237">
��ԫ����
�����Ϊ��ӭ����Щ�˵ĵ�����
�úðѵ�����ɨ��ɨ�ɾ��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����500", 10000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	CreateColorEX("�}ɫ500", 15000, "White");
	SL_rightdam(@0,@0,1600);

	OnSE("se���L_����_�����02",1000);
	Fade("�}����500", 100, 1000, null, true);
	Fade("�}ɫ500", 100, 1000, null, true);
	Delete("�}����500");

	FadeDelete("�}ɫ500", 500, false);
//��������`��
	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	SL_rightdamfade(10);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��˵�գ����Ӱγ�������������ս���ߵ��׼���<k>
{	OnSE("se����_�n��_ܞ��02",1000);}
��������ԫ������������壬���Ŷ��쵹�¡�

��������һ�еĴ��ˣ�����������
��ֻ�ǽ�Ӳ�أ�����������������ֻ�Ӵ����գ�
ȴ�������˵��佫����֮�ϡ�

�������ԣ������ӿ��˷�ɧ���ľ�������֮���߳�
һ��������ʿ���������ؽӹ��ӳ�������׼���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SL_Delete();
	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000460e030">
�����ɵ���Ư������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000470e237">
�����΢������Ĺ�������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000480e030">
���ǡ������ӵ��¡�
��������δ��á���

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000490e237">
��֮ǰ˵����
��ֻҪ����ԫ�����Ͳ�׷�����ӡ���

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000500e030">
���ǡ���

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000510e237">
���Ǹ����ӣ�<RUBY text="����">����</RUBY>ԫ�����𣿡�

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000520e030">
����������
����δ��������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000530e237">
���Ǿ�û�취�ˡ�����

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000540e030">
��������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000550e237">
�����ѵ���ѿ�����������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000560e030">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se����_����_�֒B��01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������˶ӳ�ּ���������ʿ��������󷽷����źš�
�������źţ�һ��ʿ����Я���ĺ��ݷŵ���ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������ؐ�ۤ�۩`��
//���Z��
	CreateSE("SE01","se����_����_��������01");
	OnSE("se����_�S��_����ؐ",1000);

	Wait(500);
	MusicStart("SE01",1000,1000,0,1000,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��׳�����������졣
��ʿ������Ӧ�������ź���

{	OnSE("se���L_�|��_�}��������01",1000);}
��ǹ�ڷ���һ�£�����ǰ�������ӵ��ȥ��
��ֱ����ʱ�����͵Ĵ��˲Żع�����
�����漴������ֻš�

  ��������ʲô���Լ��ֻ�������
�����ڻ�Ȼ����

���Ƿ����û�б�������

���������ǵڶ�Ļ��
��С��ׯ�ı��磬��ʼ���ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}ɫ100", 15000, "Black");
	FadeDelete("�ϱ���", 1000, true);


//��Ϧ�գ�
	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg001_��a_02.jpg");


//���|�������Q

	CreateSE("SE01","se����_����_�ϑ�01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se����_����_���Q01");
	MusicStart("SE02",1500,500,0,1000,null,true);


	Fade("�}ɫ100", 1000, 0, null, true);

	SoundPlay("@mbgm36",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������װ�걸��ѵ�����ص�ְҵʿ�����ԣ�
�ⳡս����ֹ��ͬ���ԣ���ֱ����������
��������ж�Զ��Ұ�޳ٶۣ�
����ڿֻ�֮�У������Ǿ�ʧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��ʿ����׼���Ĵ���ɢ�Ĵ��˺������
�������鼹׵�������������ĵ��£�
һ�߳�ҭ����Ѫ��һ�������

��ʿ������������������Ĵ��˺��ԡ�
��������������ʯ���ը����ͷ����
�ϸ��޷����Ե�˻��������

  ������ɱ¾��
������������ɱ¾��

������̶��ı�����ϵ��
������ս�������������Զ����㡣

��Ȼ�����ڣ������������
�������е�һ���֣��ھ����Ĺȵ׼ᶨ�˶�־��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateTextureEX("�}����200", 1000, Center, Middle, "cg/bg/bg004_�ɤӤ���a_02.jpg");
	Fade("�}����200", 0, 1000, null, true);
	FadeDelete("�}����100", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���񵶡���ͷ�����ӡ�
�������ŴӲֿ����ҳ��ļ�ª������
Ǳ���ڰ��������з��ɾ����ʿ��ǡ��·����
��ӱ���ͻϮʹ�为�ˡ�

������žɳ�ǹ�����ˣ�����ΪΣ�յĴ��ڡ�
��һ������任λ�ã�һ�߲�׽�����ѻ�ʿ����
׼ȷ���õ���һ������ɥ��Ȫ��

�������Ŀ������ȥ��ʿ����
���˿��ȵĴ��Գ���������֮�С�
����Ҫɱ����Ҫɱ��������ɱ�ķݣ�ͳͳɱ������

��������Ը����δ��ʵ�֡�
�����µ����ˣ����ѱ�����η���ħ��ΪĿ�ꡣ

��ƾ���Ŷ��꾭��Ǳ���ƶ������ˣ�
�����ᱻʿ�������߲�׽��
�����������˷�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 500, 0, null);

//���դθo�T��
	#av_����ʽ�o�T��=true;

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	CreateTexture("�}����50", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Delete("�}����200");

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("�\Ļ��");

	StL(1000,@-950,@+600,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	FadeStL(0,true);
	Zoom("@StL*", 0, 500, 500, null, true);
	OnSE("se���L_����_��ͻ�M01",1000);
	Move("@StL*", 100, @+2000, @-700, Dxl1, true);
	DeleteStL(0,false);

	Wait(500);

	StR(1000,@+1000,@-100,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	Zoom("@StR*", 0, 2000, 2000, null, true);
	FadeStR(0,true);
	OnSE("se���L_����_��ͻ�M03",1000);
	Move("@StR*", 1000, @-1250, @+500, Dxl1, true);
	Zoom("@StR*", 2000, 1000,1000, null, true);

	CreateSE("SE01","se���L_����_���д��C_L");
	MusicStart("SE01",0,800,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290a]
��<RUBY text="������">�ӿ���</RUBY>����һĿ��Ȼ��
���Գ����������׷����ڿ���֮�˶��ԣ�
����Զ�����Դ̼������ŵĿ־���ڣ�
����������������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 500, 0, null);
	CreateTextureEX("�}����200", 10000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/bg004_�ɤӤ���a_02.jpg");
	OnSE("se���L_����_��ͻ�M02",1000);
	Fade("�}����200", 200, 1000, null, true);
	Delete("�}����50");
	DeleteStR(0,true);
	Fade("�}����100", 0, 1000, null, true);
	FadeDelete("�}����200", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290b]
�����������ʿ�Ķ�ҡ��
����һ�ܻ��������ͷ�ϼ�תֱ�¡�
  �е��������Ϣ��̧ͷ���ӣ�������Ұ
�ѱ������Ĺ�Գ������Ǳ������˼��������⾰��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_Ұ̫�����01",1000);
	CreateTextureEX("�}����200", 2000, Center, 0, "cg/ef/ef008_��������܉��.jpg");
	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg004_�ɤӤ���a_02.jpg");
	CreateColorEX("�}ɫ100", 3000, "White");

	Zoom("�}����200", 0, 2000, 2000, null, true);
	SetBlur("�}����200", true, 4, 500, 50, false);
	Move("�}����200", 500, @0, -200, null, false);
	Fade("�}����200", 300, 1000, null, true);

	Wait(200);

	Fade("�}ɫ100", 300, 1000, null, true);
	Delete("�}����200");
	Delete("�}ɫ200");

	Fade("�}ɫ100", 300, 0, null, false);
	OnSE("se���L_�Ɖ�_����02",1000);
	Shake("�}����100", 1000, 0, 10, 0, 0, 500, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0291]
��������ʿ��ͻϮ�������������ϡ�
����һն�����ƣ����������˲����С��
��һͬ���ɡ�

  ����Ҳ��������������ơ�
�����ǳ�������Ϊ��

���������ȣ�<RUBY text="����">��Ȼ</RUBY>֮�¡�
�����ڿ��е�սʿ���ǳ��ˡ�

�������׻�ó�Խ����֮�������ǣ�ֻ�ɳ�Ϊħ��

{	OnSE("se���L_����_��ͻ�M03",1000);
	Wait(10);
	OnSE("se���L_����_��ͻ�M02",500);}
�����ֻ�ǹ����ŵ���ʿ�����ж���
����׼����������ʿ�ǣ�Ҳ�Դ�Ϊ������
��ʼ�׷׽��䡣����������ı�����ȣ�
ʿ���ǵ���Ϊֻ���紺��΢�硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_Ұ̫�����01",1000);
	CreateTextureEX("�}����200", 2000, Center, 0, "cg/ef/ef008_��������܉��.jpg");
	CreateColorEX("�}ɫ100", 3000, "White");

	Zoom("�}����200", 0, 2000, 2000, null, true);
	SetBlur("�}����200", true, 4, 500, 50, false);
	Move("�}����200", 500, @0, -200, null, false);
	Fade("�}����200", 300, 1000, null, true);

	Wait(200);

	Fade("�}ɫ100", 300, 1000, null, true);
	Delete("�}����200");
	Delete("�}ɫ200");

	Fade("�}ɫ100", 300, 0, null, false);
	OnSE("se���L_�Ɖ�_����02",1000);
	Shake("�}����100", 1000, 0, 10, 0, 0, 500, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0292]
��������ʿ��̫��ÿ�Ⱥ�Х��<RUBY text="����">��Ⱥ</RUBY>����
�㻯���Ѷ�������
����նɱ�����жϡ������顢��˺�ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw����L.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000570e237">
��ɱ�����ˡ����ˣ���û�õ��ˡ���

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000580e237">
���������ܳ������۵����ˡ�����Ů�ˡ�
���к��ӣ�ץ�����ж����ǵ���
���������ü�Ǯ����

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000590e237">
������һ�������ߡ�
����Щ�һ��ܵõ������ˣ�ֻ��ū����
������������

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000600e237">
�������������������֮�˵�ĩ·����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�ϑ�01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se����_����_���Q01");
	MusicStart("SE02",1500,500,0,1000,null,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���񱩵ķ�����������Ŵ�ׯ��

������սʿЧ��ʿ������ʼ�����Ϊ��
��ɸѡ���ˣ�ɱ��Ӧɱ֮����ץס��ץ֮�ˡ�

  ��֮�У��޹ش���������Ը��
����������������ʽ���Ǳ���������Ը���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���壿

	SetNwC("cg/fw/nw���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//������㣯���ˣ���
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000610e149">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_�|��_������01",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��һ�˳�ǹ���֡������������µ���
  ���Ǳ����˻�����ʿ�����������ء�

������������˭�����Ǿ��ѵ�����������
�����������������ʵ��ɱ�˵��ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�ե�å����", 15000, "WHITE");

//���|���Ļ�
	OnSE("se���L_����_�饤�ե�Ĥ�4��",1000);
	Fade("�ե�å����",0,1000,null,true);

	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����˵������������̸����������
�������ӵ���������Ŀ�������
���ķ������������������ʿ��

  һ���漣��
����������ģ��漣��

����˲���ɱ�ĵ��衪��

{	OnSE("se���L_�|��_��������01",1000);}
��һ�ܻ������׵���ͷ�����

{	OnSE("se���L_�|��_����02",1000);}
��һ�ܻ�����̫��ն�ϡ�
{	OnSE("se���L_�|��_����01",1000);}
��һ�ܻ��嵥��ץס��

��ʣ��һ�ܣ�ʲôҲû������
{	OnSE("se���L_�|��_����03",1000);}
���������и�����ȴδ��˿����������¡�

�����ǵ���֮ͬ�������������ɵ�̬�ȡ�
���ӵ�Ϯ������ֱ��ͬ��ӬС�棬
��׽һ�¶���ֵ�á�

����ʵ���ϣ�����Ҳȷʵ��ˡ�
����˶Դ������ٷɳ۵��ӵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//������㣯���ˣ���
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000620e149">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�����ӵ��ж���ֵ��һ�ᣬ
���������������Ǿ�ʧ�˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 500, 0, null);
	SetVolume("SE02", 500, 0, null);

	CreateColorSP("�\Ļ��", 2500, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	OnSE("se�\��_܇_�\���z��01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0361]
������ͣ���ڽ��ԵĴ���Ψһһ̨<RUBY text="�ԣ�����">�������ͳ�</RUBY>��
�����ʻ�ҡ��������š�
�·�Ҫ��͸̤���ز��¡�

����һ˲�䣬����ű��Ż���ɡ�
�������Ż������ۣ��Լ��ܴӶ�ħ���������ѡ�
���߸�̰��Щ��������ͬ��Ҳ�ܳ��ϻ������ػ�̨��

������̨�����ܶ��Ļ����

������������ˣ�����δ���ü�ʧ�������ѽ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTexture("�}����50", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");

	Delete("�}����200");
	Delete("�}����100");
	Delete("�}ɫ100");


	StC(1000,@0,-300,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	FadeStC(0,true);
	Move("@StC*", 0, @-100, @+50, null, true);

	Move("@StC*", 300, @+100, @-50, Dxl1, false);
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("�\Ļ��");

	BGMoveAuto("@StC*",1);

	SetNwL("cg/fw/nw�zʿ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//������㣯�zʿ�¡�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000630e031">
���ߡ�������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����200", 10000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/bg004_�ɤӤ���a_02.jpg");
	CreateColorEXadd("�}ɫ100", 1500, "White");

	OnSE("se���L_����_��ͻ�M02",1000);
	BGMoveDelete();
	Move("@StC*", 300, @200, @200, Dxl1, false);
	Fade("�}����200", 200, 1000, null, true);

	Delete("�}����50");
	DeleteStC(0,true);

	Fade("�}����100", 0, 1000, null, true);

	SL_Rightdown(@0,@0,1000);
	FadeDelete("�}����200", 500, true);
	OnSE("se���L_����_�����01",1000);
	SL_Rightdownfade(0);
	Fade("�}ɫ100", 200, 1000, null, true);
	OnSE("se���L_����_��ж�",1000);
	FadeDelete("�}ɫ100", 300, true);
	OnSE("se���L_�Ɖ�_����",1000);

	CreateSE("SE01","se����_����_�ϑ�01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se����_����_���Q01");
	MusicStart("SE02",1500,500,0,1000,null,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���������˲���ռ�����Ͽգ�������ʿ������̫����
������ǹ֧����ԭʼ��������ʹ�ø�Ϊ�����Ĺ�����

��һ���䣬�þ����¡�
��������ն�ϣ���ͬ��������ϯ���������ʱ�ɳ�Ϊ
�Ͻ�֮�ڡ���
һͬ�������ء�

������������ʹ���ʱ�䶼û�аɡ�
��������ض��������˵ġ�����Щʹ����ȥ��������ȡ�
�ֻ�����Щʹ��ػ��ŵ����ǡ�

����ͬ������������ϵ����Ķ��棬
��δ�����κβ�����
������Щһ�˽���һ�˱�ն�ϰ�����˹���죬
ʹ�������ڵ���֮�ϵ�ͬ���ǲ�ͬ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//������㣯���ˣ¡�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000640e150">
����Ҫ������Ҫ��
����Ҫ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE10","se����_����_�ߤ�01_L");
	MusicStart("SE10",0,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��һ���˱���������<k>
{	OnSE("se����_�n��_��ˤ֤Ĥ���01",1000);}
������ͬ�飬���ֱײ����̤�ſ�����µ����ˡ���<k>
Ȼ��������û�ж��⡣��ֻ�ǵ����أ�
���޴�Ŀ־����֡�

  �ƿ���Ⱥ�����ܴ�����
����·���ˡ�

��ͨ���ڴ�ĵ�·��

��ֻҪ��������ȥ�����ܵ����ڴ塣
����һ���ܻ�ȡ�

����Ҫ��ͷ��ֻ���ܡ�
��ֻҪһֱ����ȥ������һ�죬����һ���ܡ�����

{	SetVolume("SE10", 1000, 0, null);}
��������ԶҲ�����ˡ���������ʵ��
��������ʮ������
�����Ƕ�ʱ�����������š�
��ȫû��������޷�ǰ��һ������ʵ��

����֪��ʱ��ʼ��
����ͷ���·�Ӿ�ں��к����յ�������ʿ��
һ��ץס���ĺ󾱡��������ţ�
��ȴ�Ի��ŵر���������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000650e032">
����ȥ����

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣ¡�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000660e150">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_�n��_ܞ��01",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�����ӻ�ͬ����Ⱥ�С�
�������Դ���ʿ����׼ȷ����������ҽ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//������ѩ`��
	OnSE("se���L_����_�����01",1000);
	SL_left(@0,@+50,1500);
	SL_leftfade2(10);

	CreateColorEX("�}ɫ100", 2999, "Black");
	CreateTextureEX("�}����1000", 3000, Center, Middle, "cg/ef/ef004_����Ѫ�~.jpg");
	Rotate("�}����1000", 0, @0, @180, @0, null,true);
	Fade("�}ɫ100", 300, 1000, null, true);
	OnSE("se����_Ѫ_�����01",1000);
	Fade("�}����1000", 0, 1000, null, false);
	DrawTransition("�}����1000", 700, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

	CreateSE("SE01","se����_����_�ϑ�01");
	MusicStart("SE01",1500,500,0,1000,null,true);



	CreateColorEX("�ե�å����\", 15000, "Black");
	Fade("�ե�å����\",300,1000,null,true);

	Delete("�}����1000");
	Delete("�}ɫ100");

	SetVolume("SE01", 300, 200, null);
	SetVolume("SE02", 300, 200, null);

	MovieSESet(16000,"mv���M","se����_mv��_�ĥ륮���M");
	MovieSEStart2(300,1000);

	SetVolume("SE01", 500, 200, null);
	SetVolume("SE02", 500, 200, null);

	CreateTextureSP("fire_Move01", 1000, Center, Middle, "cg/ev/ev505_�����_�M܊.jpg");


	CreateTextureEXover("fire_Move02", 1000, Center, Middle, "cg/ef/ef046_��a.jpg");

	Move("fire_Move02", 0, @-200, @0, null, true);
	DrawEffect("fire_Move02", 0, "MiddleWave", 0, 200, null);

	Fade("fire_Move02", 0, 500, null, true);
	ma00_FireMoveAuto();

	Fade("�ե�å����\",300,0,null,true);
	Delete("�ե�å����\");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
���ϱ۲�֫�����㹶���ŵ����ǡ�
������ʱ��һ��һ�����ƣ����ǻ������ࡪ����
����������һ���н���ȥ��

�����ǵ����ˣ���ȫ�����
ͳ�ʾ��ӵĽ���ָʾ��
�����������ѡ��������塣

�����ܻ���ս�����ƶ����Ի���ԭ�ط�����
�������⡪��
������֮������᳹���Լ�����־��

  ���Ǳ�Ű��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateSE("SE01","se����_����_�ϑ�01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se����_����_���Q01");
	MusicStart("SE02",1500,500,0,1000,null,true);

	SetVolume("@mbgm36", 1000, 0, null);
	SetVolume("SE02", 2000, 1000, null);

//�����Q���u�����С�
//��Ϧ�ա�ҹ��

	PrintGO("�ϱ���", 15000);

	ma00_FireMoveAutoDelete();
	ma00_fireDelete();

	CreateTextureSP("�}����200", 10000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	CreateTextureSP("�}����300", 1900, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	FadeDelete("�ϱ���", 1000, true);

	CreateProcess("�ץ�����", 150, 0, 0, "fire01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire02");
	CreateProcess("�ץ�����", 150, 0, 0, "fire03");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	FadeDelete("�}����200", 1500, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
�����жϽ��׵�Ůͯ��˼����

������Ϊʲô��

��ֱ�����컹�ڴ�����ͨ�����

�����״�����ҵ�Ͷ�����ɽ��ľ��
��ĸ�ײٳּ���һ�У�
���Լ��ͻ������ˣ����ʱ������ĸ�ס�

���ո�һ�ա�
�����ޱ仯��ÿһ�졣

��ȴͻȻ�����ƻ�����
��������ʲô���ɣ�����������ʲô��

��Ϊʲô�Ǹ��������ӵĶ���������
�Ѵ��ӱ��һ����Ϳ��

  ѧУ����ʦ�����̹���
�����ж񱨡�
������Ա���ʩ���Լ�Ҳ���⵽��Ӧ��

���Լ����׶�˭�������õ����ء�
�����и�ĸ������������ô����ȥ���ˡ�
���д˿̣����Լ�һ���е����������ڵ��ϵ�ͬ���ǡ�

  ����ӭ�����Ǹ���ԫ�����ˣ�������ס�չˣ�
����ǲ��õ�����
����������ô������ˡ������Ƕ�˵��
��û����ô�������ʿ�����ˡ�������������

  ����˵����������ԭ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�}ɫ100", 3000, "Black");
	Fade("�}ɫ100", 2500, 1000, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
������Ϊ���˹��ֵ��£����⵽���ֱ�Ӧ��

����ô������<RUBY text="����">��Щ</RUBY>�ļһ����أ�

����Щ�һ����һ��Ҳ���⵽��ͬ�ı�Ӧ�ɡ�
�����������������̫����ˡ�̫���������ˡ�

�����ǣ�˭����

�����ӱ�����ѹ���Ե���������
�����Ǿ��ӣ�˭���������������أ�

��˭�������ء�
��˭�ܸ���Щ�������׵��˽��³ͷ��ء�

�����Ǹ���˭Ҳ������

�����˭Ҳ���ܵĻ���
���ͷ��������͵���Ϊֹ�ˡ�

��ֻ����������ʲô����֪�������ǽ��ܳͷ���
��Щȷʵ���˻��µļһ�ȴʲô��Ӧ��û�С�
��ֻ��Ϊ��˭Ҳ���ܳͷ����ǡ�

  ��֡�
��̫����ˡ�

���ƻ��뱯���������У��޷�վ����Ů�������š�

��������̫����ˡ�

����û���ˡ���û���ˡ�
�����ǲ�������ꡣ
����������<RUBY text="��������������������">ֻҪ�������������ս�</RUBY>��

������Щ�һ�ͬ���ĳͷ���
���������������µı�Ӧ��
��������ͬ�ȵ�ʹ��ͱ��ˡ�

����û���ˣ��������һ�С�
����������
����������

��Ůͯ������
�����Ӷ��ߵ�̾Ϣ������ķ�ŭ��������С�

����������
������������һ����Ū���ˡ�
������������һ��Ҫ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}ɫ100",null);
	Delete("�ץ���*");
	SetVolume("SE*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
������<k>����<k>��������<k>
����δ�д�

�����ˡ�
�����˻��£���Ҫ���ܳͷ���
�����������

������
������Ӧ�ǡ���

����ʲô�ء�
��������ʲô�ء�

������̾Ϣ��
�������ŭ��

������Ҫ��
����Ҫ̾Ϣ��Ҫ��ŭ��

������̾Ϣ��
�������ŭ��
���������������ޡ�

����Ҫ�ģ�

������Ҫ��

��Ϊʲô��

�����������Ǻǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�ܥå���һ������
//���£ǣͣ��y�ǺŤΆh�������ͤ���

	SoundPlay("@mbgm37",0,300,true);

	Wait(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��
����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("�}ɫ100", 1000, 0, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
��Ůͯ�����ˡ�
���Լ��ں�<RUBY text="��">˭</RUBY>�Ի���

��������Ц�š�
������Ȱ��������ɫ��
���߳���ҡ������

����������̾Ϣ�������ŭ���������ޡ�
��һ�н�����ա�

������������˵��ֻ�����֮�


�����������������������������ĸ衣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����Ц�ɡ��質�ɡ����������ɡ�
���û�ϲ�����з���赸��

�����������Ƥ�ҡ�
��������Ϊһ���������

����ˣ���������ϲ�á�
����ˣ����˽����ٷ��š�

�����޷�������
��������˭�����ԡ�

���϶����ܴ�ɣ�ֻ����Ϊ������

������������ԭ����ֻ��Ϊک��ϲ�ô��ڣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
��
�������������������������ƶ��ʡ�

��Ůͯ�����ˡ�
���������Լ�����⡣

������������
���������𣿡�������

�������������
��ک������֮����

��������Ҳ�ã���Ҳ�ã�
���������岢���ڴˣ�����

������������ʡ�
�������̵�����

�����������Ĵ��ڲ������
��Ҳ����ͷ���

����������ֻ�贿���ɡ�
���⣬��������

��Ůͯ�ڸ質��
���質������
���質ϲ�á�

�������԰�������ֻ��Ҫ��
��ֻ��Ҫ�������ͺã�

��ֻ��Ҫ׷Ѱ�������ͺ��˰���

��ֻҪ�����š�
����Ϊһ��������̹�ʶ�����ػ��š�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���壿�ȱ�ʿ
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 300, null, "cg/data/slide_02_01_0.png", true);


	Delete("�}����300");
	Delete("�}ɫ100");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");

	CreateSE("SE02","se����_����_���Q01");
	MusicStart("SE02",1500,500,0,1000,null,true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 300, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");


	SetNwC("cg/fw/nw���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//������㣯���ˣá�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000670e151">
����Ҫ��Ҫ���Ҳ����������Ⱦ��ң���

{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯��ʿ����
<voice name="����㣯��ʿ��" class="����������" src="voice/ma00/0000680e241">
����������Ҫɱ���㡣��

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣġ�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000690e152">
���Ҳ�����������

{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯��ʿ�¡�
<voice name="����㣯��ʿ��" class="����������" src="voice/ma00/0000700e242">
�����ɡ���

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣš�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000710e153">
���������ȥ������

{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯��ʿ�á�
<voice name="����㣯��ʿ��" class="����������" src="voice/ma00/0000720e243">
�����ɡ���

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣơ�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000730e154">
���������ȥ������

{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯��ʿ�ġ�
<voice name="����㣯��ʿ��" class="����������" src="voice/ma00/0000740e244">
����ȥ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 1000, 0, null);

//���£ǣ�������ä����Ϥ�
	SetVolume("@mbgm37", 5000, 1000, null);



	CreateColorEX("�}ɫ100", 1500, "Black");
	Fade("�}ɫ100", 200, 1000, null, true);

//����������
	CreateTextureEX("Gin_song01", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh01.png");
//������г�Ц
	CreateTextureEX("Gin_song02", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh02.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	SetBacklog("����������Ӧ�Ǹ������ҵĿ��⣬�������ʡ�", null, null);
	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey(2000);

	SetBacklog("�����ڳ�Ц�Ļ�ϲ����������ϲ��֮Ļ�ɡ�", null, null);
	Move("Gin_song02", 1000, @0, @-10, null, false);
	Fade("Gin_song02", 1000, 1000, null, true);

	Fade("silver_son*", 500, 0, null, true);

//�룺�ƥ�å�׷�ӤΤ����˱�
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]







����������Ӧ�Ǹ������ҵĿ��⣬�������ʡ�
�����ڳ�Ц�Ļ�ϲ����������ϲ��֮Ļ�ɡ�

</PRE>
	SetTextA();
	TypeBeginAI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//���ա��o�T��

	WaitKey();

	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	CreateTextureSP("�}st100", 1100, Center, Middle, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");

	Fade("Gin_song01", 500, 0, null, false);
	Fade("Gin_song02", 500, 0, null, true);
	Delete("Gin_song*");

//	FadeStC(0,true);
	BGMoveAuto("@�}st100",1);

	DrawTransition("�}ɫ100", 1000, 1000, 0, 300, null, "cg/data/slide_03_01_1.png", true);
	Delete("�}ɫ100");

	Wait(300);

	SetNwL("cg/fw/nw�zʿ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000750e030">
����������

{	NwL("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�¡�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000760e031">
������������ô���¡������д����𣿡�

{	NwL("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000770e032">
�����������ԡ�
������������ڱ�ʲô�������ҡ�����

{	NwL("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�ġ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000780e033">
�������ﴫ������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 1500, "Black");
	Fade("�}ɫ100", 200, 1000, null, true);

	BGMoveDelete();

	Delete("�}st100");

//�􍹤�ҹ��
	CreateTextureEX("Gin_song03", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh03.png");
//���¤����z��
	CreateTextureEX("Gin_song04", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh04.png");
//��ľ©���դ���
	CreateTextureEX("Gin_song05", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh05.png");
//�������餮����
	CreateTextureEX("Gin_song06", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh06.png");
//��������ζ
	CreateTextureEX("Gin_song07", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh07.png");
//�����οֲ�
	CreateTextureEX("Gin_song08", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh08.png");
//�������Ά�����
	CreateTextureEX("Gin_song09", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh09.png");
//���������Ť�
	CreateTextureEX("Gin_song10", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh10.png");
//������ӻ��Ұ���Y����
	CreateTextureEX("Gin_song11", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh11.png");
//�����ޤ���Τʤ�
	CreateTextureEX("Gin_song12", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh12.png");


	Move("Gin_song07", 0, @0, @-40, null, true);
	Move("Gin_song06", 0, @0, @-80, null, true);
	Move("Gin_song05", 0, @0, @-120, null, true);
	Move("Gin_song04", 0, @0, @-160, null, true);
	Move("Gin_song03", 0, @0, @-200, null, true);
	Move("Gin_song08", 0, @0, @0, null, true);
	Move("Gin_song09", 0, @0, @+40, null, true);
	Move("Gin_song10", 0, @0, @+80, null, true);
	Move("Gin_song11", 0, @0, @+120, null, true);
	Move("Gin_song12", 0, @0, @+160, null, true);

	SetBacklog("����������֮ҹ��ҰȮŭ�ͣ��¶�������", null, null);
	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("����ů��Ѩ��ĸ����֮�������߸�Ϊϯ���ޱȰ�����", null, null);
	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("�����⴩͸����������£�����֮ʨ����ǧͷ¹��", null, null);
	Move("Gin_song05", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song05", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("����������ˮ��֮���ѣ�����ͯʰ������`̤��", null, null);
	Move("Gin_song06", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song06", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("�������������֮�˰�������С���擴�Ĺ��ɡ�", null, null);
	Move("Gin_song07", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song07", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("������������ֲ�֮�˰�����ħ�ļ������Ǻ���֮����", null, null);
	Move("Gin_song08", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song08", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("�������������������ʣ�С�����ħ����ճ�Կ�ס�", null, null);
	Move("Gin_song09", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song09", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("������������������������С�����ħ���ժ��ñ�ӡ�", null, null);
	Move("Gin_song10", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song10", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�", null, null);
	Move("Gin_song11", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song11", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("����񣬶�����ǰ���ּ������������Ǹ���֮���顷", null, null);
	Move("Gin_song12", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song12", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song0*", 500, 0, null, false);
	Fade("Gin_song10", 500, 0, null, false);
	Fade("Gin_song11", 500, 0, null, false);
	Fade("Gin_song12", 500, 0, null, true);
	Delete("Gin_song*");

//�룺�ƥ�å�׷�ӤΤ����˱�
/*
//�룺��ӛλ���{���Τ��ᡢ���ک`��׷��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]



����������֮ҹ��ҰȮŭ�ͣ��¶�������
����ů��Ѩ��ĸ����֮�������߸�Ϊϯ���ޱȰ�����
�����⴩͸����������£�����֮ʨ����ǧͷ¹��
����������ˮ��֮���ѣ�����ͯʰ������`̤��
�������������֮�˰�������С���擴�Ĺ��ɡ�
������������ֲ�֮�˰�����ħ�ļ������Ǻ���֮����
�������������������ʣ�С�����ħ����ճ�Կ�ס�
������������������������С�����ħ���ժ��ñ�ӡ�
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�
����񣬶�����ǰ���ּ������������Ǹ���֮���顷

</PRE>
	SetTextA();
	TypeBeginAI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//����ȱ�ʿ
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");

	DrawTransition("�}ɫ100", 1000, 1000, 0, 300, null, "cg/data/slide_02_01_1.png", true);
	Delete("�}ɫ100");


	SetNwC("cg/fw/nw���ˣ�.png");

//�룺voice_class�����å�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//������㣯���ˣá�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000790e151">
��������������������

{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯��ʿ����
<voice name="����㣯��ʿ��" class="����������" src="voice/ma00/0000800e241">
���ء���������������

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣġ�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000810e152">
�����������¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ա��o�T��
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	CreateTexture("�}����50", 100, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	Delete("�}����200");

	StC(1000,@0,-300,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	FadeStC(0,true);

	CreateSE("SE01","se���L_����_���д��C_L");
	MusicStart("SE01",0,800,0,1000,null,true);
	BGMoveAuto("@StC*",1);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("�\Ļ��");

	SetNwL("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000820e030">
����Щ�һ���ô���¡�����
����������ְ�����

//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000830e030">
����Ϊ�־���ȷ����𣿡�

{	NwL("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000840e032">
�����������ǵ����Ҳ�ܹ֡�
��ͻȻ֮��������ô�ˡ�����

{	NwL("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000850e237">
���š�������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 300, 0, null);

	CreateColorEX("�}ɫ100", 1500, "Black");
	Fade("�}ɫ100", 200, 1000, null, true);
	BGMoveDelete();
	DeleteStC(0,false);

	CreateTextureEX("Gin_song15", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh15.png");
	CreateTextureEX("Gin_song16", 1600, Center, Middle, "cg2/sys/telop/tp_�y�ǺŤΆh16.png");
	CreateTextureEX("Gin_song17", 1600, Center, Middle, "cg2/sys/telop/tp_�y�ǺŤΆh17.png");
	CreateTextureEX("Gin_song18", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh18.png");
	CreateTextureEX("Gin_song19", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh19.png");
	CreateTextureEX("Gin_song20", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh20.png");
	CreateTextureEX("Gin_song21", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh21.png");
	CreateTextureEX("Gin_song22", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh22.png");
	CreateTextureEX("Gin_song23", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh23.png");
	CreateTextureEX("Gin_song24", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh24.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song18", 0, @0, @-80, null, true);
	Move("Gin_song17", 0, @0, @-120, null, true);
	Move("Gin_song16", 0, @0, @-160, null, true);
	Move("Gin_song15", 0, @0, @-200, null, true);
	Move("Gin_song20", 0, @0, @0, null, true);
	Move("Gin_song21", 0, @0, @+40, null, true);
	Move("Gin_song22", 0, @0, @+80, null, true);
	Move("Gin_song23", 0, @0, @+120, null, true);
	Move("Gin_song24", 0, @0, @+160, null, true);

	SetBacklog("�������漣��ʥ������������ܿܿ����֮��", null, null);
	Move("Gin_song15", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song15", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("���S��֮���İ����������������İ���һ��ͬ���ӵס�", null, null);
	Move("Gin_song16", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song16", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("�����������Ĺ�������ȡ������������ڷ���֮�С�", null, null);
	Move("Gin_song17", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song17", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("����������Ӥ�������֮ѪΪĸ�飬ʳ֮��ҹ���ø�Ϊʼ��", null, null);
	Move("Gin_song18", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song18", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("�����������������޸裬�ص���Ц��ƣ����Թ�ޡ�", null, null);
	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("���������������⵻�棬���Է�ŭ�������ϲ�á�", null, null);
	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("�����뽣����֮�����b�������֮������", null, null);
	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("��Ϊ�ڰ��뾲�����ػ�������֮�������ᴿ�����ҫ��԰ɡ�", null, null);
	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�", null, null);
	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("����񣬶�����ǰ���ּ������������Ǹ���֮���顷", null, null);
	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();
/*
//�룺��ӛλ���{���Τ��᥹�ک`��׷��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]


�������漣��ʥ������������ܿܿ����֮��
���S��֮���İ����������������İ���һ��ͬ���ӵס�
�����������Ĺ�������ȡ������������ڷ���֮�С�
����������Ӥ�������֮ѪΪĸ�飬ʳ֮��ҹ���ø�Ϊʼ��
�����������������޸裬�ص���Ц��ƣ����Թ�ޡ�
���������������⵻�棬���Է�ŭ�������ϲ�á�
�����뽣����֮�����b�������֮������
��Ϊ�ڰ��뾲�����ػ�������֮�������ᴿ�����ҫ��԰ɡ�
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�
����񣬶�����ǰ���ּ������������Ǹ���֮���顷

</PRE>
	SetTextA();
	TypeBeginAI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/



	SetVolume("@mbgm37", 2000, 0, null);

	Fade("Gin_song*", 500, 0, null, true);
	Delete("Gin_song*");

//���գ�
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	DrawTransition("�}ɫ100", 1000, 1000, 0, 300, null, "cg/data/slide_03_01_1.png", true);
	Delete("�}ɫ100");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
��������Ļ��
������Ļ������

������ĳ��ϲ�磬
��ͬʱ�����Ǵ���ı��硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SoundPlay("@mbgm34",0,1000,true);
//���塢��ʿ
	CreateTextureEX("�}����100", 1200, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");
	Fade("�}����100", 500, 1000, null, true);
	Delete("�}����50");

	SetNwC("cg/fw/nw��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//������㣯��ʿ����
<voice name="����㣯��ʿ��" class="����������" src="voice/ma00/0000860e241">
���°�������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEXadd("�}ɫ100", 1500, "White");

	Fade("�}ɫ100", 100, 1000, null, true);

	StC(1300,@0,@0,"cg/st/3d����ʽ�o�T��_����_�i��.png");
	FadeStC(0,true);
	Move("@StC*", 0, @-70, @+25, null, true);
//���k�h
	OnSE("se���L_����_�饤�ե�Ĥ�01",1000);

	Move("@StC*", 300, @+70, @-25, Dxl1, false);
	Fade("�}ɫ100", 100, 0, null, false);
	SetNwL("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0591]
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000870e030">
��ʲ����
��������˭���!?��

//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000880e030">
�����췴�𣡡�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}ev1000", 2500, -512, -100, "cg/ev/resize/ev002_�y�Ǻ��¼�����`����_l.jpg");
	CreateTextureEX("�}ev100", 2000, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");

	Move("�}ev1000", 1600, @-512, @0, DxlAuto, false);
	Fade("�}ev1000", 300, 1000, null, true);

	Wait(300);

	Fade("�}ev100", 0, 1000,null,true);
	Fade("�}ev1000", 1000, 0, null, true);
	Delete("�}ev1000");

	SetNwC("cg/fw/nw��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0592]
//������㣯��ʿ����
<voice name="����㣯��ʿ��" class="����������" src="voice/ma00/0000890e241">
����������������������

{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯��ʿ�¡�
<voice name="����㣯��ʿ��" class="����������" src="voice/ma00/0000900e242">
���������ء�������������������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000910e030">
���㡭���������𣬻쵰!!��

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000920e032">
���ȵȣ�����ô�����Ǿ�����ҵ�״̬������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�¡�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000930e031">
��������ô���£���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1300,@-200,@0,"cg/st/3d����ʽ�o�T��_����_�i��.png");
	FadeStC(0,true);

	Fade("�}ev100", 1000, 0, null, true);

	CreateWindow("������ɥ���", 10000, 600, 0, 350, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	CreateTextureEX("������ɥ���/�}ev100", 2000, 500, 0, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");

	Move("������ɥ���/�}ev100", 5000, @-512, @0, AxlDxl, false);
	Fade("������ɥ���/�}ev100", 0, 1000,null,false);
	DrawTransition("������ɥ���/�}ev100", 1000, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0593]
//������㣯�zʿ�ġ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000940e033">
����֮����ֹ���ǡ�����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��Ź����
	SL_leftdown(@-200,@-100,1000);
	CreateColorEXadd("�}ɫ100", 15000, "White");
	OnSE("se���L_����_Ź��03",1000);
	SL_leftdownfade2(10);
	Wait(100);
	Fade("�}ɫ100", 100, 1000, null, true);
	Delete("������ɥ���/*");
	Delete("������ɥ���");
	DeleteStC(0,true);
	Shake("�}����100", 500, 10, 0, 0, 0, 500, null, false);
	Fade("�}ɫ100", 100, 0, null, true);

	SetNwC("cg/fw/nw���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//������㣯���ˣš�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000950e153">
����������������

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣơ�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0000960e154">
���������ٺ١�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����100");
	Delete("�}����200");
	CreateTextureSP("�}����10", 50, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	Fade("�}����100", 0, 1000, null, true);

	StL(1300,-700,-450,"cg/st/3d����ʽ�o�T��_�T��_���Lb.png");
	StR(1200,-730,-300,"cg/st/3d����ʽָ�]��_�T��_ͨ��.png");

	Move("@StL*", 400, -300, @0, Dxl3, false);
	Move("@StR*", 400, 130, @0, Dxl1, false);

	FadeStR(300,false);
	FadeStL(300,false);

	OnSE("se���L_����_��ͻ�M02",1000);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0611]
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000970e032">
������Щ�һ�Ҳ��������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0000980e030">
���ء����ӵ��¡������ǡ���!?��

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0000990e237">
������
����֮��ɱ���������ǵ��ˣ���

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001000e237">
���Ժ��ٲ����������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001010e030">
���ǡ����ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	StC(1200,@-300,@+200,"cg/st/3d����ʽ�o�T��_�T��_���La.png");

	Move("@StC*", 400, @+300, @+200, Dxl1, false);
	FadeStC(300,false);
	OnSE("se���L_����_��ͻ�M02",1000);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0612]
//������㣯�zʿ�¡�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001020e031">
���˽⣡
��֪��֪������Ϊ�η������û��ϵ����

//������㣯�zʿ�¡�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001030e031">
���������ǿ϶������䡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//������һ�W
//���ĉ�
	CreateColorSP("�}�\��", 1, "#000000");

	CreateTextureEX("�}EF100", 5000, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞.jpg");
	CreateColorEXadd("�}ɫ100", 6000, "White");

	SetBlur("�}EF100", true, 5, 500, 50, false);
	Zoom("�}EF100", 0, 2000, 2000, null, true);

	OnSE("se���L_����_ͻ�M01",1000);

	Zoom("�}EF100", 500, 1000, 1000, Dxl1, false);
	Fade("�}EF100", 200, 1000, null, true);

	Wait(400);

	Fade("�}ɫ100", 200, 1000, null, true);

	DeleteStC(0,true);
	Delete("�}EF100");

	CreateTextureSP("�}EF200", 4900, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSPadd("�}EF100", 5000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("�}EF100", 0, 2000, 2000, null, true);

	OnSE("se���L_�Ɖ�_�z02",1000);
	Zoom("�}EF100", 500, 1000, 1000, null, false);
	Fade("�}ɫ100", 200, 0, null, true);
	Shake("�}EF100", 500, 10, 10, 0, 0, 500, null, true);

	Delete("�}EF200");

	FadeDelete("�}EF100", 300,true);

	PrintGO("�ϱ���", 15000);


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�ϱ���");

	CreateTextureSP("�}����10", 50, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	StR(60,@0,@+300,"cg/st/3d����ʽ�o�T��_�T��_���Lb.png");
	StL(70,@0,@+400,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	FadeStR(0,true);
	FadeStL(0,true);
	Zoom("@StR*", 0, 500, 500, null, true);
	Request("@StR*", Smoothing);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw�zʿ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001040e030">
������ɽ��!?��

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001050e237">
��ʲô����!?��

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001060e032">
��˭��˭�ɵģ���

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001070e034">
�����������ġ�������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�ơ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001080e035">
������Щ�һ���𣿡�

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001090e032">
���ǲ����ܣ���������ô������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�ġ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001100e033">
��������������ɫ������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001110e034">
�������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�ġ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001120e033">
����ɫ�����ղţ����Ǹ���ɫ�ġ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������һ�W
//���ĉ�
	CreateTextureEX("�}EF100", 5000, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞.jpg");
	CreateColorEXadd("�}ɫ100", 6000, "White");
	SetBlur("�}EF100", true, 5, 500, 50, false);
	Zoom("�}EF100", 0, 2000, 2000, null, true);

	OnSE("se���L_����_ͻ�M01",1000);

	Zoom("�}EF100", 500, 1000, 1000, Dxl1, false);
	Fade("�}EF100", 200, 1000, null, true);

	Wait(400);

	Fade("�}ɫ100", 200, 1000, null, true);

	Delete("�}EF100");

	CreateTextureSP("�}EF200", 4900, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");

	CreateTextureSPadd("�}EF100", 5000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("�}EF100", 0, 2000, 2000, null, true);

	OnSE("se���L_�Ɖ�_�z02",1000);

	Zoom("�}EF100", 300, 1000, 1000, null, false);
	Fade("�}ɫ100", 200, 0, null, true);

	Shake("�}EF100", 300, 10, 10, 0, 0, 500, null, true);
	Delete("�}EF200");

	DeleteStR(0,true);
	FadeDelete("�}EF100", 300,true);

	SetNwC("cg/fw/nw�zʿ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001130e034">
����������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001140e032">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}����200", 10000);

	Delete("�}����100");
	Delete("�}����10");
	Delete("�}ɫ100");
	DeleteStL(0,true);

	CreateColorSP("�}ɫ100", 1000, "Black");
	CreateColorEXadd("�}ɫ200", 10000, "White");

	CreateTextureSP("�y��", 5000, Center, -372, "cg/ev/resize/ev952_�y�Ǻŵǈ�_l.jpg");
	Request("�y��", Smoothing);
	Fade("�}����200", 300, 0, null, true);

	Wait(500);

	Fade("�}ɫ200", 100, 1000, null, true);
	Delete("�y��");
	Delete("�}ɫ100");
	CreateTextureSP("�y��", 200, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	FadeDelete("�}ɫ200", 500, true);

//���y�Ǻš��ݳ����

	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001150e034">
�������ġ������С�����

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001160e032">
�����Ǻš���!?��

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001170e030">
���⡢��һ��ǡ������Ǻ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ʤ��ݳ�
	#av_�y�Ǻ�=true;

	PrintGO("�ϱ���", 15000);

	CreateColorEXadd("�}ɫ200", 10000, "White");

	CreateTextureSP("�y��", 5000, Center, InBottom, "cg/ev/ev952_�y�Ǻŵǈ�.jpg");
	Request("�y��", Smoothing);

	CreateColorEX("�}ɫ100", 5500, "Black");

//�������Ά�����
	CreateTextureEX("Gin_song01", 6000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh09.png");

//���������Ť�
	CreateTextureEX("Gin_song02", 6000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh10.png");

//������ӻ��Ұ���Y����
	CreateTextureEX("Gin_song03", 6000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh11.png");

//�����ޤ���Τʤ�
	CreateTextureEX("Gin_song04", 6000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh12.png");


	Move("Gin_song01", 0, @0, @-65, null, true);
	Move("Gin_song02", 0, @0, @-25, null, true);
	Move("Gin_song03", 0, @0, @+15, null, true);
	Move("Gin_song04", 0, @0, @+55, null, true);

	Fade("�ϱ���", 500, 0, null, false);

	Move("�y��", 2000, @0, 0, Dxl1, true);

	Fade("�}ɫ100", 300, 500, null, true);

	SetBacklog("�������������������ʣ�С�����ħ����ճ�Կ�ס�", null, null);
	Move("Gin_song01", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song01", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("������������������������С�����ħ���ժ��ñ�ӡ�", null, null);
	Move("Gin_song02", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song02", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�", null, null);
	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("����񣬶�����ǰ���ּ������������Ǹ���֮���顷", null, null);
	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey();

/*
//���ݳ��äΤ��ᡢ���ک`�����˱ܡ�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]





�������������������ʣ�С�����ħ����ճ�Կ�ס�
������������������������С�����ħ���ժ��ñ�ӡ�
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�
����񣬶�����ǰ���ּ������������Ǹ���֮���顷

</PRE>
	SetTextA();
	TypeBeginAI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//	Fade("�}ɫ200", 100, 1000, null, true);
	Fade("Gin_song*", 500, 0, null, true);
	Delete("Gin_song*");
//	Delete("�y��");
//	Delete("�}ɫ100");

	Fade("�}ɫ100", 300, 0, null, true);

//	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg002_��b_03.jpg");
//	FadeDelete("�}ɫ200", 500, true);

	SetNwR("cg/fw/nw�zʿ��.png");

//	StC(1000, @30,@0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
//	FadeStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001180e030">
��ɱ¾�����Ǻš�����

{	NwR("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001190e032">
���ƻ�ħ���Ǻš�����

{	NwR("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001200e034">
����֮�����Ǻš�����

{	NwR("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�ơ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001210e035">
�������Ķ�ħ��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorEX("�}ɫ100", 5500, "Black");
//����������
	CreateTextureEX("Gin_song01", 6000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh13.png");

//������г�Ц
	CreateTextureEX("Gin_song02", 6000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh14.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	Fade("�}ɫ100", 300, 500, null, true);

	SetBacklog("���������з�䣬��Ц���ң���ȴ�¶�������", null, null);
	Move("Gin_song01", 600, @0, @-10, null, false);
	Fade("Gin_song01", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("���ʽ�����֮̾��Ϊ��������������֮Ļ�ɡ�", null, null);
	Move("Gin_song02", 600, @0, @-10, null, false);
	Fade("Gin_song02", 600, 1000, null, true);

	WaitKey();

	Fade("Gin_song01", 500, 0, null, false);
	Fade("Gin_song02", 500, 0, null, true);
	Delete("Gin_song*");

	Fade("�}ɫ100", 300, 0, null, true);

//�룺�ƥ�åג���ˤĤ��˱�
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]






���������з�䣬��Ц���ң���ȴ�¶�������
���ʽ�����֮̾��Ϊ��������������֮Ļ�ɡ�

</PRE>
	SetTextA();
	TypeBeginAI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

	SetNwR("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0671]
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001220e034">
���ڿ��С���<RUBY text="����">��ֹ</RUBY>�ˡ���!?��

{	NwR("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001230e030">
�������ܡ���
���ֲ��Ƿɴ�����������
��ô���ܰ쵽��������

{	NwR("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001240e237">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	Delete("�y��");

	CreateColorSP("�\Ļ��", 10000, "BLACK");
	DrawDelete("�ϱ���", 300, 1000, "slide_01_01_1", true);

	DeleteStC(0,true);

	CreateTextureSP("�}����10", 50, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	StR(1000,100,-400,"cg/st/3d����ʽָ�]��_�T��_ͨ��.png");
	StL(1200,-750,-490,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");

	StCL(1000,@-1500,@+350,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	StCR(1250,@-1500,@+450,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	FadeStCR(0,true);
	FadeStCL(0,true);

	Move("@StL*", 400, -340,-390, Dxl1, false);
	FadeStR(300,false);
	FadeStL(300,false);
	OnSE("se���L_����_��ͻ�M02",1000);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001250e032">
���ӳ������ӳ����£����������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001260e237">
���������������ϣ�
����ʲô���������Ǽһ�����ô�Բб�ǿ�����ƣ�
����Ҳֻ�ǵ�ǹƥ��
���ǰ�Χ������ɱ�����𣡡�

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001270e237">
������!!
��˭��������һ���׼��Ǵ�!!��

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001280e030">
�����������ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�����߾��չ�_
//������
//��ȫȻ���������
	OnSE("se���L_����_��ͻ�M01",1000);
	Move("@StR*", 400, @-1500, @-50, Dxl1, false);

	Move("@StL*", 400, 160, -490, Dxl1, false);

	Move("@StMR*", 400, -10, -190, Dxl1, false);

	Move("@StML*", 400, -470, -530, Dxl1, true);


	StL(1200,160, -490,"cg/st/3d����ʽ�o�T��_�T��_���La.png");
	StCR(1250,-10, -190,"cg/st/3d����ʽ�o�T��_�T��_���La.png");
	StCL(1000,-470, -530,"cg/st/3d����ʽ�o�T��_�T��_���La.png");
	Wait(100);

	OnSE("se���L_����_������01",1000);
	FadeStL(300,false);
	Wait(100);
	OnSE("se���L_����_������02",1000);
	FadeStCL(300,false);
	Wait(100);
	OnSE("se���L_����_������01",1000);
	FadeStCR(300,true);

	Wait(100);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("@StL*", 400, @+1200, @+300, Dxl1, false);

	Wait(200);

	OnSE("se���L_����_��ͻ�M01",1000);
	Zoom("@StMR*", 100, 2000, 2000, null, false);
	Move("@StMR*", 400, @+1500, @+100, Dxl1, false);

	Wait(100);

	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("@StML*", 100, 500, 500, null, false);
	Move("@StML*", 400, @+1600, @-100, Dxl1, true);


	CreateTextureEX("�}����200", 10000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	Zoom("�}����200", 0, 2000, 2000, null, true);
	SL_down(@0,@-100,1500);
	SL_left(@0,@-100,1500);
	SL_leftup(@0,@-100,1500);

	CreateColorEXadd("�}ɫ200", 15000, "White");
	Zoom("�}����200", 400, 1000, 1000, null, false);
	Fade("�}����200", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateColorSP("�}ɫ100", 1500, "Black");

	FadeDelete("�}����200", 300, true);
	OnSE("se���L_����_�����01",1000);
	SL_leftupfade2(15);
	OnSE("se���L_����_�����02",1000);
	SL_leftfade2(10);
	Wait(100);
	OnSE("se���L_����_�����01",1000);
	SL_downfade2(10);
	Fade("�}ɫ200", 200, 1000, null, true);
	Delete("�}����200");
	Delete("�}ɫ100");


	StC(1000,@-100,@+450,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	Fade("�}ɫ200", 200, 0, null, true);

	Move("@StC*", 300, @100, @-50, DxlAuto, false);
	FadeStC(300,true);

	SetNwL("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001290e032">
��ʲ������ʧ�ˡ���!?��

{	NwL("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001300e030">
���ġ�����ȥ��!?��������!?��

{	NwL("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001310e034">
�����������棡��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStC(0,true);
	Delete("�}ɫ200");
	Delete("�}����100");
	Delete("�}����200");

//���Σ�ͻ���z��
	CreateTextureSP("�}����10", 50, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	StR(1200,@+500,@+800,"cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	FadeStR(0,true);
	Rotate("@StR*", 0, @0, @180, @30, null,true);
	SetBlur("@StR*", true, 3, 500, 50, false);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

	OnSE("se���L_����_��ͻ�M07",1000);
	Move("@StR*", 200, @-1800, @-1152, Dxl1, true);

	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	DeleteStR(0,true);
	Delete("�}����10");
//���Σ������ޤ�

	CreateTextureSP("�}����10", 50, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	StL(1200,-360,-300,"cg/st/3d����ʽָ�]��_�T��_ͨ��.png");
	StR(1000,140,-440,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");

	FadeStR(0,true);
	FadeStL(0,true);

	Rotate("@StL*", 0, @0, @0, @-10, null,true);
	Request("@StL*", Smoothing);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");




	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0691]
//������㣯�zʿ�ơ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001320e035">
��̫���ˡ�������

{	NwC("cg/fw/nw����L.png");}
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001330e237">
��ǹ����ǹ��
������ǹ��������ͣ����ץס��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���C�|�B��
//����äѤ굱����ͩ`��

	PrintGO("�ϱ���", 10000);

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	DrawDelete("�ϱ���", 200, 100, "slide_01_01_0", true);

	StL(1250,@-1424, @300,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	StR(1200,@-1424, @500,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");

	Zoom("@StR*", 0, 750, 750, null, true);
	Zoom("@StL*", 0, 750, 750, null, true);

	FadeStA(0,true);


	OnSE("se���L_����_��ͻ�M08",800);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_0", true);
	Zoom("@StR*", 600, 500, 500, null, false);
	Zoom("@StL*", 600, 500, 500, null, false);
	BezierMove("@StR*", 600, (@0,@0){@0,@0}{@0,@0}(@+812,@+100){@+1024,@+50}{@+1024,@+50}(@+2748,@-200), Dxl1, false);
	BezierMove("@StL*", 600, (@0,@0){@0,@0}{@0,@0}(@+812,@+100){@+1024,@+50}{@+1024,@+50}(@+3548,@-500), Dxl1, true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	StL(1250, @+2048, @-500,"cg/st/3d����ʽ�o�T��_�T��_���Lc.png");
	StR(1200, @+2048, @-500,"cg/st/3d����ʽ�o�T��_�T��_���Lc.png");

	FadeStR(200,false);
	FadeStL(200,false);

	Request("@StL*", Smoothing);
	Request("@StR*", Smoothing);
	Rotate("@StL*", 0, @0, @0, @+20, null,true);
	Rotate("@StR*", 0, @0, @0, @+10, null,true);

	Wait(300);

	OnSE("se���L_����_��ͻ�M02",1000);
	BezierMove("@StL*", 700, (@0,@0){@0,@0}{@0,@0}(@-512,@+100){@-1024,@+50}{@-1024,@+50}(@-1598,@+900), Dxl1, false);
	BezierMove("@StR*", 700, (@0,@0){@0,@0}{@0,@0}(@-512,@+100){@-1024,@+50}{@-1024,@+50}(@-2350,@+700), Dxl1, true);

	CreateTextureEX("�}����1000", 2100, -1024, Middle, "cg/ev/resize/ev302_94ʽ���_l.jpg");

	CreateTextureEX("�}����500", 2000, Center, Middle, "cg/ev/ev302_94ʽ���.jpg");
	CreateTextureEX("�}����200", 2000, Center, Middle, "cg/ev/ev302_94ʽ���.jpg");

	Move("�}����1000", 1500, @+300, @0, Dxl1, false);
	Fade("�}����1000", 700, 1000, null, true);


	Fade("�}����500", 0, 1000, null, true);
	Fade("�}����200", 0, 1000, null, true);

	Shake("�}����200", 500000, 1, 2, 0, 0, 500, null, false);

	Wait(300);;

	Fade("�}����1000", 300, 0, null, true);

	CreateColorEXadd("�}ɫ100", 15000, "White");

	CreateSE("SE01","se���L_�|��_�C�v�|����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�}ɫ100", 80, 800, null, true);
	Fade("�}ɫ100", 80, 0, null, true);
	Fade("�}ɫ100", 80, 800, null, true);
	Fade("�}ɫ100", 80, 0, null, true);
	Fade("�}ɫ100", 80, 800, null, true);
	Fade("�}ɫ100", 80, 0, null, true);
	Fade("�}ɫ100", 80, 800, null, true);
	Fade("�}ɫ100", 80, 0, null, true);
	Fade("�}ɫ100", 80, 800, null, true);
	Fade("�}ɫ100", 80, 0, null, true);
	Fade("�}ɫ100", 80, 800, null, true);
	Fade("�}ɫ100", 80, 0, null, true);
	Fade("�}ɫ100", 80, 800, null, true);
	Fade("�}ɫ100", 80, 0, null, true);

	Fade("�}ɫ100", 300, 1000, null, true);

	Delete("�}����200");
	Delete("�}����100");
	Delete("�}����500");
	Delete("�}����1000");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	SetVolume("SE01", 500, 0, null);


	Fade("�}ɫ100", 300, 0, null, true);


	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001340e030">
������ģ�����������������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001350e032">
���Y!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@OnSE*", 200, 0, null);

//������һ�W
//���ĉ�
	CreateTextureEX("�}EF100", 5000, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞.jpg");
	Rotate("�}EF100", 0, @0, @180, @0, null,true);
	CreateColorEXadd("�}ɫ100", 6000, "White");
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	SetBlur("�}EF100", true, 5, 500, 50, false);

	OnSE("se���L_����_ͻ�M01",1000);

	Move("�}EF100", 200, @-500, @-200, null, false);
	Fade("�}EF100", 200, 1000, null, true);
	Wait(300);
	Fade("�}ɫ100", 200, 1000, null, true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	Delete("�}EF100");

	CreateTextureSP("�}EF200", 4900, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSPadd("�}EF100", 5000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");
	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");

	OnSE("se���L_����_Ź��05",1000);
	Zoom("�}EF100", 300, 2000, 2000, null, false);
	Fade("�}ɫ100", 200, 0, null, true);

	Shake("�}EF100", 1000, 10, 10, 0, 0, 500, null, false);
	Delete("�}EF200");

	Wait(500);

	CreateTextureEXadd("�}st120", 2200, -655, -691, "cg/ef/ef044_��c.png");
	Rotate("�}st120", 0, @0, @0, 35, null,true);
	CreateTextureEXadd("�}st130", 2200, -332, -323, "cg/ef/ef044_��c.png");
	Rotate("�}st130", 0, @0, @0, 15, null,true);
	CreateTextureEXadd("�}st140", 2200, -666, -330, "cg/ef/ef044_��c.png");
	Rotate("�}st140", 0, @0, @0, 90, null,true);

	OnSE("se���L_����_������01",1000);
	Wait(300);
	Shake("�}����100", 1200, 10, 15, 0, 0, 1000, Dxl1, false);
	FadeDelete("�}EF100", 300,true);

	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001360e030">
���°�!?��

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001370e032">
���Y����û�°ɣ���

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001380e030">
������û�¡�����
���ɶ�����͡�������װ�ױ��˵��ˣ���

//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001390e030">
���ɲ��ˡ�������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001400e034">
�������Y��������!!��

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001410e030">
������������

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣá�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0001420e151">
����������������

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣġ�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0001430e152">
���ٹ���������������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ����
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001440e030">
��������������!?��


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���o����Ź��
	CreateTextureEXadd("�}st150", 2200, 131, -668, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}st160", 2200, 250, -435, "cg/ef/ef044_��c.png");
	Rotate("�}st160", 0, @0, @0, 120, null,true);
	CreateTextureEXadd("�}st170", 2200, -186, -576, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}st180", 2200, -2, -324, "cg/ef/ef044_��c.png");
	Rotate("�}st180", 0, @0, @0, 160, null,true);
	Zoom("�}st*", 0, 500, 500, null, true);
	SetBlur("�}st*", true, 2, 400, 150, false);
	SetTone("�}st*", Sepia);

	CreateSE("SE01L","se���L_����_Ź���B��02_L");
	MusicStart("SE01L",0,1000,0,1000,null,true);

	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");
	Shake("�}����100", 50000, 2, 3, 0, 0, 1000, null, false);
	Rotate("�}st110", 500, @0, @0, @+1800, Dxl1,false);
	Zoom("�}st110", 200, 1300, 1300, Dxl1, false);
	Fade("�}st110", 50, 1000, Dxl1, true);
	Zoom("�}st170", 25, 500, 500, null, false);
	Fade("�}st110", 200, 0, null, false);

	Rotate("�}st120", 500, @0, @0, @+4200, DxlAuto,false);
	Zoom("�}st120", 200, 1100, 1100, Dxl1, false);
	Fade("�}st120", 50, 1000, Dxl1, true);
	Zoom("�}st110", 25, 500, 500, null, false);
	Fade("�}st120", 200, 0, null, false);

	Rotate("�}st130", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("�}st130", 200, 1600, 1600, Dxl1, false);
	Fade("�}st130", 50, 1000, Dxl1, true);
	Zoom("�}st120", 25, 500, 500, null, false);
	Fade("�}st130", 200, 0, null, false);

	Rotate("�}st140", 500, @0, @0, @+7500, null,false);
	Zoom("�}st140", 200, 1100, 1100, Dxl1, false);
	Fade("�}st140", 50, 1000, Dxl1, true);
	Zoom("�}st130", 25, 500, 500, null, false);
	Fade("�}st140", 200, 0, null, false);

	Rotate("�}st150", 500, @0, @0, @+2500, DxlAuto,false);
	Zoom("�}st150", 200, 1400, 1400, Dxl1, false);
	Fade("�}st150", 50, 1000, Dxl1, true);
	Zoom("�}st140", 25, 500, 500, null, false);
	Fade("�}st150", 200, 0, null, false);

	Rotate("�}st160", 500, @0, @0, @+3500, Dxl2,false);
	Zoom("�}st160", 200, 1100, 1100, Dxl1, false);
	Fade("�}st160", 50, 1000, Dxl1, true);
	Zoom("�}st150", 25, 500, 500, null, false);
	Fade("�}st160", 200, 0, null, false);

	Rotate("�}st170", 500, @0, @0, @+3600, Dxl3,false);
	Zoom("�}st170", 200, 1300, 1300, Dxl1, false);
	Fade("�}st170", 50, 1000, Dxl1, true);
	Zoom("�}st160", 25, 500, 500, null, false);
	Fade("�}st170", 200, 0, null, false);

	Rotate("�}st130", 500, @0, @0, @+3000, Dxl1,false);
	Zoom("�}st130", 200, 1400, 1400, Dxl1, false);
	Fade("�}st130", 50, 1000, Dxl1, true);
	Zoom("�}st170", 25, 500, 500, null, false);
	Fade("�}st130", 200, 0, null, false);

	Rotate("�}st140", 500, @0, @0, @+7900, DxlAuto,false);
	Zoom("�}st140", 200, 1700, 1700, Dxl1, false);
	Fade("�}st140", 50, 1000, Dxl1, true);
	Zoom("�}st130", 25, 500, 500, null, false);
	Fade("�}st140", 200, 0, null, false);

	Rotate("�}st150", 500, @0, @0, @+1800, DxlAuto,false);
	Zoom("�}st150", 200, 1600, 1600, Dxl1, false);
	Fade("�}st150", 50, 750, Dxl1, true);
	Zoom("�}st140", 25, 500, 500, null, false);
	Fade("�}st150", 200, 0, null, false);

	Rotate("�}st160", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("�}st160", 200, 1100, 1100, Dxl1, false);
	Fade("�}st160", 50, 1000, Dxl1, true);
	Zoom("�}st150", 25, 500, 500, null, false);
	Fade("�}st160", 200, 0, null, false);

	Rotate("�}st110", 500, @0, @0, @+5400, Dxl1,false);
	Zoom("�}st110", 200, 1200, 1200, Dxl1, false);
	Fade("�}st110", 5, 800, Dxl1, true);
	Zoom("�}st160", 25, 500, 500, null, false);
	Fade("�}st110", 200, 0, null, false);

	CreateColorEX("�\Ļ��", 15000, "BLACK");
	Fade("�\Ļ��", 500, 1000, null, false);

	Rotate("�}st120", 500, @0, @0, @+1800, Dxl1,false);
	Zoom("�}st120", 200, 1300, 1300, Dxl1, false);
	Fade("�}st120", 50, 1000, Dxl1, true);
	Zoom("�}st110", 25, 500, 500, null, false);
	Fade("�}st120", 200, 0, null, false);

	Rotate("�}st130", 500, @0, @0, @+4200, DxlAuto,false);
	Zoom("�}st130", 200, 1100, 1100, Dxl1, false);
	Fade("�}st130", 50, 1000, Dxl1, true);
	Zoom("�}st120", 25, 500, 500, null, false);
	Fade("�}st130", 200, 0, null, false);

	Rotate("�}st140", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("�}st140", 200, 1600, 1600, Dxl1, false);
	Fade("�}st140", 50, 1000, Dxl1, true);
	Zoom("�}st130", 25, 500, 500, null, false);
	Fade("�}st140", 200, 0, null, false);

	Rotate("�}st150", 500, @0, @0, @+7500, null,false);
	Zoom("�}st150", 200, 1100, 1100, Dxl1, false);
	Fade("�}st150", 50, 1000, Dxl1, true);
	Zoom("�}st140", 25, 500, 500, null, false);
	Fade("�}st150", 200, 0, null, false);

	WaitAction("�\Ļ��", null);

	SetVolume("SE01L", 1000, 0, null);
	PrintGO("�ϱ���", 15000);

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	DrawDelete("�ϱ���", 300, 100, "slide_03_01_0", true);

	CreateTextureEX("ɢ�A1", 4000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("ɢ�A1", 0, 2000, 2000, null, true);
	Move("ɢ�A1", 0, -200, @0, null, true);


	CreateTextureEXadd("ɢ�A2", 4000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("ɢ�A2", 0, 1000, 1000, null, true);

	CreateColorEXadd("�}ɫ200", 5000, "White");

	CreateTextureSP("�}����100", 1000, Center, 0, "cg/bg/bg002_��b_03.jpg");
	Delete("�}����10");
	Delete("�}ɫ100");
	Delete("�}EF100");

	StL(1250,@+290,@+300,"cg/st/3d����ʽ�o�T��_�T��_���La.png");
	StR(1200,@+190,@-30,"cg/st/3d����ʽ�o�T��_�T��_���La.png");
	Zoom("@StL*", 0, 1200, 1200, null, true);
	Zoom("@StR*", 0, 600, 600, null, true);

	Rotate("@StL*", 0, @0, @0, @-20, null,true);

	Request("@StL*", Smoothing);
	Request("@StR*", Smoothing);


	CreateTextureEX("�}st100", 1200, Center, InBottom, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Move("�}st100", 0, @+800, @0, Dxl1, true);
	Fade("�}����100", 0, 1000, null, true);
	Rotate("�}st100", 0, @0, @180, @0, null,true);

	FadeStR(0,true);
	FadeStL(0,true);

	SetVertex("�}����100", 0, 512);
	Zoom("�}����100", 0, 2000, 2000, null, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("�\Ļ��");


	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//������㣯�zʿ�š�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001450e034">
���Y���Y������

{	NwC("cg/fw/nw�zʿ��.png");}
//������㣯�zʿ�á�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001460e032">
��ι�����Ƿ����ĳ����𣡡�ǰ�桪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������һ�W
//���ĉ�
//������һ�W
//���ĉ�
	Move("@StR*", 2000, -1200, @0, Dxl1, false);
	Move("@StL*", 2000, -1500, @0, Dxl1, false);
	DeleteStR(500,false);
	DeleteStL(500,false);
	Move("�}����100", 1500, -1024, @0, Dxl1, true);
	OnSE("se���L_����_��ͻ�M02",1000);
	BezierMove("�}st100", 500, (@0,@0){@-500,@150}{@-500,@150}(@-700, @+150), Dxl1, false);
	Fade("�}st100", 300, 1000, null, true);

	Wait(200);

	OnSE("se���L_����_���ϕN01",1000);

	SetBlur("�}st100", true, 3, 500, 50, false);

	BezierMove("�}st100", 1000, (@0,@0){@+400,@-200}{@+400,@-200}(@-524, @+500){@-1524,@-150}{@-1524,@-150}(@-2024, @-600), Dxl1, false);

	Wait(500);
	Fade("�}ɫ200", 300, 1000, null, true);

	Delete("�}st100");

	Fade("ɢ�A1", 0, 1000, null, true);
	Wait(300);

	OnSE("se���L_�Ɖ�_���k01",1000);
	Zoom("ɢ�A1", 300, 1500, 1500, null, false);
	Fade("�}ɫ200", 300, 0, null, true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg002_��b_03.jpg");

	Fade("�}ɫ200", 300, 1000, null, true);
	Delete("ɢ�A1");
	Fade("ɢ�A2", 0, 1000, null, true);
	OnSE("se���L_�Ɖ�_�z02",1000);
	Zoom("ɢ�A2", 300, 2000, 2000, Dxl1, false);
	FadeDelete("�}ɫ200", false);
	FadeDelete("ɢ�A2",1000,true);

//���o�T����һ��
	StL(1200,@-500,@300,"cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	StR(1200,@+400,@0,"cg/st/3d�y�Ǻ�_����_ͨ��b.png");

	OnSE("se���L_����_��ͻ�M02",1000);

	Move("@StL*", 300, @+500, @0, Dxl1, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw�zʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//������㣯�zʿ�ơ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001470e035">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���y�Ǻ�
	OnSE("se����_����_���S03",1000);
	Move("@StR*", 300, @-300, @0, Dxl1, false);
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//������㣯�zʿ�ơ�
<voice name="����㣯�zʿ��" class="����������" src="voice/ma00/0001480e035">
���ӡ��ӳ��������ӵ��£����ȡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������һ�W
//���ĉ�
/*
	CreateColorEX("�}ɫ100", 3000, "Black");
	CreateColorEXadd("�}ɫ200", 10000, "White");
	Fade("�}ɫ100", 100, 1000, null, true);
	DeleteStR(0,true);
	DeleteStL(0,true);
	SL_left(@0,@-100,2000);
	OnSE("se���L_����_Ұ̫�����01",1000);
	SL_leftfade2(10);
	Fade("�}ɫ200", 300, 1000, null, true);
	Delete("�}ɫ100");
	OnSE("se���L_�Ɖ�_�z02",1000);

	Fade("�}ɫ200", 1000, 0, null, true);
*/


	CreateColorEXadd("�}ɫ200", 10000, "White");

	Fade("�}ɫ200", 100, 1000, null, true);
	DeleteStR(0,true);
	DeleteStL(0,true);

	CreateColorEXadd("�}ɫ300", 10000, "White");

	CreateTextureEX("�}EV100", 1000, Center, Middle, "cg/ev/ev301_�y�Ǻť���å���.jpg");
	CreateTextureEX("�}EV200", 500, Center, Middle, "cg/ev/ev301_�y�Ǻť���å���.jpg");
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	SetBlur("�}EV100", true, 3, 500, 100, false);
	Fade("�}EV100", 0, 1000, null, true);
	Fade("�}EV200", 0, 1000, null, true);

	SetVertex("�}EV100", 1024, 0);


	Zoom("�}EV100", 300, 1000, 1000, null, false);
	OnSE("se���L_�Ɖ�_�z02",1000);
	Fade("�}ɫ200", 200, 0, null, true);

	Wait(100);

	Fade("�}ɫ300", 100, 800, null, false);

	Wait(100);

	FadeDelete("�}EV100", 500, false);
	Shake("�}EV100", 500, 5, 6, 0, 0, 500, null, false);
	Zoom("�}EV100", 500, 1600, 1600, null, false);
	Fade("�}ɫ300", 500, 0, Dxl1, false);

	Wait(1500);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("�}EV*");
	Delete("�}ɫ*");
	Delete("�}����*");
	CreateTextureSP("�}����10", 50, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	Fade("�}����100", 0, 1000, null, true);

	StC(1200,-89,-398,"cg/st/3d����ʽָ�]��_�T��_ͨ��.png");

	FadeStC(0,true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");


	SetNwL("cg/fw/nw����L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001490e237">
��������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����L�T


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001500e237">
���㡭���㡭����
����Ȼ���ҵĲ��ӡ��������ˣ����쵰����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɫ���ȹ��ġ�
//��ɫ���ȥ�����

	Move("@StC*", 300, @+500, @-100, Dxl1, false);
	DeleteStC(300,true);
	CreateTextureEX("�}EF100", 10000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	CreateColorEX("�}ɫ100", 1500, "Black");
	SetVertex("�}EF100", 0, 0);
	Zoom("�}EF100", 300, 2000, 2000, Dxl1, false);
	Fade("�}EF100", 200, 1000, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}EF100", 200, 0, null, true);

	CreateColorEXadd("�}ɫ1", 15000, "White");
	CreateTextureEX("�}EF01", 10000, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	CreateTextureEX("�}EF02", 10000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureEX("�}EF03", 10000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	CreateTextureEX("�}EF04", 10000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureEX("�}EF05", 10000, Center, Middle, "cg/ef/ef017_��������܉��.jpg");
	CreateTextureEX("�}EF06", 10000, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");

	Zoom("�}EF0*", 0, 2000, 2000, null, true);

	OnSE("se���L_����_���B��02",1000);
	Zoom("�}EF01", 100, 1000, 1000, Dxl1, false);
	Fade("�}EF01", 50, 1000, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF01");
	Fade("�}EF02", 0, 1000, null, true);
	Zoom("�}EF02", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF02");
	Fade("�}EF03", 0, 1000, null, true);
	Zoom("�}EF03", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF03");
	Fade("�}EF04", 0, 1000, null, true);
	Zoom("�}EF04", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF04");
	Fade("�}EF05", 0, 1000, null, true);
	Zoom("�}EF05", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF05");
	Fade("�}EF06", 0, 1000, null, true);
	Zoom("�}EF06", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF06");
	Delete("�}ɫ100");
	Delete("�}EF100");
	SetVolume("@OnSE*", 300, 0, null);
	FadeDelete("�}ɫ1", 500, true);

	StC(1200,@+500,@+100,"cg/st/3d����ʽָ�]��_�T��_���L.png");
	Request("@StC*", Smoothing);
	Move("@StC*", 300, -140, -440, Dxl1, false);
	FadeStC(300,true);

	WaitKey(100);

	OnSE("se���L_����_ͻ�M01",1000);

	Move("@StC*", 300, 400, -500, Dxl1, false);
	DeleteStC(300,true);

	SetNwL("cg/fw/nw����L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001510e237">
��������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ɫ���ȹ��ġ�
//��ɫ���ȥ�����
//������һ�W
//��ʹ��
	CreateColorEXadd("�}ɫ1", 15000, "White");
	CreateTextureEX("�}EF01", 10000, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	CreateTextureEX("�}EF02", 10000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureEX("�}EF03", 10000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	CreateTextureEX("�}EF04", 10000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureEX("�}EF05", 10000, Center, Middle, "cg/ef/ef017_��������܉��.jpg");
	CreateTextureEX("�}EF06", 10000, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	CreateTextureEX("�}EF07", 10000, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞.jpg");

	Zoom("�}EF0*", 0, 2000, 2000, null, true);

	OnSE("se���L_����_���B��02",1000);
	Zoom("�}EF02", 100, 1000, 1000, Dxl1, false);
	Fade("�}EF02", 50, 1000, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF02");
	Fade("�}EF01", 0, 1000, null, true);
	Zoom("�}EF01", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF01");
	Fade("�}EF04", 0, 1000, null, true);
	Zoom("�}EF04", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF04");
	Fade("�}EF05", 0, 1000, null, true);
	Zoom("�}EF05", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF05");
	Fade("�}EF03", 0, 1000, null, true);
	Zoom("�}EF03", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF03");
	Fade("�}EF06", 0, 1000, null, true);
	Zoom("�}EF06", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 0, null, true);
	Fade("�}ɫ1", 50, 1000, null, true);
	Delete("�}EF06");
	Delete("�}EF100");
	SetVolume("@OnSE*", 300, 0, null);
	StC(1200,@0,@+400,"cg/st/3d����ʽָ�]��_�T��_���L.png");
	FadeStC(0,true);
	Move("@StC*", 300, @+200, @0, null, false);
	Fade("�}ɫ1", 300, 0, null, true);
	OnSE("se���L_����_Ұ̫�����01",1000);
	Fade("�}EF07", 0, 1000, null, true);
	Zoom("�}EF07", 100, 1000, 1000, Dxl1, false);
	Fade("�}ɫ1", 50, 1000, null, true);
	OnSE("se���L_����_Ź��05",1000);
	Delete("�}EF07");
	Move("@StC*", 300, @-200, @0, null, false);
	Shake("@StC*", 500, 10, 10, 0, 0, 500, null, false);
	Shake("�}����100", 500, 10, 10, 0, 0, 500, null, false);
	FadeDelete("�}ɫ1", 500, true);

	SetNwL("cg/fw/nw����L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001520e237">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//������
//���y�Ǻ�
	Move("@StC*", 300, @+1200, @0, null, false);
	DeleteStC(300,true);

	CreateColorEX("�}ɫ1", 2000, "Black");
	CreateColorEXadd("�}ɫ2", 15000, "White");
	SL_centerout(@0,@-100,1000);

	Fade("�}ɫ1", 200, 1000, null, true);
	OnSE("se���L_����_�����01",1000);

	SL_centeroutfade2(10);
	Fade("�}ɫ2", 200, 1000, null, true);

	Delete("�}ɫ1");
	StC(1200,@0,@0,"cg/st/3d�y�Ǻ�_����_ͨ��b.png");
	FadeStC(0,true);
	Wait(200);

	StL(1200,@-50,@+300,"cg/st/3d����ʽָ�]��_�T��_���L.png");

	OnSE("se����_����_���S01",1000);

	Move("@StC*", 300, @+350, @0, null, false);
	Fade("�}ɫ2", 200, 0, null, true);

	FadeStL(300,true);

	SetNwC("cg/fw/nw����L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001530e237">
��������Ȼ�����á�������!?
���ҵĽ������ҵ�����������

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001540e237">
��������ô���¡�����

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001550e237">
���ø����ô��˺�ʿ�����񡭡�
�����־ͶԸ��������������

//������㣯����L��
<voice name="����㣯����L" class="����������" src="voice/ma00/0001560e237">
���㵽���Ǻη���ʥ!!
������ħ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//������һ�W
//���ĉ�
	CreateTextureEX("�}EF100", 5000, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞.jpg");
	CreateColorEXadd("�}ɫ100", 6000, "White");
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	SetBlur("�}EF100", true, 5, 500, 50, false);

	SetVolume("@mbgm34", 500, 0, null);
	OnSE("se���L_����_ͻ�M01",1000);

	Zoom("�}EF100", 500, 1000, 1000, Dxl1, false);
	Fade("�}EF100", 200, 1000, null, true);
	Wait(400);

	Fade("�}ɫ100", 200, 1000, null, true);

	DeleteStC(0,true);
	DeleteStL(0,true);
	Delete("�}EF100");
	CreateTextureSP("�}EF200", 4900, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSPadd("�}EF100", 5000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("�}EF100", 0, 2000, 2000, null, true);

	OnSE("se���L_�Ɖ�_�z02",1000);
	Zoom("�}EF100", 500, 1000, 1000, null, false);
	Fade("�}ɫ100", 200, 0, null, true);

	Shake("�}EF100", 500, 10, 10, 0, 0, 500, null, true);
	Delete("�}EF200");

	FadeDelete("�}EF100", 300,true);


//����դˁФ��y�Ǻ�
	CreatePlainSP("�ϱ���", 15000);
	CreateTextureSP("�y��", 1200, 200, -200, "cg/st/resize/3d�y�Ǻ�_����_ͨ��s.png");

	Move("�y��", 2000, @0, -35, DxlAuto, false);
	FadeDelete("�ϱ���", 300, true);

	WaitAction("�y��",null);

	WaitKey(1000);

//	StC(1200,@0,@-200,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
//	Move("@StC*", 1000, @0, @+200, null, false);
//	FadeStC(300,true);
//	WaitAction("@StC*",null);

	PrintGO("�Ͻ}", 15000);

	Delete("�y��");


	CreateSE("SE01","se��Ȼ_��_��ĵ���");
	MusicStart("SE01",1000,500,0,1000,null,true);


	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");

	FadeDelete("�Ͻ}", 2000, true);



	SetNwC("cg/fw/nw���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//������㣯���ˣš�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0001570e153">
��������������������

{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯���ˣơ�
<voice name="����㣯���ˣ�" class="����������" src="voice/ma00/0001580e154">
���������ع���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��Ź���|����
	CreateSE("SE10","se����_����_�ϑ�01");
	MusicStart("SE10",1000,500,0,1000,null,true);


//���ţ֣�����AȾ

	CreateTextureEX("�}EV100", 10000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	SoundPlay("@mbgm37",0,1000,true);

	Fade("�}EV100", 1000, 1000, null, true);

//���塢���ϡ���åɥޥ������ӣŤǣϣˤ���

//��Ҋ�¤��y�Ǻ�

//	CreateColorEX("���\", 15000, "Black");
//	Fade("���\", 300, 500, null, true);

//�������褳���m��
	CreateTextureEX("Gin_song19", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh19.png");
//�������褳�����
	CreateTextureEX("Gin_song20", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh20.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song20", 0, @0, @+10, null, true);

	SetBacklog("�����������������޸裬�ص���Ц��ƣ����Թ�ޡ�", null, null);
	Move("Gin_song19", 1000, @0, @-10, null, false);
	Fade("Gin_song19", 1000, 1000, null, false);

	WaitKey(2000);

	SetBacklog("���������������⵻�棬���Է�ŭ�������ϲ�á�", null, null);
	Move("Gin_song20", 1000, @0, @-10, null, false);
	Fade("Gin_song20", 1000, 1000, null, true);

	WaitKey();

	Fade("Gin_song19", 500, 0, null, false);
	Fade("Gin_song20", 500, 0, null, true);
	Delete("Gin_song*");

//�룺�ƥ�å�׷�ӤΤ����˱�
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]






�����������������޸裬�ص���Ц��ƣ����Թ�ޡ�
���������������⵻�棬���Է�ŭ�������ϲ�á�

</PRE>
	SetTextA();
	TypeBeginAI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/


//���تz�}��


	CreateTextureEX("Gin_song21", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh21.png");
	CreateTextureEX("Gin_song22", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh22.png");
	CreateTextureEX("Gin_song23", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh23.png");
	CreateTextureEX("Gin_song24", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh24.png");

	Move("Gin_song21", 0, @0, @-80, null, true);
	Move("Gin_song22", 0, @0, @-40, null, true);
	Move("Gin_song23", 0, @0, @0, null, true);
	Move("Gin_song24", 0, @0, @+40, null, true);

	SetBacklog("�����뽣����֮�����b�������֮������", null, null);
	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("��Ϊ�ڰ��뾲�����ػ�������֮�������ᴿ�����ҫ��԰ɡ�", null, null);
	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�", null, null);
	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("����񣬶�����ǰ���ּ������������Ǹ���֮���顷", null, null);
	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song21", 500, 0, null, false);
	Fade("Gin_song22", 500, 0, null, false);
	Fade("Gin_song23", 500, 0, null, false);
	Fade("Gin_song24", 500, 0, null, true);
	Delete("Gin_song*");

/*
//�룺��ӛλ���{���Τ��᥹�ک`��׷��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]





�����뽣����֮�����b�������֮������
��Ϊ�ڰ��뾲�����ػ�������֮�������ᴿ�����ҫ��԰ɡ�
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�
����񣬶�����ǰ���ּ������������Ǹ���֮���顷

</PRE>
	SetTextA();
	TypeBeginAI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/


//	Fade("���\", 300, 0, null, true);
//���y�Ǻ�
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	Fade("�}����100",0,1000,null,true);


	FadeDelete("�}EV100",1000,true);

	CreateTextureEX("�}�y��", 1200, 200, -35, "cg/st/resize/3d�y�Ǻ�_����_ͨ��s.png");
	Fade("�}�y��", 300, 1000, null, true);


//	Fade("���\", 300, 500, null, false);


//����������K����
	CreateTextureEX("Gin_song01", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh25.png");

	Move("Gin_song01", 0, @0, @-40, null, true);

	SetBacklog("������֮���顭����", null, null);
	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey();

	Fade("Gin_song01", 500, 0, null, true);
	Delete("Gin_song*");

//�룺�ƥ�å�׷�ӤΤ����˱�
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]






������֮���顭����

</PRE>
	SetTextA();
	TypeBeginAI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//	Fade("���\", 300, 0, null, true);

//���Τ��˚ݸ����y�Ǻ�
//��ȼ����塣���ߤ����ؤ�����



	PrintGO("�ϱ���", 15000);

	SetVolume("OnSE*",6000, 0, null);
	SetVolume("SE*",6000, 0, null);
	SetVolume("@mbgm37",6000, 0, null);

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");

	Fade("�ϱ���", 500, 0, null, true);

	Wait(2000);

	CreateColorEX("�}ɫ100", 1500, "Black");
	CreateColorEX("�}ɫ200", 17000, "Black");
	Fade("�}ɫ100", 500, 1000, null, true);

	MovieSESet(16000,"mv�����ǈ�","se����_mv��_�����ǈ�");
	MovieSEStart2(300,0);
	Fade("�}ɫ200", 300, 1000, null, true);
	Delete("�}ɫ100");
	FadeDelete("�}ɫ200", 500, true);

/*
	CreateSE("SE10","se����_����_�z�i��01_L");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Wait(5000);

	SetVolume("SE10", 500, 0, null);
*/

	StC(1500,@10,@10,"cg/st/3d��������_����_ͨ��.png");

	OnSE("se���L_����_�z_̤���z��01",1000);

	Move("@StC*", 300, @-10, @-10, Dxl1, false);
	FadeStC(300,true);

	Wait(1000);

	CreateTextureEX("�}ST100", 2000, -500, 576, "cg/st/3d��������_����_ͨ��.png");
	Request("�}ST100", Smoothing);
	Zoom("�}ST100", 0, 1400, 1400, null, true);

	Fade("@StC*", 3000, 500, null, false);
	Fade("�}ST100", 3000, 1000, null, false);
	Move("�}ST100", 3000, @0, @-650, Dxl1, true);

	Wait(1000);

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0831]
//��������
<voice name="����" class="����" src="voice/ma00/0001590a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�ϱ���", 500, 1000, null, true);
	Fade("@StC*", 0, 1000, null, true);
	Delete("�}ST100");

	Wait(1000);

	SetFwL("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0832]
//���⡿
<voice name="��" class="��" src="voice/ma00/0001600a14">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//	Wait(1000);

	FadeDelete("�ϱ���", 500, true);

	StC(1500,@0,@0,"cg/st/3d��������_����_�i��.png");
	OnSE("se���L_����_������01",1000);
	FadeStC(300,true);

	Wait(1000);

	CreatePlainSP("�ϱ���", 10000);

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	Fade("�}����100",0,1000,null,true);

	StC(1200,@0,@0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStC(0,true);
	Rotate("@StC*", 0, @0, @180, @0, null,true);

	Fade("�ϱ���",300,0,null,true);

	OnSE("se�ճ�_���_�²���01",500);
	Move("@StC*", 3000, @-200, @0, Dxl1, true);

	CreatePlainSP("�ϱ���", 10000);

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");
	Fade("�}����100",0,1000,null,true);
	CreateTextureEX("�}EF100", 5000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	StC(1200,@0,@0,"cg/st/3d��������_����_�i��.png");
	FadeStC(0,true);

	FadeDelete("�ϱ���",500,true);


	OnSE("se���L_����_���ϕN01",1000);
	Wait(200);

	CreateTextureSP("�}����", 1200, 80, -160, "cg/st/3d��������_�T��_���L.png");
	Request("�}����", Smoothing);
	Rotate("�}����", 0, @0, @0, @40, null,true);

	DeleteStC(0,true);

	Move("�}����", 300, @-700, @-1000, Dxl1, false);
	FadeDelete("�}����", 300, false);

	Wait(200);

	Fade("�}EF100", 200, 1000, null, true);

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	Fade("�}����100",0,1000,null,true);


	StC(1200,@-200,@0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	Rotate("@StC*", 0, @0, @180, @0, null,true);
	FadeStC(0,true);

	FadeDelete("�}EF100", 200, true);

	OnSE("se���L_����_��ͻ�M03",1000);

	CreateTextureSP("�}�y��", 1200, -160, -240, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Request("�}�y��", Smoothing);
	Rotate("�}�y��", 0, @0, @0, @40, null,true);

	DeleteStC(0,true);


	Move("�}�y��", 300, @+700, @+1000, Dxl1, false);
	FadeDelete("�}�y��", 300, true);

	CreateColorEXadd("�}ɫ100", 15000, "White");
	CreateTextureEX("�}EF100", 5000, Center, Middle, "cg/ef/ef020_����ͻ؞04.jpg");
	CreateTextureEX("�}EF200", 6000, Center, Middle, "cg/ef/ef019_�y�Ǻ�ͻ؞04.jpg");

	SetVertex("�}EF100", 0, 576);
	SetVertex("�}EF200", 1024, 0);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	Zoom("�}EF200", 0, 2000, 2000, null, true);
	Fade("�}ɫ100", 200, 1000, null, true);
	Fade("�}EF100",0,1000,null,true);
	Shake("�}EF100", 1000, 3, 3, 0, 0, 500, null, false);
	Move("�}EF100", 600, -612, 300, Dxl1, false);
	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("�}ɫ100", 500, 0, null, true);
	Fade("�}ɫ100", 500, 1000, null, true);
	Fade("�}EF200",0,1000,null,true);
	Shake("�}EF200", 1000, 3, 3, 0, 0, 500, null, false);
	Move("�}EF200", 600, 612, -300, Dxl1, false);
	OnSE("se���L_����_��ͻ�M01",1000);
	Fade("�}ɫ100", 500, 0, null, true);
	Fade("�}ɫ100", 500, 1000, null, true);
	Fade("�}EF200",0,0,null,true);
	Zoom("�}EF100", 0, 1200, 1200, null, true);
	Zoom("�}EF200", 0, 1200, 1200, null, true);
	Request("�}EF100", Smoothing);
	Request("�}EF200", Smoothing);
	Move("�}EF100", 0, 0, 0, Dxl1, true);
	Move("�}EF200", 0, 0, 0, Dxl1, true);
	OnSE("se���L_����_���ϕN01",1000);
	Shake("�}EF100", 1000, 1, 1, 0, 0, 500, null, false);
	Fade("�}ɫ100", 500, 0, null, true);
	Fade("�}ɫ100", 500, 1000, null, true);
	Fade("�}EF200",0,1000,null,true);
	OnSE("se���L_����_���ϕN01",1000);
	Shake("�}EF200", 1000, 1, 1, 0, 0, 500, null, false);
	Fade("�}ɫ100", 500, 0, null, true);
	Fade("�}ɫ100", 500, 1000, null, true);
	Delete("�}EF100");
	Delete("�}EF200");
	CreateColorSP("�}ɫ200", 4000, "Black");
	CreateWindow("������ɥ���", 5000, 0, 0, 1024, 288, true);
	CreateWindow("������ɥ���", 5000, 0, 288, 1024, 576, true);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");
	CreateTextureEX("������ɥ���/�}EF100", 5000, 0, -200, "cg/ef/ef020_����ͻ؞04.jpg");
	CreateTextureEX("������ɥ���/�}EF200", 6000, 0, -100, "cg/ef/ef019_�y�Ǻ�ͻ؞04.jpg");

	CreateTextureEX("�}EF100", 7000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Request("�}EF100", Smoothing);
	Rotate("�}EF100", 0, @0, @180, @0, null,true);
	Zoom("�}EF100", 0, 1200, 1200, null, true);

	Fade("�}ɫ100", 500, 0, null, false);

	Fade("������ɥ���/�}EF100", 0, 1000, null, false);
	DrawTransition("������ɥ���/�}EF100", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);

	Fade("������ɥ���/�}EF200", 0, 1000, null, false);
	DrawTransition("������ɥ���/�}EF200", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_1.png", true);

	OnSE("se���L_�n��_�nͻ01",1000);

	Fade("�}ɫ100", 0, 700, null, false);
	DrawTransition("�}ɫ100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("�}ɫ100", 500, 1000, null, true);

	Fade("�}EF100", 0, 1000, null, true);
	Shake("�}EF100", 5000, 1, 1, 0, 0, 500, null, false);

	Wait(200);
	OnSE("se���L_�n��_�nͻ01",1000);

	Delete("���\");
	Delete("������ɥ�*");
	Delete("�}ɫ200");

//	SL_up(@0,@0,2000);

	Fade("�}ɫ100", 500, 0, null, true);
	Zoom("�}EF100", 250, 2500, 2500, Dxl1, false);
	Wait(100);
	Fade("�}ɫ100", 500, 1000, null, true);
	Delete("�}EF100");

	FadeDelete("�}ɫ100", 1500, true);

	CreateSE("SE01","se���L_����_�ґ�02");
	MusicStart("SE01",0,500,0,1000,null,true);


//���y�Ǻ�

//������
//�����㥭���Ұ̫���򘋤���

//���y�Ǻ�

//�������w�S
//��ͻ�M

//���y�Ǻ�

//���y�Ǻ��w��
//���yɫ����
//����ɫ����
//���l���`���������Ĥ�܉�E
//��ҹ�ա���ͻ�ΣӣŤϾ@�A��


//	RFlash();

	SoundPlay("@mbgm31",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
�������������Ǵ�������ʣ���֯�����ơ�

����ɫ��������ǰ�������
����ɫ�������¹����ӯ��

�������ô���ҹ�ա�
��Ц��������ҹ�ա�

����ɫ�����������޵���������̫����
����ɫ��������ӵ�������Ღ��̫����

  ��ŭ���������ںޡ���̾��
����ϲ�á���ο�����ݡ�����ӭ�ӡ�

������Ļ����
����ҹ�����һĻ�������һĻ���Ƶľ�����

������
�����ǣ���ˡ�

�����ǽ��ᡣ

������ˣ��
���Ǹ��ŵĹ������д������Ȥ���˵����֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	RFlashDelete();

	CreateTextureSP("�}����100", 1000, Center, 0, "cg/bg/bg001_��a_03.jpg");

	StC(1500,@-60,@+300,"cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Rotate("@StC*", 0, @0, @0, @280, null,false);
	Request("@StC*", Smoothing);
	FadeStC(0,true);

	StR(1500,@0,@576,"cg/st/3d��������_�T��_���L.png");
	Zoom("@StR*", 0, 1200, 1200, null, true);

	Rotate("@StR*", 0, @0, @0, @90, null,false);
	Request("@StR*", Smoothing);

	SetVolume("SE*", 500, 0, null);

	Move("@StC*", 300, @-20, @-20, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);


	OnSE("se���L_����_��ͻ�M01",1000);
	Move("@StC*", 500, @-300, @-1000, Dxl1, false);
	DeleteStC(300,false);

	Wait(300);

	Move("@StR*", 150, 200, -40, Dxl1, false);
	FadeStR(200,true);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("@StR*", 1000, @-300, @-1200, Dxl1, false);
	DeleteStR(300,false);

	Wait(250);

	CreateColorEXadd("��ܞ", 25000, "#FFFFFF");
	Fade("��ܞ", 300, 1000, null, true);

	CreateTextureEX("�}EF100", 2000, Center, 0, "cg/ef/ef019_�y�Ǻ�ͻ؞03.jpg");
	Rotate("�}EF100", 0, @180, @0, @0, null,true);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	Move("�}EF100", 0, -512, -288, Dxl1, false);
	Request("�}EF100", Smoothing);
	SetBlur("�}EF100", true, 3, 500, 50, false);

	CreateTextureSP("�}����100", 1000, Center, 0, "cg/bg/bg002_��a_03.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	Move("�}����100", 0, @0, -288, Dxl1, false);

	DrawDelete("��ܞ", 200, 100, "slide_06_00_1", true);

	OnSE("se���L_����_���ϕN01",1000);
	Move("�}EF100", 500, 0, 0, Dxl1, false);
	Zoom("�}EF100", 500, 1000, 1000, Dxl1, false);
	Fade("�}EF100", 1000, 1000, null, true);

	Move("�}����100", 0, 0, 0, Dxl1, true);
	Zoom("�}����100", 0, 1000, 1000, null, true);
	Fade("�}EF100", 500, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
��������������衣
�����Ҳ׷����ϡ�

��������
������������

�������칬�������Ĺ��
��ӭ����֮����֮�ˣ�
�ܾ���֮����֮�ˡ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�룺������Ф����Ǥ⤦һ�ݳ�
//���Σ��Ȥꤢ�������Ȥ���

	CreateTextureEX("�}EF100", 2000, Center, 0, "cg/ef/ef019_�y�Ǻ�ͻ؞03.jpg");
	CreateTextureEX("�}EF200", 2500, Center, 0, "cg/ef/ef020_����ͻ؞03.jpg");
	CreateTextureEX("�}EF300", 3000, Center, 0, "cg/ef/ef019_�y�Ǻ�ͻ؞04.jpg");
	Zoom("�}EF300", 0, 2000, 2000, null, true);
	Request("�}EF300", Smoothing);
	Rotate("�}EF100", 0, @180, @0, @0, null,true);
	Rotate("�}EF300", 0, @180, @0, @320, null,true);
	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("�}EF100", 200, 1000, null, false);
	Fade("�}EF200", 200, 500, null, true);
	Wait(200);
	Fade("�}EF300", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0861]
����ɫ�����������ޱߵ���ʡ�
����ɫ�Ĺ�����ͬ�������ٻذ㱻���������롣

�������춥�İ������ǡ�

�����ӯ�������µ���ԣ����������������ľ�����
��������������ϵ������

��ͷ����Ĵ�������һĨ΢Ц������һ��ʫ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 500, 0, null);

	CreateTextureEX("�}����100", 3500, Center, 0, "cg/bg/bg002_��a_03.jpg");
	Fade("�}����100", 1000, 1000, null, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

	#voice_on_�y�Ǻ�=true;

	SetBacklog("��������������ʧ���D�DС���ǡ�", "voice/ma00/0001610a14", ��);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//���⡿
<voice name="��" class="��" src="voice/ma00/0001610a14">
��
��������������׹�䡪��С���ǡ���

</PRE>
	SetTextEXC();
	Request("@text0860", NoLog);
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�������󡤥쥤�ǥ��Х�
//���ߡ��Ȥ��鼱���¡�����ֱ�Ϥǻ�ܞ���७�å���
//����ͻ���ĉ�

//�룺����ä�����
//�Σ���������
/*
	CreateTextureEX("�}ev50", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	CreateTextureSP("�}ev40", 9000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	CreateTextureEX("�}ev60", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	SetBlur("�}ev60", true, 3, 500, 100, false);

	CreateTextureEX("�}ev100", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	CreateTextureEX("�}ev200", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_b.jpg");
	CreateTextureEX("�}ev300", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_c.jpg");
	CreateTextureEX("�}ev400", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");

	CreateTextureEX("�}ev410", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");
	SetBlur("�}ev410", true, 3, 500, 100, false);

	CreateColorEX("�}ɫ1000", 15000, "White");
	CreateColorEX("�}ɫ100", 17000, "Black");

	OnSE("se����_����_���S03",1000);
	CreateColorEXadd("�ե�å����", 15000, "WHITE");

	Fade("�}ɫ1000", 0, 1000, null, true);
	SetVertex("�}ev50", 0, 0);
	Zoom("�}ev50", 0, 2000, 2000, Dxl1, true);
	Fade("�}ev50", 0, 1000, null, true);
	SetBlur("�}ev50", true, 3, 500, 100, false);
//	Move("�}ev50", 1500, -1024, -576, Dxl2, false);
	Move("�}ev50", 0, -1024, -576, Dxl2, false);
	Request("�}ev50", Smoothing);
	Fade("�}ɫ1000", 1000, 500, null, true);
	Fade("�}ɫ1000", 1000, 0, null, false);
//	OnSE("se���L_����_��ͻ�M03",1000);
	OnSE("se����_��x_�k��01",1000);
	Move("�}ev50", 1500, @+1024, @+576, Dxl2, true);

//	Wait(500);
*/

	CreateColorEXadd("��", 10000, "WHITE");

	Fade("��",200,1000,null,true);

	MovieSESet(16000,"mvС����_a","se����_mv��_С����_a");
	MovieSEStart2(300,1000);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");

	Fade("�ե�å����",500,1000,null,true);

	Delete("��");

	Wait(500);

//	CreateSE("SE01","se���L_�Ɖ�_���k01");
//	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ1000", 500, 1000,null,true);
	Delete("�}ev*");
	Delete("�}EF*");
	Delete("�}����*");

	CreateColorEX("�}ɫ100", 17000, "Black");
//���֥�å�������
//����������
	Fade("�}ɫ100", 1500, 1000,null,true);
	Delete("�}ɫ1000");
	Delete("�ե�å����");
	Wait(2000);

	SetVolume("SE01", 1500, 0, null);

//���Ĥ�Ұ������������
	CreateTextureSP("�}ev10", 1000, -300, InBottom, "cg/ev/resize/ev101_�ץ��`��_a.jpg");
	CreateTextureEX("�}ev20", 1000, -700, 0, "cg/ev/resize/ev101_�ץ��`��_a.jpg");
	CreateTextureEX("�}ev100", 1000, Center, Middle, "cg/ev/ev101_�ץ��`��_a.jpg");
	CreateTextureEX("�}ev200", 1200, Center, Middle, "cg/ev/ev101_�ץ��`��_b.jpg");
	CreateTextureEX("�}ev300", 2000, Center, Middle, "cg/ev/ev101_�ץ��`��_c.jpg");

	CreateSE("SE01","se��Ȼ_��_��ĵ���");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(1500);

	Move("�}ev10", 6000, @+300, @0, AxlDxl, false);
	Fade("�}ɫ100", 1500, 0,null,true);

	Wait(3000);

	Move("�}ev20", 6000, @-300, @0, AxlDxl, false);
	Fade("�}ev20", 1000, 1000,null,true);

	Wait(3000);

	Fade("�}ev100", 1000, 1000,null,true);

//�����奤�`����褤������y�Ǻš��������Ϥ˸��[

	SetFwC("cg/fw/fw��������_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��������
<voice name="����" class="����" src="voice/ma00/0001620a00">
���������Ǻš�����

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma00/0001630a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ1000", 15000, "White");
	Fade("�}ɫ1000", 500, 1000,null,true);

//���������֤���Ф��y�Ǻš�������Ұ̫�����פ��`�ȸ�����
	Fade("�}ev200", 0, 1000,null,true);

	Fade("�}ɫ1000", 1000, 0,null,true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//��������
<voice name="����" class="����" src="voice/ma00/0001640a00">
���ҵ�Ұ̫��������
���������ʲô������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma00/0001650a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�}ɫ100", 15000, "White");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 200, 1000, null, true);

	Fade("�}ev300", 0, 1000,null,true);
	Delete("�}ev100");
	Delete("�}ev200");
	FadeDelete("�}ɫ100", 300, true);
//���ѥ��`��ȸ��������ե�å��塣
//��Ұ̫�����߂��ι�����ˉ��äƤ���

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//��������
<voice name="����" class="����" src="voice/ma00/0001660a00">
���������ѡ���������

//��������
<voice name="����" class="����" src="voice/ma00/0001670a00">
��ס�֡���������ɢ�����𣡡�

//��������
<voice name="����" class="����" src="voice/ma00/0001680a00">
����Ҫ����������𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/bg/bg001_��a_03.jpg");
	Fade("�}����100", 0, 1000, null, true);

//	StC(1200,@0,@0,"cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
//	FadeStC(0,true);
	CreateSE("SE02","se���L_����_���ϕN01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("�}ev300", 300, true);

//���ҥ���w�����ȹ��˥磻�ץ�����
//��ҹ��


	Wait(100);

//	CreateSE("SE02","se���L_����_ͻ�M01");
//	MusicStart("SE02",0,1000,0,1000,null,false);

//	Move("@StC*", 300, @+1000, @-100, null, false);
//	DeleteStC(300,true);


	CreateTextureEX("�}����200", 1000, Center, Middle, "cg/bg/bg004_�ɤӤ���b_03.jpg");
	CreateSE("SE01a","se��Ȼ_��_��ĵ���");
	MusicStart("SE01a",500,1000,0,1000,null,true);

	Fade("�}����200", 1000, 1000, null, true);
	Delete("�}����100");

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//��������
<voice name="����" class="����" src="voice/ma00/0001690a00">
���ȵȣ���

//��������
<voice name="����" class="����" src="voice/ma00/0001700a00">
���ȵȡ���������

//��������
<voice name="����" class="����" src="voice/ma00/0001710a00">
�����������⡭����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�Σ����¡����ȥ����ߥ��������ޤ���
	CreateColorEX("ɫ100", 20000, "Black");
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 4000, 0, null);
	Fade("ɫ100", 2000, 1000, null, true);

	DeleteStA(0,true);
	Delete("�}*");

	CreateTextureEX("logo001", 1000, Center, Middle, "cg/sys/Telop/lg_under.png");
	CreateTextureEX("logo002", 1000, Center, Middle, "cg/sys/Telop/lg_muramasa.png");

	CreateTextureEX("logo003", 1000, Center, Middle, "cg/sys/Telop/lg_װ.png");
	CreateTextureEX("logo004", 1000, Center, Middle, "cg/sys/Telop/lg_��.png");
	CreateTextureEX("logo005", 1000, Center, Middle, "cg/sys/Telop/lg_��.png");
	CreateTextureEX("logo006", 1000, Center, Middle, "cg/sys/Telop/lg_��.png");
	CreateTextureEX("logo007", 1000, Center, Middle, "cg/sys/Telop/lg_��.png");
	CreateTextureEX("logo008", 1000, Center, Middle, "cg/sys/Telop/lg_��.png");

	CreateTextureEX("logo009", 400, Center, Middle, "cg/sys/Telop/lg_����.jpg");
	CreateTextureEX("logo010", 900, Center, Middle, "cg/sys/Telop/lg_�°�.jpg");

	CreateStencil("�ޥ�����",16100,center,Middle,128,"cg/sys/Telop/lg_under.png",false);
	CreateColor("�ޥ�����/logoM100", 16100, 0, 0, 1024, 576, #990000);
	Fade("�ޥ�����/logoM100", 0, 0, null, true);
	Zoom("�ޥ�����/logoM100", 0, 1100, 1100, null, true);

	CreateStencil("�ޥ�����",16100,center,Middle,128,"cg/sys/Telop/lg_װ.png",false);
	CreateColor("�ޥ�����/logoM001", 16100, 0, 0, 1024, 576, "White");
	Fade("�ޥ�����/logoM001", 0, 0, null, true);

	CreateStencil("�ޥ�����",16100,center,Middle,128,"cg/sys/Telop/lg_��.png",false);
	CreateColor("�ޥ�����/logoM002", 16100, 0, 0, 1024, 576, "White");
	Fade("�ޥ�����/logoM002", 0, 0, null, true);

	CreateStencil("�ޥ�����",16100,center,Middle,128,"cg/sys/Telop/lg_��.png",false);
	CreateColor("�ޥ�����/logoM003", 16100, 0, 0, 1024, 576, "White");
	Fade("�ޥ�����/logoM003", 0, 0, null, true);

	CreateStencil("�ޥ�����",16100,center,Middle,128,"cg/sys/Telop/lg_��.png",false);
	CreateColor("�ޥ�����/logoM004", 16100, 0, 0, 1024, 576, "White");
	Fade("�ޥ�����/logoM004", 0, 0, null, true);


	CreateStencil("�ޥ�����",16100,center,Middle,128,"cg/sys/Telop/lg_��.png",false);
	CreateColor("�ޥ�����/logoM005", 16100, 0, 0, 1024, 576, "White");
	Fade("�ޥ�����/logoM005", 0, 0, null, true);

	CreateStencil("�ޥ�����",16100,center,Middle,128,"cg/sys/Telop/lg_��.png",false);
	CreateColor("�ޥ�����/logoM006", 16100, 0, 0, 1024, 576, "White");
	Fade("�ޥ�����/logoM006", 0, 0, null, true);

	Request("�ޥ�����/logoM001", AddRender);
	Request("�ޥ�����/logoM002", AddRender);
	Request("�ޥ�����/logoM003", AddRender);
	Request("�ޥ�����/logoM004", AddRender);
	Request("�ޥ�����/logoM005", AddRender);
	Request("�ޥ�����/logoM006", AddRender);

	CreateColorSP("�}ɫ100", 500, "Black");
	Delete("ɫ100");

	Wait(4000);

	OnSE("se���L_����_���nͻ02",800);
	Fade("�ޥ�����/logoM001", 100, 1000, Dxl1, true);
	Fade("logo003", 0, 1000, null, true);
	Fade("�ޥ�����/logoM001", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se���L_����_���nͻ02",800);
	Fade("�ޥ�����/logoM002", 100, 1000, Dxl1, true);
	Fade("logo004", 0, 1000, null, true);
	Fade("�ޥ�����/logoM002", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se���L_����_���nͻ02",800);
	Fade("�ޥ�����/logoM003", 100, 1000, Dxl1, true);
	Fade("logo005", 0, 1000, null, true);
	Fade("�ޥ�����/logoM003", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se���L_����_���nͻ02",800);
	Fade("�ޥ�����/logoM004", 100, 1000, Dxl1, true);
	Fade("logo006", 0, 1000, null, true);
	Fade("�ޥ�����/logoM004", 300, 0, Axl1, true);

	Wait(1500);

	OnSE("se����_�z_װ��03",800);

	Fade("�ޥ�����/logoM005", 100, 1000, Dxl1, false);
	Fade("�ޥ�����/logoM006", 100, 1000, Dxl1, true);
	Fade("logo001", 300, 1000, null, false);
	Fade("logo002", 300, 1000, null, false);
	Fade("logo007", 0, 1000, null, false);
	Fade("logo008", 0, 1000, null, true);
	Fade("�ޥ�����/logoM005", 500, 0, Dxl1, false);
	Fade("�ޥ�����/logoM006", 500, 0, Dxl1, true);


	WaitKey(5000);

//���ե��`�ɥ�����
	ClearWaitAll(3000, 2000);


..//������ָ��
//�Υե����롡"ma01_001.nss"

//�����ȥ뻭�档����ʤ���ݳ���





}


.//ma00_fire
function ma00_fire(){


	CreateTextureEX("fire_Move01", 1000, 0, -388, "cg/bg/resize/bg004_�ɤӤ���b_02.jpg");
	Request("fire_Move01", Smoothing);

	CreateColor("fire_Move02", 2500, 0, 0, 1024, 576, #a44809);
	Fade("fire_Move02", 0, 0, null, true);
	SetAlias("fire_Move02","fire_Move02");
	Request("fire_Move02", AddRender);

	CreateProcess("�", 150, 0, 0, "ma00_fireProcess");
	SetAlias("�","�");
	Request("�", Start);

}

.//ma00_fireDelete
function ma00_fireDelete(){

	Delete("@fire_Move01");
	Delete("@fire_Move02");
	Delete("@�");

}

.//ma00_fireProcess
function ma00_fireProcess(){

��begin:

	$ma00_t01 = 150;
	$ma00_t02 = 180;
	$ma00_t03 = 300;
	$ma00_t04 = 200;
	$ma00_t05 = 150;
	$ma00_t06 = 400;
	$ma00_t07 = 140;
	$ma00_t08 = 200;
	$ma00_t09 = 220;
	$ma00_t10 = 160;

	$ma00_f01 = 80;
	$ma00_f02 = 60;
	$ma00_f03 = 120;
	$ma00_f04 = 150;
	$ma00_f05 = 60;
	$ma00_f06 = 200;
	$ma00_f07 = 130;

	Move("@fire_Move01", 100000, @-1024, @0, null, false);

	Fade("@fire_Move01", 0, 1000, null, true);

	DrawTransition("@fire_Move02", 0, 0, 200, 800, null, "cg/data/slide_02_00_1.png", true);

	while(1){
		Fade("@fire_Move02", $ma00_t01, $ma00_f01, null, true);
		Fade("@fire_Move02", $ma00_t02, $ma00_f02, null, true);
		Fade("@fire_Move02", $ma00_t03, $ma00_f03, null, true);
		Fade("@fire_Move02", $ma00_t04, $ma00_f04, null, true);
		Fade("@fire_Move02", $ma00_t05, $ma00_f05, null, true);
		Fade("@fire_Move02", $ma00_t06, $ma00_f06, null, true);
		Fade("@fire_Move02", $ma00_t07, $ma00_f07, null, true);
		Fade("@fire_Move02", $ma00_t08, $ma00_f02, null, true);
		Fade("@fire_Move02", $ma00_t09, $ma00_f03, null, true);
		Fade("@fire_Move02", $ma00_t10, $ma00_f05, null, true);
		Fade("@fire_Move02", $ma00_t05, $ma00_f04, null, true);
	}


}

..//ma00_FireMoveAuto
function ma00_FireMoveAuto(){


	CreateProcess("fire_moveauto", 150, 0, 0, "ma00_FireMoveAutoProcess");
	SetAlias("fire_moveauto","fire_moveauto");
	Request("fire_moveauto", Start);

}

..//ma00_FireMoveAutoProcess
function ma00_FireMoveAutoProcess(){

	begin:

	while(1){
		Zoom("@fire_Move02", 2500, 1300, 1300, null, true);
		Zoom("@fire_Move02", 2500, 1800, 1800, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1300, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1600, null, true);
		Zoom("@fire_Move02", 2500, 1800, 1000, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1700, null, true);
	}

}

function ma00_FireMoveAutoDelete(){

	Delete("@fire_moveauto");

}



//������������������������������������������������

