//<continuation number="780">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_021.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_021.nss","GunFlash",true);

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
	#bg042_���΍u�ذ�_03 = true;
	#bg040_���΍uȫ��_03 = true;
	#bg046_���΍u��̨_03 = true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma04_022.nss";

}

scene ma04_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_020vs.nss"

//�����
//��һ����������Ϥϣ�����
//��һ��������Ǥ�����Ϥϣ�����

	//$Ichizyou_Dead=ture;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣�

//����̨��һ��

if(!$Ichizyou_Dead){

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u��̨_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210010a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//��С���
...//��I�������`�ȤΈ���

....//if_Start
if(!$Kanae_Dead){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��һ��������һ��״����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}else{
....//else_Start

...//��һ���Τ������`�ȤΈ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һ��������һ��״����
����Ȼ���Ѿ���������Ҳû�취���������ϵ�������һ
�����ƣ����Ų�æ�ظ���Ī���ս�������


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}
....//if_End

..//������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����ɫ�����ߡ������Ǻš������֣�ʹ��Χ�����ľ���
������֪�������޻��ǽ�פ����������ˡ�
����һ�����Ǵ�˵�еľ�����Ⱦ��

����һ����ʿ����ɺ�������Ķ��飬��Ƭ���ķ����ƶ���

��һ��Ҫ��ֹ���ǡ���������ȥ����ɾ޴�ĲҾ硣

��Ȼ����������������û���뿪�Ǹ��ط���
��ֻ����������ȥ�ˡ�

��Ҳ���ǣ��Լ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á�
	CreateSE("SEL01","se����_����_�ߤ�01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Move("@StR*", 300, @-120, @0, Axl2, false);
	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������һ����˵���������ж����������ͬһ�����ϵġ�
����ȫû����ԥ����������˷���Դ����Ϊ��

{	SetVolume("SE*", 6000, 0, null);}
���������Ҫ���ǵ�����Ļ�����ֻ��Ϊ�˴ﵽĿ�Ķ�
���е�˼����
��
����������ô���ź��ء�

�����ܴӵ�Ƭ�������·�ߴ���ȥ��
���������»ᱻ���롰��Ⱦ���ķ�Χ�С�

�����뾡���ܵ�ͨ��С������Χ����ȥ��
���������ü���

�������ķ����أ�<k>
������û�С�������һ���˼�����˾��ж��ˡ�

������֮�����ô���ء�
�������ֹȫ����װ�ľ��ӣ�

��<RUBY text="������">������</RUBY>�����ͻ����ķ����أ�<k>
������û�С�������һ���˼�����˾��ж��ˡ�

��˼��������
��֮��ֻ�����Ӧ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//��ѩ܇�
	SetVolume("SE*", 1000, 0, null);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	StL(1000, @60, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("@StL*", 300, @-60, @0, DxlAuto, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210020a12">
���������ݡ�����

{	StR(1000, @60, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	CreateSE("SE01b","se����_����_�᤺����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300,false);
	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210030a02">
���쵰��
������Ϊʲô���������ֵط�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm24",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������ģ�����ʶ���ˡ�
�������������ѡ�

��ѩ���һ�ء�
����ΪĻ����ӶҰľɽ�����פ�������߹���С��졣


��Ϊʲô�����ֵط�����
��
��һ�������н�������ʵֱ����ϵ��һ���������ˡ�
�����������ӡ���������ǰ��һĻ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210040a02">
��Ϯ���ն�������������쵰��!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



..//��С���

...//��һ���Τ������`�ȤΈ���

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

....//if_Start
if($Kanae_Dead == true){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210050a12">
���ٺ١����ǵġ���
������ȥ����ôһ���°ɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}else{
....//else_Start

...//��I�������`�ȤΈ���

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210060a12">
����������С����Ҳ���˰�����
�����Ǽһ�һ�𡭡���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210070a12">
���١��١�
��û�뵽ƫƫ������ʱ������һ��
�ء�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}
//if_End

..//������

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210080a02">
�������ɶ����ھ����ˡ�
�����ҹ���������æ���ء���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210090a12">
����ѽ��
����ô�ˡ�������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210100a02">
����ͬ��ľ��ӷ����ˣ���Ҫ����
������
��������Ҫȥ��ֹ���ǡ���������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210110a12">
�������١��١��٣�
���⻹���ǲ����˰�����ѽ����Ȼ
���������̬���𡭡���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210120a02">
���������ľ��档
������������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210130a12">
�����������˵����Ҫ�Ļ���
��С�������ô������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210140a02">
���һ�ɱ���㡣
��ѩ���һ�ء���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210150a12">
����ô����
��С�㣬��ɱ�����𣿡�

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210160a02">
��û�С���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210170a12">
���١��١�����
����ô�����ɱ���𡭡�����

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210180a02">
��<RUBY text="����������������">��ͷš�Ͼͻ�����</RUBY>��
������û��ɣ���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210190a12">
������������

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210200a12">
���١��١��٣�
����ѽ������������������������!!��

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210210a12">
��û����<RUBY text="����">����</RUBY>��
������Ҫ�������У���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210220a12">
�����Ȼ����������Ԥ����ˡ���
�����С�㡣��

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210230a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������á�һ�i�M��
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,800,null,false);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210240a12">
��Ŷ����
�����¡����¡�����

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210250a02">
��������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210260a12">
���Ҳ��������ġ���
���������������ô������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210270a12">
�������Ǿ��ӡ���
����ɲ��ǿ���һ�����ܹ���ֹ��
�ɡ�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210280a02">
�������ԵĻ�����ô֪������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210290a12">
�����㲻ȥ��Ҳ��֪���İɣ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210300a02">
������֪����ֻ��һ���¡�
��˵�����ֻ���ĥ����ʲô�������Ļ���
һ���Ȳ����κ��ˡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210310a12">
�����������ٺ١���

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210320a02">
��������Կ��Ļ���˵�����ܾȵ��ˡ�
��������Ҫȥ������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210330a12">
��С�㡣��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210340a02">
���ټ�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210350a12">
������Ҫ<RUBY text="����">����</RUBY>�𣿡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210360a02">
��������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210370a12">
����ʹ�����Ǿ���Ҳ��һ�ٻ������������
�������ڣ���Ҫ�𣿡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210380a02">
������һ
��������˵ʲô����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210390a12">
����Ҳ������������Ϊһ��Ӫ�ء���
���ã��и���������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210400a12">
���������
����һ��Ϊ��<RUBY text="����">��ս</RUBY>�������ҵĵ��ߡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210410a02">
����������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210420a12">
��ԭ���������Ǳ�����һ�¿������Ϳ�
��ʹ�õģ�������һ���<RUBY text="������">������</RUBY>
ȴ�в�ͨ��
����һ��Ҫ�Լ�ѡ�����ˡ�����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210430a12">
�����������ء�
��С��Ļ�����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������
	CreateSE("SE01","se�ճ�_���_�²���01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,750,null,false);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210440a02">
���������񣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210450a12">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210460a02">
��������ʲô����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210470a12">
�������С��찡��С�㡭��
��ϲ�������������ˡ�����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210480a12">
��ֻ������Ŷ������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210490a02">
�����������������ˡ�
��θ�ᶼҪ�³����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ڤá�
	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210500a12">
���ٺ١�����
��������ˡ�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210510a02">
�����Ǳ�̬�𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210520a12">
������ô��������
���Ҿ����Ҳ��ۣ���<RUBY text="������">�ⶫ��</RUBY>�ƺ�
����С��Ļ����ء�����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210530a12">
���������һ�Ļ�����ս������
�������Ǿ��ӡ�������<RUBY text="����������������">ɱ������Ů���ǵ�</RUBY>
<RUBY text="������������">�����������</RUBY>��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210540a02">
�������ߡ�
���ҿɲ����㡣��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210550a02">
��ԭ�������ʩ�����ֶ���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������á�
	CreateSE("SE01","se���L_����_���nͻ01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("�}��", 15000, "#FFFFFF");
	Wait(1);
	FadeDelete("�}��", 200, true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210560a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���V���x��
	CreateSE("SEL01","se����_��x_�k��04");
	MusicStart("SEL01",0,1000,0,800,null,true);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210570a02">
������ʲô��
����Դ̫үү���������

//��ʤ�
{	SetVolume("SEL01", 3000, 500, null);
	NwC("cg/fw/nw������.png");}
��
//�����ڡ�
<voice name="����" class="����" src="voice/ma04/0210580b40">
���������������ú��ʱ����

��
//��ʤ�
//�����ڡ�
<voice name="����" class="����" src="voice/ma04/0210590b40">
����������������֮������
�����������������һ������!!��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210600a02">
��?!��

//��ʤ�
{	NwC("cg/fw/nw������.png");}
��
//�����ڡ�
<voice name="����" class="����" src="voice/ma04/0210610b40">
����������������塣
�����������������Ƿ�������塪����

//��ʤ�
��
//�����ڡ�
<voice name="����" class="����" src="voice/ma04/0210620b40">
������������ش�
����������<RUBY text="��������������������������">����Ƿ��ܳ�Ϊ������֮����</RUBY>!!��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210630a02">
��ʲ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڡ���ţ��
//���ѹ⡣�ʤ�Ӣ�۱��Q��
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorEXadd("�}��", 8000, "#FFFFFF");
	Fade("�}��", 2000, 700, null, true);
	WaitKey(300);
	Fade("�}��", 3000, 1000, null, true);
	WaitKey(1000);
	DeleteStA(0,true);
	CreateColorSPadd("�}�ף�", 8200, "#FFFFFF");
	CreateTextureSP("�}�ӣ�", 8100, Center, Middle, "cg/st/3d������ţ��_����.png");
	Fade("�}�ף�", 1250, 0, null, false);
	DrawDelete("�}�ף�", 1000, 1000, "zoom_01_00_1", true);

	PrintGO("�ϱ���", 25000);

	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);

	OnSE("se���L_�Ɖ�_���k02",1000);
	OnSE("se���L_����_���ϕN01",1000);

	DrawDelete("�ϱ���", 300, 1000, "slide_02_01_0", true);



	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210640a12">
���١��١��١�������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210650a12">
��ȥ�ɣ�С�㡭��
��ȥά��<RUBY text="����">����</RUBY>��!!��

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/0210660a12">
����������������������������
���ٹ�������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}


..//������ָ����
//�Υե����롡"ma04_022.nss"����or���񣱣�����Ҫ����ԭ�_�J
//�룺�񣱣��˺������O��



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣�

//��Ƭ��
//�������΍u���֤������ä��Ȥ����O���ʤΤǡ����΍u
//������Υ��åפǴ��ÿɣ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg040_���΍uȫ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��Ƭ��������������Ӧ�ó�֮Ϊԭ�����𡪡������ڻ�
���С�
�����ڽ�֮��<RUBY text="��������">��ը����</RUBY>������
���Բ����ܻ�������ů�ı����ﰲ˯��

�����ܺ�Х��������ִ����ֺ���������С
���ɱϾ���������ײ�˹������������ⷴ��
ǿ����<RUBY text="������������">��ʵ�ķ���ʵ</RUBY>�У�������
��������Ī������Ŀ־�֮�С�


�������յ������������ľ��ٶӣ�Ҳ���ȳ����˹�ϵ��
����˵ƽϢ�����ˣ�����ά���Լ���ͳ�ʶ���ʮ�ּ���
��״����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw���L_�䅗.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0210670a11">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�������ǽ���ͷ��Ӭһ��Ĳ��¾ۼ������������ճ���
Ң�������־����𳤵���С����Ƭ���Ľ��紦ʱ��ӭ��
���ģ�ȴ��������̬�õ������������


�����������ѵ�Ԥ�ס�
�����������Ҽ��еĻ�е������������ĺ�������

������ս������������Ͼ������ˡ�
���Ǿ��ӡ�

����������Ϊĳ�����ɶ�ʧȥ��ͳ�ʣ���ȫ����ʧ��״
̬��С��ģ���ӡ�
��ɱ¾�ƻ��ַ��Ķ���Ⱥ��

����˵��С��ģ������ս��ȴ���Խ�Ƭ��һ����Ϊ������

����Ϊǰ�ˣ������ٶӻ���Ҳ����ʲô���°ɡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0210680a11">
��<RUBY text="������">�Ǽһ�</RUBY>�𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������߶�������Ĵ����ʡ�
��
���������Ǻš�

���ھ��������εĽ�֮���������������������α��
�����ģ�����֪����
��Ȼ������������������<RUBY text="����">ͷ��</RUBY>��

�����Ǻų����ˡ���
�����ǣ���ʹ����С���ľ���������

��������ε��¼�ʮ�а˾��ǣǣȣѵ����塣
����Ȼ���𳤿���ȷ����ˣ�����Ҳ����ȷ�����Ǻ�һ
�������Լ����������¡�

�����ä��Ҳ�ڿ���֮�С�
��Ȼ�������۷���ʲô��Ҳ�������ǵ���֮�¡����ƻ�
����ˡ�

����Ϊ�ֺ�Ӧ�ò����꼰����
���������̫���ˡ�

����֮����Ƭ���������ڽ����������£��ǲ�����Ԥ��
���ġ���
��Ȼ�����־ޱ��п��ܻὫ���ƴӸ������Ʒ�����Ӧ��
Ҳ���ڿ���֮�еġ�

��������Ϊ���˺ü��ξ����ı��棬����֪�����Ǻŵ�
��Ѱ����ȴ���������Ժ�
��ȭͷ��ں޶�������Ȼ��Ϊʱ����

���𳤿����ˡ�
���������ɧ���Ĳ�����Ҳ�����ˡ�

����ѹѹһƬ�����복�������������С�
���β��غ�У��ķ����ѵر��ۣ�Ȼ��ȴ��Ϊһ��
���崳�˽�����

������ף����ս����
���·���������������ֵ�����һ�㣬����Ϊɱ¾��ȸ
Ծ�����ţ���Ƭ��������

��������°ڳ�ӭ�����͡�
����Ȼ������Ч����

��������ô��ѥ���������޷���ֹ���ǡ�
�����£�������������һǧ���ٵ��Űپ��Ѿ��Ǽ����ˡ�

����ˮ��н��
��Ȼ�����Ƿ·����Һ��һ����и��

����ס��ҡ�Ĳ��£������������߳ܣ����þ���

�����Լ������ܶ�ɱ��һǧ�˵ľ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0210690a11">
��ǹ�ӣ�׼��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01a","se���L_�|��_�}��������01");
	CreateSE("SE01b","se���L_�|��_�}��������01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE01b",0,1000,0,800,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��Ȼ��ʼ�ˡ�
��Ϊ��������һС���־����ܴӽ�ҹ�������ѵ��Ҹ���
�����κ����Ͽ�Ҳ��Ϊ�κ��˸�л����С��ս����ʼ�ˡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//��һ�������Έ���

...//if_Start

if($Ichizyou_Dead){
	SetFwC("cg/fw/fw���L_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0210700a11">
���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�Щ`��
//�����㤪�`������܊�ͻ��
//���֥�å�������

	CreateSE("SE01a","se���L_�|��_�C�v�|����01");
	CreateSE("SE01b","se���L_�|��_�C�v�|����01");
	MusicStart("SE01a",0,1000,0,1000,null,true);
	Wait(100);
	MusicStart("SE01b",0,1000,0,800,null,true);

//�ץ����ζ��x
	CreateColorSP("�}�ե�", 7950, "#FFFFFF");
	CreateProcess("�ץ�ե�", 7900, 0, 0, "GunFlash");
	SetAlias("�ץ�ե�","�ץ�ե�");

//�ץ��������`��
	Request("�ץ�ե�", Start);

	WaitKey(1000);
	SetVolume("SE*", 3500, 0, null);
	CreateColorEX("�}��ܞ", 8000, "#000000");
	Fade("�}��ܞ", 3000, 1000, null, true);
	WaitPlay("SE01a", null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������ҹ��Ƭ������������Ϊ�Űٶ�ʮ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Delete("�ץ�*");
	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_022.nss"

}else{
...//else_Start

..//��һ������Έ���

	SetFwC("cg/fw/fw���L_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0210710a11">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؓĔؓĔؓ�
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01a","se���L_����_�����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("�}��", 6000, "#FFFFFF");
	CreateColorSP("�}�\", 5900, "#000000");
	CreateTextureSP("�}�ţƣ�", 5900, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureSP("�}�ţƣ�", 5900, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	CreateTextureSP("�}�ţƣ�", 5900, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	Shake("�}�ţƣ�", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("�}��", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01b","se���L_����_�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}��", 0, 1000, null, true);
	Delete("�}�ţƣ�");
	Shake("�}�ţƣ�", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("�}��", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01c","se���L_����_�����03");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("�}��", 0, 1000, null, true);
	Delete("�}�ţƣ�");
	Shake("�}�ţƣ�", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("�}��", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01d","se���L_����_���nͻ01");
	MusicStart("SE01d",0,1000,0,1250,null,false);
	Fade("�}��", 0, 1000, null, true);
	Delete("�}�ţƣ�");
	Delete("�}�\");
	FadeDelete("�}��", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����������ɫ�Ĺ�������
��������ҹĻ��

{	OnSE("se���L_�Ɖ�_����01",1000);}
����ʱ��ǰ��ͻ���ļ�������<RUBY text="����">��û</RUBY>��
���Ĵ��ͳ��ֱ�ն�ϡ�

�����ϻ�Ϊ����֮��ı�����ȥ·��
����ʿ����ŭ�ĺ��������
�������Ҳ����ɫ�������ӹ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؓĔؓ�
	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1100,null,false);
	CreateColorSP("�}��", 6000, "#FFFFFF");
	CreateColorSP("�}�\", 5900, "#000000");
	CreateTextureSP("�}�ţƣ�", 5900, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	CreateTextureSP("�}�ţƣ�", 5900, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	Shake("�}�ţƣ�", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("�}��", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01c","se���L_����_�����03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("�}��", 0, 1000, null, true);
	Delete("�}�ţƣ�");
	Shake("�}�ţƣ�", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("�}��", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01d","se���L_����_���nͻ01");
	MusicStart("SE01d",0,1000,0,850,null,false);
	Fade("�}��", 0, 1000, null, true);
	Delete("�}�ţ�*");
	Delete("�}�\");
	FadeDelete("�}��", 600, false);
	OnSE("se���L_�Ɖ�_����",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��ʿ�����ֵ�ǹ֧��һ�������ƻ���
����ϻ����������ȷ�ش򴩣�ʧȥ�˴�͸�����������


{	CreateSE("SEL01","se����_����_����᤯01_L");
	MusicStart("SEL01",2000,800,0,1000,null,true);}
��ʿ������š���й�ŷ�ŭ��
��Ұ�ޱ��ε���͸���������ķ�ŭ��

����ս������������ʿ��Ҳ�������ǽк���
��Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210720a02">
�����졣
��������ɱ�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 8000, Center, InBottom, "cg/bg/resize/bg001_��a_03.jpg");
	Move("�}����100", 30000, @0, InTop, DxlAuto, false);
	Fade("�}����100", 3000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������ӿ������µ�˲�䡣
����Ⱥһͬ��Ĭ�ˡ�

��ɥʧ����Ϊ��������ԣ�һζ�س������ƻ������е�
���ǡ���
���������޷��������

�����ǣ�Ϊʲô�ء�
��
������η�塣

���·���˵��ϻ�����ʥ����ǰ����ͷһ�㡣
���·�������ڴ�����Ů��ϥ���ϰ���һ�㡣
��
������ʹ�����ǻ۵�Ұ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_�䅗.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0210730a11">
�������ǡ�����

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0210740a11">
�������Ǹ����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm11",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��������ɫ��
���Ǹ���״��

������ӡ��
�����ڰ�ᦹ��زص��ļ��п�������

���Ŵ��ľ��ᡪ��
����������������̬��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0210750a11">
���Ǹ��ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���������µ�һ�ȡ�
�������ƹ��ĸɽ�Īа��
���ë�ɶ�̩֮��Ҳ�޷���֮���⡣

�������˲��ɶ�ҡ֮���Ҳ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڵǈ��ݳ��_ʼ
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��", 5000, "#FFFFFF");
	CreateColorSP("�}�\", 50, "#000000");
	FadeDelete("�ϱ���", 0, true);
	Fade("�}��", 600, 0, null, true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210760a02">
���������������������𾡶����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ƥ�åס��������ɡ��Ǥ��äȡ�
//�������SE��Ҫ�������֤�����Ȥ�����Ԕ�����Է֤ˡ�
	CreateSE("SE01","se����_냇��_�z�ǈ���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("�}����", 100, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�01-����.png");
	SetBlur("�}����", true, 3, 500, 100, false);
	Zoom("�}����", 0, 10000, 10000, null, true);
	Zoom("�}����", 300, 1000, 1000, null, false);
	Move("�}����", 300, @280, @0, nulll, true);

	Wait(300);

	CreateSE("SE01b","se����_냇��_�z�ǈ���01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("�}����", 100, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�01-����.png");
	SetBlur("�}����", true, 3, 500, 100, false);
	Zoom("�}����", 0, 10000, 10000, null, true);
	Zoom("�}����", 300, 1000, 1000, null, false);
	Move("�}����", 300, @-280, @0, null, true);

	WaitKey(1000);

	CreatePlainSP("�}����������", 200);
	Wait(1);
	Delete("�}����");
	Delete("�}����");
	FadeDelete("�}����������", 1000, true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210770a02">
���������������������Ͼ�а�񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����װ�״��x����FullMetalProvidence��
	CreateSE("SE02","se����_냇��_�z�ǈ���01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("�}��װ", 100, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�02-װ.png");
	SetBlur("�}��װ", true, 3, 500, 100, false);
	Zoom("�}��װ", 0, 2300, 2300, null, true);
	Zoom("�}��װ", 200, 1000, 1000, null, false);
	Move("�}��װ", 200, @327, -1, null, true);

	Wait(50);

	CreateSE("SE02b","se����_냇��_�z�ǈ���01");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ּ�", 100, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�02-��.png");
	SetBlur("�}�ּ�", true, 3, 500, 100, false);
	Zoom("�}�ּ�", 0, 2300, 2300, null, true);
	Zoom("�}�ּ�", 200, 1000, 1000, null, false);
	Move("�}�ּ�", 200, @324, @150, null, true);

	Wait(50);

	CreateSE("SE02c","se����_냇��_�z�ǈ���01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ִ�", 100, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�02-��.png");
	SetBlur("�}�ִ�", true, 3, 500, 100, false);
	Zoom("�}�ִ�", 0, 2300, 2300, null, true);
	Zoom("�}�ִ�", 200, 1000, 1000, null, false);
	Move("�}�ִ�", 200, @-286, -2, null, true);

	Wait(50);

	CreateSE("SE02d","se����_냇��_�z�ǈ���01");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSP("�}���x", 100, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�02-�x.png");
	SetBlur("�}���x", true, 3, 500, 100, false);
	Zoom("�}���x", 0, 2300, 2300, null, true);
	Zoom("�}���x", 200, 1000, 1000, null, false);
	Move("�}���x", 200, @-285, @140, null, true);

	WaitKey(300);

	CreatePlainSP("�}װ�״��x", 110);
	Delete("�}��*");

	CreateWindow("�}����", 120, 512, 0, 512, 576, false);
	SetAlias("�}����","�}����");
	CreateTextureEX("�}����/�}�֣ƣ�", 120, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�02-ALL.png");

	CreateWindow("�}����", 120, 0, 0, 512, 576, false);
	SetAlias("�}����","�}����");
	CreateTextureEX("�}����/�}�֣ƣ�", 120, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�02-ALL.png");

	Wait(1);

	Fade("�}����/�}�֣ƣ�", 0, 1000, null, true);
	DrawTransition("�}����/�}�֣ƣ�", 2000, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	Wait(200);

	Fade("�}����/�}�֣ƣ�", 0, 1000, null, true);
	DrawTransition("�}����/�}�֣ƣ�", 2000, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	WaitKey(1000);

	CreatePlainSP("�}��д", 10000);
	Delete("�}��*");
	Delete("�}װ�״��x");
	FadeDelete("�}��д", 1000, true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0210780a02">
��������������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ڡ�
//��������ȫ����ȡ��Хө`��
//��������ݳ���δ��ɡ�
	CreateSE("SE03","se����_냇��_�z�ǈ���02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSP("�}������", 100, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�03-����.png");
	SetBlur("�}������", true, 3, 500, 100, false);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 200, @0, @0, @1440, null,false);
	Zoom("�}������", 200, 1000, 1000, null, true);
	Wait(100);

	StC(100, @0,@0,"cg/st/3d����_����_�i��.png");
	FadeStC(300,false);
	CreateTextureSP("�}��������", 100, Center, Middle, "cg/sys/Telop/tp_���ڵǈ�03-����.png");
	Zoom("�}������", 300, 1200, 1200, DxlAuto, false);
	FadeDelete("�}������", 400, true);
	Move("�}��������", 500, @+200, @0, null, true);
	$�Еr�g=RemainTime("SE03");
	WaitKey($�Еr�g);

//�􄇓�һ�W�������ɩ`��
	PrintGO("�ϱ���", 25000);
	CreateColorSPadd("�}��", 5000, "#FFFFFF");
	CreateColorSP("�}�\", 100, "#000000");
	Delete("�ϱ���");
	FadeDelete("�}��", 200, true);

	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SL_down(@0, @0,8000);
	SL_downfade2(10);

	Wait(200);

	CreateSE("SE02","se���L_�n��_�nͻ01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(300);

	OnBG(100,"bg040_���΍uȫ��_03.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}��", 200, Center, Middle, "cg/bg/bg040_���΍uȫ��_03.jpg");
	Shake("�}��", 6000, 0, 10, 0, 0, 1000, DxlAuto, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����������ͬ��ˮը����һ����
������֮����Ƭ���ٶ�ն�롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}
...//if_end

}

..//������ָ��
//�Υե����롡"ma04_022.nss"



.//�ץ�����======================================================

..//����ե�å���
function GunFlash()
{
	while(1)
	{
	Fade("@�}�ե�", 0, 750, null, true);
	Wait(60);
	Fade("@�}�ե�", 0, 0, null, true);
	Wait(10);
	Fade("@�}�ե�", 0, 750, null, true);
	Wait(60);
	Fade("@�}�ե�", 0, 0, null, true);
	Wait(10);
	Fade("@�}�ե�", 0, 750, null, true);
	Wait(60);
	Fade("@�}�ե�", 0, 0, null, true);
	Wait(10);
	Fade("@�}�ե�", 0, 750, null, true);
	Wait(60);
	Fade("@�}�ե�", 0, 0, null, true);

	$GunTime = Random(5) + 1;
	$GunTime2 = $GunTime * 20;
	Wait(200);
	Wait($GunTime2);

	}
}