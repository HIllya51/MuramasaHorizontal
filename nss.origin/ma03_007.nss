//<continuation number="2090">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_007.nss_MAIN
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
	#bg013_�`�}���a_03=true;
	#bg009_�`�}סլ��a_03=true;
	#bg007_��m��·a_03=true;
	#bg007_��m��·a_01=true;

	#ev106_���w��Ҋ�¤�����_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma03_008.nss";

}

scene ma03_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_006.nss"

//���`�}��ҹ


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg013_�`�}���a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm23",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������֦��ͬ�ж�����
��������ˣ�����Ȼ�����ܽ��������ض�������ȥ��

���������𳤵�լۡΪ��׼����һ�����䡣
�����ᦹ��ܽ�������վ�ľ���Ҳ��Զ����Ȼ��֪����
�����Ƿ�������⣬����ͨ�������Ӧ�ò��������е�
�����ɰɡ�

����ҹĻ�ĵ�·�����ߡ�
��û�н�̸��

����Ҳ������Զ֮�⡪�����Է��������ľͲ�֪���ˡ�
��ֻ������������˼�����ѡ�

��ʵ��˵���Ⲣ��ֵ�ÿ��յ�״����
����ȻΪ�������Ǻ�׷������һ�����ṩ���ϵ�����
�������������Ѿ��������ϣ���ô�Ͳ��ò��ڽ�����
���д�������

����Ȼ����Ѿ��޷��ı䣬��ô�Ժ���Ҫ�������ľ�
�Ǿ�����������Զ��Σ�ն��ѡ�
�����Ʋ�������ѡ�

����ξ�������ߣ�û�������Ǻ��Լ�������ս�����ֶΡ�
��������˵�����޷���ս���˽���ս����ʵ�ڲ���������
��ֻ������Σ�ս��ٵ��Ѳ�׶��ṩЭ���ͺá�

����������棬����Ϊ���������Ҫ���в��ܡ�
���뵽Ҫ�����˾��뵽���Ǻŵ������У��Ͳ�ʤ������
������Ȩ�������ʧ�Ĳ�����˵���Ⲣ��ʲô���¡�

���ҵ�˼�������Ͼ��������һ���䡣

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070010a03">
���������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070020a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	OnBG(100,"bg009_�`�}סլ��a_03.jpg");
	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��b.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һ�����ߣ�һ�߻�����
����Ȼ�о��Ⲣ����ò�����ڵ�·����ͣ�½Ų�Ҳ��̫
�񻰡�

