//<continuation number="250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_020.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg019_��У����_01=true;
	#ev105_���줿С��_e=true;
	#ev105_���줿С��_f=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_021.nss";

	//��ꥳ�쥯������á���������������
	ReConquest();
	#ma01_020=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene ma01_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================
..//������ָ��
//ǰ�ե����롡"ma01_019.nss"

	SoundPlay("@mbgm29",1000,1000,true);

//���У��
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg019_��У����_01.jpg");

	FadeDelete("�ϱ���", 1000, true);

//============================================
//��ꥳ�쥯������á���������������
}else{
	//״�B���x
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg019_��У����_01.jpg");

	//�ꥳ����Ĩ��
	RecoIn();
	SoundPlay("@mbgm29",1000,1000,true);
}
//========================================================


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200010b57">
�����ǡ�
���������Ƕ����ָ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200020b57">
��ǿ������Ұ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������������������

���ұ��ٻ���̧��ͷ��
���ÿն����������������ߡ�

�������ġ���δմһ˿Ѫ���ĵ�����ָ��ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200030b57">
�������Ļ�������<RUBY text="����������">ͬ�����³�</RUBY>��
����ô�죿��

{	FwC("cg/fw/fw�ұ�_�Ӥ�.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0200040b43">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������⡣
������С�ġ�
��Ȼ����ɢ��һ�ص�<RUBY text="������">������</RUBY>��

���ұ���������������
����֫����أ�����С�ĵ����塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200050b57">
��������Ͷ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ף����
���ұ���������һ�У�������ѩ�׵����塣

���������ˣ�
������<RUBY text="����������������������������">û��һ�����Գ�֮Ϊ�˿ڵĶ���</RUBY>����
��С�ĵ����塣

����������������İ�ɫ���Ǹ���

{	OnSE("se����_����_�٥���⤹",1000);}
���ұ���Ƥ��������졣
�����ܿص���ָ���ƺ����ǽ⿪���۾��൱���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200060b57">
��ʹ��������ܡ�
�����Ŀ־�Ҳ���Եֿ���
��Ȼ����<RUBY text="������������">�����ܵ��ƻ�</RUBY>�Ŀֲ�
ȴ����Щ���ű��ʲ�ͬ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200070b57">
��ʹ�����о�ͷ��
������ֻ��ת˲��
������������ƻ���һ���˵�δ������
ȴ����Զ�Ӳ��������䡣��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200080b57">
�������ܵ��ƻ�֮�ˣ�δ���ѱ����ᣬ
ȴ���ò��������������
���Ǿ�����ζ��ʲô����ȫ���˾����޷���⣬
�������������󡣡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200090b57">
���Ǳ������Ŀֲ�֮һ��
���������˽�δ���и����Լ������壬
����Ϊ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200100b57">
������������װ�����ְɣ����ǡ�
���ֽ�����ֻʧȥһ��ָͷ��
ͨ��δ�������ȴ���Ҳ���׹����˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���ұ��ĺ�������������
���ǲ����ǳ����˷ܣ�һĿ��Ȼ��
�����Ϻ���Ѫɫ�����һƬ��

�����⿪Ƥ����
���ֱ��أ��·�Ҫ������˺����Ƭһ�㡣

�������·����ͳ�����
��Ȼ��ѹ�������µ����塣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_����01",1000);

	CreateTextureEX("�}�ţ�510", 5100, -1225, -440, "cg/ev/resize/ev105_���줿С��_el.jpg");
	Move("�}�ţ�510", 1200, @0, -730, DxlAuto, false);

	Fade("�}�ţ�510", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0083]
����ץסС�ĵ����������Լ����䡣
���ұ�ƴ��Ť���š�

���·��ھ���һ����սһ�㡣
���൱��˳����ģ����

��������Ȼ�ɡ�
���ұ����о�����ȫ������
�������ܷ��ӻ��ܵ�״̬��

���������һ������С�ĵ�������Ӳ����ǧ�����ģ����
��ֱ�񱻱Ƶ���Ͷ��·һ�㣬
�������ܾ��ã�ʮ�ֻ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

	SetBacklog("����������������λ�����", "voice/ma01/0200110b57", ⏴�);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200110b57">
��
����������������λ�����

</PRE>
	SetTextEXC();
	Request("@text0090", NoLog);
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_��x_�k��04",1000);
	CreateColorEXadd("�}�ե�", 10000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	Wait(100);

	Delete("�}�ţ�*");

	FadeDelete("�}�ե�", 300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���崨���г�һ����������ġ�
����ָָ���겻�������塣

��ɲ�Ǽ䣬�ұ��͵����������
���·�������ʲô��Ծ����

����������˵��ʵҲ����ˣ�

���ұ�������ֱָ�ݶ���
����Ȼ�䣬������������ʹѪҺ��ӯ���е��ء�
������ή��֮����ΡȻ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200120b57">
��������ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ǲ�������Ϊ���Ա���ͻȻ�����˰ɡ�
�ұ������Լ��ƿ����ԣ��崨��������
�����ߴٵ���
������һ����û���谭�ˡ������������ĺ��塣

���ұ���Ŀ������С�Ĵ����ڲࡣ
��˿��û���ʪ��˽����

��ȫȻ��������һ�������ھܾ������֡�
������©����Ϣ��

���ұ�̽����ͷ��
������СѨ��

{	CreateSE("SE01","se����_Ѫ_��Ѫ01");
	MusicStart("SE01",0,1000,0,1250,null,false);}
����˱�Źɼ䡣

����Ū��
����˱��
���������¡�

����ͷ���ҵ��䶯���ұ�������˽����
�������Һ�����
���������Һ��ʪ��С�ĵĿ�Ѩ��

��ˮ������
��δ���˽������һζ�������µĿڴ���

��С��û����¶�κη�Ӧ��
��Ψ�������ڻ谵�����롣

���ұ�ͬ�����߻�ɢ��
���·��ڿ�����ǰ���ȴʲôҲû����
��һζ��е�ظ��ţ���Ѱ�����Ļ����ڵĿն�������

��������������ʶ��������һ����ż�硣

������<RUBY text="�У������ף���衤�ģ���">����ż��Ϸ</RUBY>��
������<RUBY text="�ģ��졤�ף���衤�ģ���">��ż�����Ϸ</RUBY>��

����е�ٿص���ż�硣
���ն����޵Ŀ�����Ϸ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200130b57">
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������Ͻ���������

{	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
���ұ�̧�����壬�ٶȽ����������������ڡ�
�����˫����<RUBY text="����">����</RUBY>�����������⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�100", 5000, Center, Middle, "cg/ev/ev105_���줿С��_e.jpg");
	Fade("�}�ţ�100", 600, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0142]
����Ȼͻ�롣
����Ȼ���롣

��������ر��������ɿڡ�
���ߴ粢����ϣ�ȴǿӲ��ǿ�ء�

���޻���Ӵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����ǲ�֪Ϊ�Ρ�
����һ˿Ѫ������

��û��������
�����˶���Ĭ�š�

���ұ����Ÿ�����ͻ�롣
��ֱ�����Ｋ�ޣ��Ž���ֹͣ��

��ѹ��С�������ϵ��ұ���
�������ұ���С�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����������������۾�����ע�ӣ�
��Ȼ��˭������ȴ��û��ӳ���Է���

����������ͫ�ʡ�
����ż�ġ�

���ұ��γ�ͻ��֮�
���ʪ�ģ���ʲôͿȾ�ɳ�졣

���γ�ֱ��¶����ˣ�Ȼ��������ٴ�ͻ�롣
��һ�������������

��С�ĵ�������ҡ����
����ǰ�����������

��������Ϸ��

���ұ����룬�γ����ٲ��롣
��С��ҡ����ҡ������ҡ����

�����ΰ塣
��������֨����֨��

��һ��һ����ظ���
��ί���ڷ����Ŀ��ơ�

�������ദ��Ǣ����ż��
���൱���س�����Ϸ��

��ֱ���������ѡ�
��ֱ����е������ֹ��

������������֪�ǵڼ�����С�ĵ��ͻ�롣
���ұ��ĺ�һ��¶���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�}�侫", 10000, "#FFFFFF");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����������
����С�����ڡ�

{	Fade("�}�侫", 1000, 0, null, false);}
�������Եı�����
�������������ֱ�����һ�Ρ�

//{	Fade("�}�侫", 0, 1000, null, false);}
���־õ��侫��
��������ʮ�����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	FadeDelete("�ϱ���", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0173]
�������ţ��ұ��뿪���������塣
���������������γ���

������İ�ɫҺ������ӵĺۼ��������
�������ź�ɫ�ģ��ס�

�������֤�ݡ�

���ұ���������Щ��
��С��ʲôҲû����

����������һ��������
�������ߵ���ż��

����Ϸ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200140b57">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������֮����
������ż��ն���ȴ�־߱�����żδ�е�˼��֮����

����ż���������ߵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200150b57">
���������ۡ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_��x_�k��03",1000);
	CreateColorEXadd("�}�ե�", 10000, "#FFFFFF");
	Fade("�}�ե�", 300, 800, null, true);
	Wait(100);
	FadeDelete("�}�ե�", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���ٴ�����������䡣
������ָ��ָ��ģ���Ȼ�����ұ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0200160b43">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����������ߛ�����
�������ֻص��ɿ���䡣

��Ȼ����Σ�ģ����΢��Щ��ͬ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0200170b43">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����ż��ѵĴ�Ϣ���ұ�̧ͷ�������ߡ�
���·���Ѱ�ʡ�

��û�лش�
��Ȼ�����Ǹ��ӵ�˫�۷�����������������

���ұ�����������С�ġ�
��������ס�Լ������

����Ȼ����ģ��Ǹ���
����˾�ռ��ߵ���������ǰ�ס�

���������ͣ������к������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se�ճ�_ˮ_��й��С");
	MusicStart("SE01",0,1000,0,800,null,false);

	CreateColorSP("�}��", 6000, "#FFFFFF");
	CreateTextureSP("�}�ţ�510", 5100, Center, Middle, "cg/ev/ev105_���줿С��_f.jpg");
	FadeDelete("�}��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����ɫ�ķ�ĭ��
����Ѹ��֮�������Һ�塣

������С�ġ�
��������������ע���¡�

�����ĳ�ζ����������������

��ͣ��������
���ұ��������ƽ�����

��С���޷�������
������������Ψ��ȫ�����ܡ�

��ȫ������ܱ���йҺ��
����ǰ�����������������ϡ�

����Һ�ŷŵ����ճ���Ϊ��ߡ�
�����Ű뿪�ŵ�������������ע�롣

�������������˵����졣
����ǿ�Ƶ�ˮ��ע�룬���������˷�Ӧ��

����Щ���¶�����
����Щ��֮�෴��

�������������졣
����С�����¡�

���ұ����ͷ�ֹͣ�ˡ�

�������������˵Ķ���ֹͣ��
���ž���������ʮ�룬��ʮ�롣

����ʮ�롣

��������й¶��

����ʮ�롣

��������������ʼ��

����ʮ�롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������Ъ˹����أ��ſ�������

�����۴�ޡ�
��������������֮����

����Ű������ʩ�Ա�Ű���µ�С��
�����������š�

</PRE>
	SetTextEXC();

//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
		RecoReturn();
	}else{
		TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}
//============================================



	SetFwC("cg/fw/fw�ұ�_�Ӥ�.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0271]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0200180b43">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0272]
��һ�����͵ı��飬�ұ����������졣
�����ǶԲ����ƽ�����Ϊ���Ŀֲ���ƴ���ܾ���ģ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/3d���_����_�i��.png");
	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0274]
���������ͭɫ�ļ��������š�

//{	OnSE("se���L_����_�����01",1000);}
�����л�������̫����
��
��ãȻ������׷Ѱ�Ź켣��

�����ţ���˫�ۡ�
���м⿳ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}EF10", 10000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	OnSE("se���L_����_�����01",1000);
	Fade("�}EF10", 500, 1000, null, true);
	Fade("�}EF10", 500, 0, null, true);
	Delete("�}EF10");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0275]
�����⣬��ֱ��
�������������彫���п���

{	OnSE("se����_�n��_ܞ��01",1000);}
���ұ��·𱻵���������ȥ��
�������������ڵء�

��˫����ס�����ϰ벿�֣��ҽС�
�������β��ɺ�������

��������һ˲�䣬��Ϊʧȥ��δ����̾��

{	OnSE("se����_Ѫ_�����01",1000);
	CreateTextureSP("�}�ţ�15", 15000, Center, Middle, "cg/ef/ef004_����Ѫ�~.jpg");}
����ʲô��ָ��������
��Ѫ������������Һ��

���ұ��ҽ��š�
������Ϊ�Լ���Ϊä�˵ĳ�ʼ��

���ǲ��ã��ʹ������ᣬ�������ʡ�

�����ҡ�
����˫�ص����޳�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�*", 1000, true);

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200190b57">
������Ǳ�����
������֮��ı�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���崨�ڽ�����
����������޵�Ԫ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200200b57">
��������־�ʹ����֮����ࡣ
������ר�ϵı�����δ��֮�λ�����
����ô������ֻ����˳̶ȡ�
��ν������̬֮�������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200210b57">
��̾Ϣ�ɣ�
��Ϊʧȥ������̾Ϣ�ɣ�
��Ϊ���õ�����̾Ϣ�ɣ�
������̾Ϣ֮������Ϊ����������������˵����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��������ı�֮̾���У����߷·�ָ���߰�˫�־ٸߣ�
�ߺ��š��������Ƿ�Ҳ��װ�����
������һ�������ء����ƺ��о�����
ҧ�������أ������¿�ʹ��

��������崨���Ľ̵���

�����������������֮�¡�
�����޴ȱ�֮��֮�¡�

����������������ˣ�
���Ա�����������֮�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣥�åɥե�å���
	Wait(2000);
	CreateColorSP("�Ą�", 10000, "#CC0000");

	OnSE("se����_��_��Ġ����02",1000);
	SetVolume("@mbgm*", 2000, 800, null);

	Fade("�Ą�", 1400, 0, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��������ʲô��
���Ǹ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣥�åɥե�å���
	Fade("�Ą�", 0, 1000, null, true);

	OnSE("se����_��_��Ġ����02",1000);
	SetVolume("@mbgm*", 2000, 600, null);

	Fade("�Ą�", 1400, 0, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�����������˿�����������
�������Ĥ�����졣��ʹ�ؿڵ����졣

��С���ڿ�����
�������š�

���������룬�������������ġ�

��ȴ����Ū���ˡ�
��Ϊʲô��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣥�åɥե�å���
	Fade("�Ą�", 0, 1000, null, true);

	OnSE("se����_��_��Ġ����02",1000);
	SetVolume("@mbgm*", 2000, 400, null);

	Fade("�Ą�", 1400, 0, null, false);


	SetFwC("cg/fw/fw���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200220b57">
��̾Ϣ�ɡ���Ϊ��ج�Ρ�Ϊ�������
��Ȼ��û��ϵ�����Ͼ�������ѡ���
ֻҪ��ô�������Ǿ������谧̾����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0200230b57">
����Զ�ء���������������
�����߰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣥�åɥե�å���
	Fade("�Ą�", 0, 1000, null, true);

	OnSE("se����_��_��Ġ����02",1000);
	SetVolume("@mbgm*", 2000, 200, null);

	Fade("�Ą�", 1400, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������ʲô�����ǡ�

��ج�Σ�
��������

��ʲô�����������⡣
��ʲô��������

������Ц��
��������ô˵����̫��Ц�˰�ι��

���Դ������߰��㣬
�����񱻻�ǯͻ����һ���ľ�ʹ�
����ȫ����������˼�������״̬��

�������㰡�������ã�����������
���崨��ʦ��

���ѵ����ǽ�������һ����������
��ι����ʦ��

����Ϊ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣥�åɥե�å���
	Fade("�Ą�", 0, 1000, null, true);

	OnSE("se����_��_��Ġ����02",1000);
	SetVolume("@mbgm*", 2000, 0, null);

	FadeDelete("�Ą�", 1400, false);
	SoundPlay("@mbgm34",0,200,true);
	SetVolume("@mbgm34", 10000, 600, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
������С�ĵ����ޡ�
�������ұ������ޡ�

������������ʲô������ӿ��
����������ǣ�������

������С�ĵ����ģ����
�������ұ������ģ����

����ʲô������ӿ��
������������

����˵������ǣ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0200240b56">
�����ԣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm34", 10000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����е�����ȷ�š�

�������ڳ��������������
����Ȼ����ʲô������

������������

��������ô���°ɡ�
���������Ƕ��������������Գ����ڷ����ɹԹ�ȥ���ɣ�
��������ô˵�ɡ�

���崨��
���������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 50, "#000000");
	DrawDelete("�ϱ���", 1000, 100, "circle_02_00_0", true);

	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0200250b56">
������������Ц������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"ma01_021.nss"