�����·���ȫ�������أ��������䱳���Ҽ��ϣ�����Ͷ
����̽��Ŀ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070030a03">
�����������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070040a00">
��û�С���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070050a03">
����ô�����Ǿ��������𡣡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070060a00">
��������ˣ�Ҳ�����������Σ���ξ���¡�
����ֻ������ʵ�������Լ���ְ����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070070a00">
������Ҳ��ΪӦ����ʵ���Լ���������������
����Ӧ�����������Ρ�
�����ܵõ���ξ����Э�����¾������顣��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070080a03">
����������
���Ǿͺá������Ҹ��������������鷳Ҳ����
�ҵı��⡣��

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070090a04">
��̫�����أ���С�㡣
��˳��һ�ᣬ�ն����˵ķ�������һ�µĻ�����
�ƾ��ǡ���Ȼ�����鷳������Ȼ������������Ҳ
û�취���ء��ߡ��������˼�˰ɡ���

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070100a03">
������!?
������������𣬾������ˣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070110a00">
���ǵġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070120a03">
�����ᡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
	CreateSE("SE01","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DeleteStL(300,false);
	Move("@StL*", 300, @20, @180, DxlAuto, false);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/ma03/0070130a04">
����С�㣬��·��˯�����ǻ��ͨ�е����Ǵ�
�����ŵ�Ŷ��
���뵽�Ǳߵ�����������������Ϣ�ɡ�������
���ƺ����ǻ������ˡ���

{	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070140a03">
��Ī������ʵ�ܺ���!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070150a00">
�����ǣ��ǳ����������Ǳ��������ϵ����⣬
�Դ�ξ���µ����������κε��ǣ�����˵����
�����ڴ���
����������Ϊ�����Ƿ���Ϊ�谭���е���������

{	StL(1000, @0, @180,"cg/st/st����֦_ͨ��_˽��b.png");
	Move("@StL*", 300, @0, @-180, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070160a03">
��ѽ��������������̫ǫ���ˡ�
���ղŵ������������ţ����������˶��ұ�
���ڴ�Ŷ����

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070170a04">
�������������ٶ�֮�죬ʵ���˲���
����С����ǵ��������У���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070180a04">
����˵������С�㣬����֪����������������
Ϊǿ�͵��ǵ�ϸ�������ء���

{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070190a03">
���������ˣ����Ժ�Ƭ�̡�
�����е�����Ҫȥ�Ǹ������ϵ�����һ�¡���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070200a00">
�����Ҿ������ǲ�����ܲ���Ʒ�Ƶ���Ʒ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������˷ѽ�����͡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma03/0070210a00">
����ξ���¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070220a03">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����߽���ת��ǰ��������һ����
����������ǹ���������Ȼ��ֹ��ȡ����֮��
���������µĻ�����

������һ���������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma03/0070230a00">
���Ǹ����ӵ���������˵���𡣡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070240a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ʱ����Ĭ�Ȱ�����������۱硣
���Բ���˵��ج�Ĳ����ܻ�û�������Ķ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma03/0070250a00">
�����������������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070260a03">
��Ϊ��Ҫ��Ǹ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070270a00">
���ô�ξ���µ�һ��Ŭ������Ϊ����Ӱ������ǰ
ս�����������������Ǻŵ���Ϯ��
��ʵ��Ϊ���˵����ܶ��ޱȻںޡ���

//��������
<voice name="����" class="����" src="voice/ma03/0070280a00">
�����޹����������ǿ�������
������ݻں�Ҳ���ǿ���������ɡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070290a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ʹ�����ǵ�����Ϊ��ʡ�Ĳ��ϣ�Ҳ�����ܸ���ɱ��
�����Ǵ����κΰ�ο��
����Ȼ���������ǰװ�����������ʹ��Ԫ��ն�ڵ��£�
Ҳ�޷��������ߵ�Թ�

����Ȼ�ܹ������Լ������ȹ���
�����ǲ��������ߵ�������ˡ�

�����ǲ�����������ӱܵĻ���
����ֻ��һֱ��Թ�����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070300a03">
�����ӵ������ڻص�˾�֮�����Ͼ���˵�ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070310a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070320a03">
���ƺ�����û��һ���ˡ���
��û���κ�һ���ˡ����������������Ŷ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070330a00">
���ǵġ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070340a03">
���ң�һֱ�������⡣
���ص���͵�������ǳ���Ӵ����������Ǻ��¼�
�Ļ����������⻹�ǵ�һ��Ŷ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070350a03">
����ô����ʵ���޷���ˡ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070360a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070370a03">
�����ԣ��ղŵ�����Ҳ�ɴ�ش�Ӧ�ˡ�
����Ȼ���ǵ���˾��ͼ�Ļ�����Ӧ�ý�����
��ᦹ����еġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070380a00">
����������������顣
��������������⡣��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070390a03">
�������Ծ������˶��ԣ�
������Щ��̫һ���԰ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070400a00">
������������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070410a03">
����û���ʹ����ء�
������������Ϊ��ʲô����ȥ׷�����Ǻŵ��أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����������������ʡ�
�����������ż������ᡣ

�����������
����˸��ʶ����ӱܵ����������������ˡ�

�������Է��������ĲҾ�ı��ߡ�
��������Ϊ�����ʹ���С�
��
����Щ���ɶ��Ƕ�����

������<RUBY text="����">���</RUBY>������ˡ�
����Щ������������䣬��и׷�ٵ�����ҹҹ������
�Ķ�����

�������ֻ�ǡ�������
��ֻ������ֹ�Ǽһ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma03/0070420a00">
������ǰ���ʮ��·�ںܿ�͵��ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070430a03">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070440a00">
��������Щʱ��
����������֮���һ�˵���ġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070450a03">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg007_��m��·a_03.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SetVolume("@mbgm*", 1500, 0, null);


	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070460a03">
�������ף���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070470a00">
����ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ξ�������ȵ�������
������ע���źڰ��е�Զ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070480a03">
���Ǹ�������һ���������ɵ�լۡ
���Ǿ������˵ģ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070490a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����ԣ���ȷ��˵Ӧ���������𳤵�լۡ��
����������ϸϸ���������ԣ����������Ǿ��ˡ�ƾ�ҵ�
�۾����������ֻ�ܿ������ӵļ�Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070500a03">
��������������ǰŶ��
���Ǹ��ǡ���������ѽ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070510a00">
����ξ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070520a03">
������������ʶ���ˡ�
������˵���������Զԣ�
�;�������Ӧ��Ҳ�Ǿ�ʶ��
��Ϊ������ô˵������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070530a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������������ʣ��Ҽӿ��˽Ų���

���ߵ�����ʱ���ҵ��۾�����Ҳ�������������֦С��
��˵����Ӱ��
���¹µ�������������վ���ŵģ���С���ˡ�

����ʶ������˭��ʱ���Ǹ���ӰҲ�����ת�˹�����
������ͬʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070540a02">
���ն���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070550a00">
���������ǡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070560a02">
���ǡ��Ǹ���
�����죬����֮�����˺ܶ࣬�ң���Ȼ���ǡ�����

{	StR(1000, @30, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	Move("@StR*", 0, @-30, @0, null, false);
	FadeStR(300,false);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070570a03">
���󰲡�
��һ�����С�㣬�����ƺ������𣿡�

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070580a02">
������!!<?>
{	FwC("cg/fw/fwһ��_ͨ��b.png");}
������Ϊʲô����Ҳ�ڣ���

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070590a03">
����ѽ��
������С����Ȼ��׷�����˼�����һ�������
˵���ֻ�����

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070600a03">
���װ��ģ��⾿������ô����!?��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070610a00">
���������˻���������ô���¡���

{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070620a02">
��С��!?
������!?��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070630a04">
���������ˣ�
����չ�����޳���Ŷ���ն����ˡ�
��Ϊ����Ƿ�µķ���ծ���ڱ��������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ҿ�û�н������ծ�ļ��䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm25",0,1000,true);

	SetFwC("cg/fw/fwһ��_�Ť�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070640a02">
���ա��ա��ն��������������ŵ�Ů������ô
���°�������������ӡ�������!?�����
��ŵ�Ů�ˡ���

{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070650a03">
��ž����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070660a04">
��������С�������ϵͳ�������ض��ѡ���

//���Ρ��ܥ��������¤�ͨ�ꡣ
//��Don't fuck with me! Fuck'in your baby pig!
//��Come on, daughter of a bitch!
//�����ɥ�ե��å��������ߩ`�����ե��å���楢�٥ӥ��ԥå���
//�������ޥ󡢥ɩ`����Хӥå��������餤�ΰk������
{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070670a03">
����С������ι��������������͡�����
ȥ�����ɣ���������������Ĩ���!!��

{	SetComic(@0,@0,15);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070680a02">
����!?���������ȱ�����

{	DeleteComic();
	FwC("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070690a04">
�����Ƹ漱�Ĵն��ҡ�
������ı�����ϯ�����������Ѫ֮�����Ѿ�ֻ
��ʱ�����⣡���غ�����ƽ����͵������Ѿ�һ
ȥ����������!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070700a04">
�����⣬ʵ��������ɴ����������լۡǰΪ��
ת������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070710a00">
����ʹ����ա���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���������ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg007_��m��·a_03.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	FadeDelete("�ϱ���", 1000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma03/0070720a00">
���������ӡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070730a02">
���������ˡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070740a03">
���������ò�����˼�ġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070750a00">
����ξ����

{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070760a03">
���źߡ��Ǳ����˫ͫҲ�����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070770a04">
���ն����ˡ��������豻���߳���˸������
����ϵŮ�������ƵĴ���ʽ�����ڱ�����ѳ
��֮ǰ������ȥ��Ŷ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0070780a03">
���Ǹ��Ҹ�������״���¾�����ʲô��˼�أ�
���ţ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070790a00">
����˵�����С��Ϊʲô�������
���ǵò�û�и��߹������լۡ��λ�òŶԡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070800a02">
���Բ���
���Ҵ�����һ�¡�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070810a00">
����˭����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070820a02">
�������־���Ĵ��ڣ�ѯ�������дն����˵�
ס��֮�󣬻ش�˵������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0070830a04">
�������鱨����ȫй©���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�������Զԡ�

���������޵�ר��ͳ���£���������Ѿ�������ʵ����
�񡣾���ֵķ���涨�Ѿ���Ϊ���������ֲ���ҳ�ϵ�
�������С�
����֪���м���ְԱ��������ֻ��һ���ֵ����ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma03/0070840a00">
�����������ˡ���Ҳ�޷���
����˵˵��������ɡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070850a02">
��������������������顣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070860a00">
��������Ѿ��ܾ�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070870a02">
�����ǡ���
�����������ҡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070880a00">
�����˵Ļش𲻻�ı䡣
����ذɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070890a02">
���ն�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070900a00">
����ɫ�Ѱ����Ѿ������ʺ�����Ů�ӹ�
��һ���Ĵ��߶���ʱ��Ρ�
�������������������һ�̰ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070910a02">
�������ҡ��Ҳ���ȥ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070920a00">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070930a02">
���ҵ��뷨Ҳ����ı䣡
����ʹ���Ұɣ����񾯲���������
����Ĵ����£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������û��
�������죬Ҳ˵��ͬ���Ļ����ھ����ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����դΈ��档��Υ���ޥ�����
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg007_��m��·a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	FadeDelete("�ϱ���", 1000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070940a02">
���ǡ��Ǹ���
��֮ǰ�����飬��ķǳ���л����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070950a02">
���Ǹ����ȡ������ҡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070960a00">
������С������������ϡ�
��������·�ĺ����Ǿ����ְ�𡣡�

{	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070970a02">
���������ǣ�����˵�Ǹ���
�����������ǡ�����ȻҲ�ǡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0070980a02">
���Ǹ�����
����ʵ���Ǹ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0070990a00">
���ǡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071000a02">
���������������������㡣
���룬����ҡ�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071010a02">
������ҵ�����Ĳ���ʹ���ɣ�
����ʲô�Ҷ�Ը�⣡��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071020a00">
������������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0071030a11">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��͎�
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 15000, "#000000");

	OnBG(100,"bg007_��m��·a_03.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(0,true);

	FadeDelete("�ϱ���", 750, true);
	FadeDelete("�}��ܞ", 750, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071040a02">
�������ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071050a00">
�����ϣ���ھ���־�ְ�Ļ�������ѧУ��ҵ
֮�����¼�ÿ��ԡ�
�������޷���������Ĵ𸴡���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071060a02">
��������̫���ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071070a00">
�����޴��¡�
�����������ᡣ��

//��������
<voice name="����" class="����" src="voice/ma03/0071080a00">
����Ȼ��Ϊ������Ҫ�������꣬������ܹ���չ
���֡�
�����ң�������˭��Ҫ���������Ĺ��̲��ܳ�Ϊ
��ʽ���١���Ҳ�޷����⡣��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071090a02">
����֪������������Ҳ����ν��ֻ�������۾�
�á�нˮ��Ҳ��Ҫ��
�������ҡ���Ϊ��Ĺ��������ʲôæ�ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071100a00">
������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071110a03">
����ѽ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0071120a04">
����ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���������Ͳ��������������С�
���ظ���������ּ尾�ĸо���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/ma03/0071130a00">
������Ϊʲô��Ҫ��������ز�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071140a02">
���ҡ���
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���������Ѿ���Ŀ��������ʹ��
��������⣬�������̺��Ķ����������ʹ��

���Ƿ�<RUBY text="����">���</RUBY>��һ�ֿ��ҵĿ�ʹ��
�����Ҷ��ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071150a02">
���ǵ�һ�Σ���

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071160a03">
������
���ƺ������˷ǳ��޷���֮����ķ��ԣ�
���������ȷ�һ�ߣ��������ˣ���������
���鲻�úø������οɲ��У���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071170a02">
��������͵͵˵��������Ⱥ���˵Ļ�������
�洦�ɼ������ǣ�����վ������������ȴ��
����Ѱ��������Ҳһ����������Ҳֻ�ǲ�ʹ
�����س��Լ�����ˡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071180a02">
�������ǵ�һ�����������ǿ����
ȥ����Щ�һ�ս�����ˣ�
����һ�Ρ�����һ�μ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071190a00">
������������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071200a03">
�������������ˡ�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0071210a04">
���������Ϻ��𣬴�С�㡣��

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071220a02">
����֪����������Щ�һ��Ǵ���ġ���������
����֪����ȴʲôҲ���������Լ���
�����޷�ԭ�´���������Ҳ����ԭ�£�����
���������������޶ã���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071230a02">
��Ϊ���������踸��֮����Ů������
����һֱ����Щʲô������ʲôҲ�ã���
�����������ҵ��ˣ���

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071240a02">
�������ˣ��ն�������
������Ϊ���һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
������������
����Ŀ�⡣
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ãǡ��������w

	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");

	SetVolume("@mbgm*", 300, 0, null);
	OnSE("se�M��_�ե�å���Хå�01",1000);

	Fade("�}�ե�", 300, 1000, null, true);

	CreateTextureSP("�}����", 12000, -660, -490, "cg/ev/resize/ev106_���w��Ҋ�¤�����_d.jpg");
	CreateTextureEX("�}����ӣ�", 12100, Center, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");
	Fade("�}����ӣ�", 0, 500, null, true);

	Wait(500);

	Fade("�}�ե�", 700, 300, null, true);

	Wait(1000);

	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}����*");

	FadeDelete("�}�ե�", 300, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma03/0071250a00">
��������ˡ�
����һ�ж�����ˡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071260a02">
���ն�����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071270a00">
����Ӧ���Ӷ����ҲŶԡ�
��Ӧ���������ҲŶԡ�Ӧ�ð��ҿ������޹�����
һ�Ĳ�ֵ���˲Ŷԡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071280a02">
���ǡ����ǡ�����֮ǰ����֪����
���Բ��������Ǹ���������ʲôҲ�����ס�
��Ϊ�Լ�����ʲô�����˵����顣��ʵ����
���ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071290a00">
��������ȥ�����������ʶ�ն��������ǲ���
��ȷ����⡣
�����˲������κ�һ˿���⣬�Ǹ�Ӧ������
�����ˡ�ֻ�䱻��Ϊ���ҡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071300a03">
������������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071310a02">
��Ϊʲô��
����ս���ˣ���һ��һֱ����������ˣ�����
ʹ����������С�����ӣ�Ҳû�����κα�⣡��

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071320a02">
������ֵ���𾴵��ˡ���
������������ģ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071330a00">
�������ء�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����һ�ж�̹�ס�
����������ǵذ��Լ�����к��ҷ�ɢ���������ֱ���
����Ϊ����Ҳ����������һЩ�ɡ�

����Ȼ���Լ��������������������ǵ�˫���ϱ�����ְ
���Լ�Ϊ������Ԯ���������𳤵�������
��
�����ǡ������ǡ��ܻ����޷�ѹ�ֵĲ��֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma03/0071340a00">
�����ǡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071350a00">
��<RUBY text="����������">����ɱ����</RUBY>��
����������ʲôֵ���𾴵�!!��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071360a02">
��������ˣ��㲻��Ҳ�������ڶ������
���Ǹ����Ӳ����ǡ�����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071370a00">
��û�����ȣ�
���Ǹ����ӣ������ǺŻ����ˣ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071380a02">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����־���ͣס�˺�����
��������Ȼ������¼���û�б�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma03/0071390a00">
�������Һ͵ط���������ʱ��
���Ǻ�Ϯ���˴��ӣ�
��������ɱ�������ˣ������˶����ˡ���

{FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071400a00">
����������ʲô��!?��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071410a02">
������������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071420a00">
��ʲôҲû�����ȡ�
����������ֻ��ɱ¾����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071430a02">
�������ҡ�
�����������ұ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071440a00">
��֪���˾ͻ�ȥ��
�����ٽӽ��ҡ����Ҳ����������е������ˡ�
ֻ��һ��ɱ���ߡ���

//��������
<voice name="����" class="����" src="voice/ma03/0071450a00">
���߰�!!
���ٿ����ҵĻ�������Ҳ������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071460a02">
�����ǣ�
����������ң���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071470a00">
��������!?��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071480a02">
��������������ڣ����Ǹ�ʱ��ͱ�ɱ���ˣ�
�ͻ�����������֮�֣�
�������һ����Ŷ�����Ϊ�����ڡ�������ӹ��
�ɵ���ʵ����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071490a02">
����˵���д���!?��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071500a00">
��ʲ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�����ԡ�
������������
��û������¡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma03/0071510a00">
�����ԡ�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071520a02">
��û�в��ԣ�
������������µ�������
��Ҳ��Ϊ�˾������˶�ʹ�ã�
�������޷�����ʲô��������������ʲô����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071530a02">
�����ԣ�����Ϊ���һ��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071540a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
�����ԡ�
�����Ů����˵ʲô��

�����ԡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071550a03">
������������û�취�ء�
����ô���������ˡ����ͽ����������ܣ�
����������أ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071560a00">
����ξ����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071570a02">
����������û��ϵ�ɣ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071580a03">
����ѽ�����й�ϵŶ��
���ң���Ϊ��פ���ľ��ˣ�����Ϊ��������
�Ĺ����ṩЭ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071590a02">
���ǡ����������𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071600a03">
���ǵġ�
�������������þ�������
�����ǲ��ò���Եļһ
�����Ļ��Ҫ��Ϊ����Ŷ����

{	FwC("cg/fw/fwһ��_�@��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071610a02">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071620a03">
���ڸղŵĶԻ��в���Ҳ��������
���������˵Ĺ����ǽ��<RUBY text="������">���Ǻ�</RUBY>�¼�����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071630a02">
������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071640a03">
���Ǹ����ӵ�����Ҳ��������һ����
����Σ�����λͬѧ��
��ɲ��ǰѻ���Ա��֮�ڷ�
���ܴ���Բ��ֵ�������������Ŷ����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071650a02">
����������
�����ǣ�����𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071660a03">
���š���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071670a02">
��Ҫ���Ǹ����Ǻš���
�����Ǹ���ħս�����Ǵն������Ĺ���������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071680a03">
��Ҫ�����𣿡�

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071690a02">
������������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071700a02">
�������������Ҽ���ɣ�
���ն��������������ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071710a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071720a03">
����ô���أ�
����ղ�˵������������������˾��ò�����
�Ļ����Ǿ��������������ɡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071730a00">
��������ξ��Ϊʲô������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071740a03">
�����ء���
��һ����Ҳ������ЩԵ�֡����뿪�Ǹ�
���ӵ�ʱ��żȻ������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071750a03">
���ԣ��Ǹ�ʱ�򣬻���������һ��СæŶ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071760a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071770a03">
��������ǡ���
�������ɡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071780a02">
����������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071790a03">
���š���Ϊ��Ҳ���𾴡��ž��������
������һ��վ������ս�޴�֮�������
������ĺ��˲��𡣡�

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071800a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
������Ҳ�����
�����֡���Ī������Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071810a03">
��������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071820a02">
�������㣬Ī����ʵ�Ǹ����ˣ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071830a03">
����ʵ���Ǹ�����Ŷ����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071840a02">
�����𡭡���Ǹ��
��ԭ���������Ǹ���ŵ�Ů�˰�����

{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071850a03">
������������

{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0071860a04">
�����ޡ�����С�㣬��Ȼ����ס���ء�
��һ����鴤��̫��Ѩ����׳�۰�����

{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071870a03">
���ǡ��ǺǺǡ���
�����̶ֳȣ��㲻��ʲôŶ����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071880a03">
���������ָ�̡�
��С��֡���

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071890a02">
����������˼ҵ���ǰ��Ӹ�С��!!
���ɶ񡭡����˲����ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071900a02">
����֮лл�㡣
������ֻҪ�ܰ��ϴն�������æ��������<RUBY text="����">����</RUBY>
��ͷҲ�㲻��ʲô����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071910a03">
����ѽ�������ҡ�
�����أ����뾡��Ŭ����Ҫ���ŵ��������˵�
����Ŷ����

{	FwC("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071920a02">
��������أ����ҵĽ�פ����
��Ҫ���Ϻ��ȵĻ��Ͱ���װ���ͻغ��ȥ����

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071930a03">
����ߺߺߺߡ�������
���Ǿͺú��ദ�ɣ�<RUBY text="������������">Ϊ�˾�������</RUBY>����

{	FwC("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071940a02">
����������ú��ദ�ġ�
��<RUBY text="��������������">Ϊ�˴ն�������</RUBY>����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0071950a04">
���������õĹ⾰����
������ȥ�����ǹ��Ҽ�ĺ�ƽ��̸һ������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0071960a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
���������ˣ�������˵ʲô��
��Ϊ���ң���˵ҪΪ���ң�

���ҡ���������ʲô��
���ҡ�������ֻ�ǡ���һ�����˶��ѡ�

���ǡ���Ϊʲô����
����Ҫ���ұ�ʾ���ⲻ�ɣ�
����Ҫ���ұ�ʾ���ⲻ�ɣ�

�����ǡ������ס�
����ô�ᡪ���������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/ma03/0071970a00">
��������Ҫ����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0071980a03">
�������������ˣ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0071990a02">
���ն���������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0072000a00">
�������𿿽�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0072010a04">
��Ŷѽ��
���ն�������ɫ�ܲ��ء�
�ǲ��������ء�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0072020a00">
�������𡭡����������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0072030a03">
���������ˣ�
���ܸо���������ȥ������

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0072040a00">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������äȡ�ҕ�礬�e���Ф�

	SetVolume("@mbgm*", 1000, 0, null);

	CreatePlainEX("�}�ţ�", 5000);
	SetShade("�}�ţ�", HEAVY);

	OnSE("se����_����_�᤺����01",1000);

	Zoom("�}�ţ�", 300, 1250, 1250, DxlAuto, false);
	Fade("�}�ţ�", 300, 1000, null, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma03/0072050a00">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
//���Ф���

	CreateColorEX("�}��ܞ", 15000, "#000000");
	Fade("�}��ܞ", 600, 1000, null, false);
	Move("�}�ţ�", 600, @0, @-60, AxlAuto, true);

	OnSE("se����_�n��_ܞ��05",1000);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0072060a02">
�������ն�����!?��

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0072070a02">
���⡢������ô�ˣ��㻹����!?
��������һ�㣡��

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0072080a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0072090a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(0, 2000);

}

..//������ָ��
//�Υե����롡"ma03_008.nss"