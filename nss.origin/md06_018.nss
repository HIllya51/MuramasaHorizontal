//<continuation number="740">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_018.nss_MAIN
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
	#bg112_���ؤ��ε�a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_019.nss";

}

scene md06_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md06_017.nss"


//�����ա����ؤ�

//ð�^���S����ʤ��ΤϤ虜�ȤǤ� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	CreateSE("SEL01","se��Ȼ_ˮ_�����01_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	OnBG(100, "bg112_���ؤ��ε�a_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ǲ���һ����

�����������Ȼ���಻����ô�Ҳ���깤��
�Ż���һϦ֮�䣬����˺���ĳ�Ѩ��
�������ú��ǳ��ף�Ŀ�����⾰����˭�������
���ڴ˴��ؽ���������ͷ�ˡ�

��������ԭ��һĿ��Ȼ��
����Ϊ���꣬ˮ�����Ӷ������İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm30", 0, 1000, true);


	SetNwC("cg/fw/nwС�����y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0180010e228">
������������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0180020e227">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һ�����ŵ�ͬ���ǣ���Ĭ�ؿ�����һ��״��
���ƺ���˵���ľ���Ҳ�������ڡ�

����Ҳ��ࡣ

������ͬʯ�ز�������ľ��ԭ�أ���ƾ���ס��
��������
��ʱ�����������������ŵĳ�������

��������̫�����ˡ�

������ʧ��������Ϊ�ػ���׮��̫ǳ�˰ɡ�
������Ϊ�Ѿ����ǵ��ӵײ�����ʵ���ѵػ�
��ø���һЩ��������ʵ��������

������������һЩ�����Ҳע�⵽�ˡ�
�������ʩ���ж��ע��Ļ������д����󶼿���
���⣬���Ǵ�����̫�ֹ۶�û�����¡�

����Ӧ�������صضԴ��˴�ʩ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md06/0180030a00">
��������һ���������ڰɡ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0180040e227">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180050a00">
����������ơ�����

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0180060e228">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180070a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������Ӧ��
����Ӧ�һ���ģ�Ψ�������ǰ����ź���
�����³�������ͽ�͸С�

���޿ɺ�ǡ�
�����㱧��û�лر������չ���һ��ľ���
ȥ���������վ����һ����Ȼ�����⻹�ǻ�
����ɥ���ɡ�

��Ŀǰ�һ�δ����������ǵķ�����
�����������Ƚ��к����ա�

����̤����У������Ѿ�����ǰ������Ʒ���
ľ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180080e307">
�����������ǵġ���

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180090e307">
���Ҳ��̶ð�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180100a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ʼ��δ��������Դ����������ˡ�
������Ҳͬ�������Ǹ����������̹ܣ�
��ҡ��ڵ����˹�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180110e307">
��ι����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180120a00">
�����á���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180130e307">
������ȫ������һȺ���⺺������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180140a00">
��������
��˭��û�����ŵľ��鰡����

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180150e307">
��Ҳû������ľ���ļһ�ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180160a00">
���������ԡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180170e307">
�����������ǻ������Ű���
���ͺñȿڳݲ���ļһ���ͼ˵��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180180a00">
�����������ô���Ѷ��𣿡�

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180190e307">
����Ȼ���Ѿ����ݣ���������ľ������
��Ҳ�����������������

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180200e307">
�������ھ�ֹ�ĵ����Ͻ��췿�ݣ���������
��ˮ�����������鷳������Ҫ���ǵ�
ˮ���ĳ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180210a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ɲ����
��ֻ�����⺺�Ļ��վ�̫
��ǿ�˰�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md06/0180220a00">
������������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180230e307">
���ţ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180240a00">
��������ľ�����������ž��������
�ܷ�������һ��֮���أ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180250e307">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180260a00">
��ֻҪ��һЩ����Ϳ����ˡ�
������ء�����

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180270e307">
�������û�����˼���Ͳ����ˡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180280a00">
����ô������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180290e307">
���Ǳߵ�С���ǣ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0180300e228">
����������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0180310e227">
��������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180320e307">
�������ڿ�ʼ�����ҵĻ�ȥ����
�����Ȱ���Щ����������ʰһ�¡���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0180330e228">
��������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0180340e227">
��������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180350e307">
��������ɵ��ţ�
������Ҫ�������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0180360e228">
����������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0180370e227">
�������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q

	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("�\Ļ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ");

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md06/0180380a00">
����ô���ػ��Ͱ�����������
��֧����ô�죿��

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180390e307">
���Դ˺ӿ���û���Ǹ���Ҫ��
��������������������ڻ������㡣��

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180400e307">
����Щ��̨Ҫ��þ�����ʵ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180410a00">
���ã������ˡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180420e109">
��������
���ǲ��ǻy�ҵ�үү��ڸ�ɶ�أ���

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180430e110">
�����ڰ���Щ�һ��𣿡�

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180440e307">
��������ô˵��
��С���ǣ�������Ϣ�𣿡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180450e110">
���ǵģ�����������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180460e307">
���Ǿ�����æ����

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180470e109">
��ʲô��
��ιι��Ϊʲô����Ҫ�������£���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180480e307">
����ĥĥ�����ˡ�
��û���ţ����ǲ���Ҳ���������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180490e109">
��˵�á���Ҳ�ǡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180500e307">
�������������Ļ�������֪��Ҫ
�ȵ��������²����깤����

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180510e110">
������������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180520e307">
���Ͻ����·�ȥ��
�����У��������пյļһﶼ��������

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180530e110">
��������ô�죿��

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180540e109">
��������ô�졣
����������û�취�ɡ���

//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180550e109">
�����ǵģ����ǵв�����ͷ�Ӱ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ؤ�
//���Ȥ�Ƥ󤫤�

	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateSE("��", "se����_����_���O��01_L");
	MusicStart("��", 0, 1000, 0, 1000, null,true);


	DrawTransition("�\Ļ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ");


	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0180560a00">
������ʵ���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����벻���ĳ�����

��ԭס������������񣬾�Ȼ��ͨ��������
��Ϊ�˽���ĳ�����������������ϡ�

�����ǲ�δ�ͽ⡣

����û�н�̸��Ҳ�������Ӷ�Ц��
��ż�������Ŀ��Ҳ�Ǳ���ģ��˴˼��
�����θ���¶���š�

��������ˡ�
��
�������ᶯ���ص�ľ��ʱ��
��������ӵ״���׮��ʱ��

��һ������ͷ�Ĺ���Ӧ�Ӳ�Ͼ����һ���˾ͻ�ʩ��Ԯ����
�������˿��ܼȷ�ס�����������ͬ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md06/0180570a00">
�������Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��Ҳ�����ʱ��á�
��Ҳ����谭���ࡣ

�����ǣ�����һ�ա�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q

//���������S�����������g�ʚ�����ݳ����� inc�Ѿ�
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("��", 1000, 0, null);



	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("�\Ļ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ");


	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180580e110">
����ð����Ҳ��ȥ�ֳ��ɣ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180590e109">
���ǰ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��l������
	OnSE("se����_����_һ�i", 1000);

	SetNwC("cg/fw/nw̫�ä���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180600e109">
���ţ���

//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180610e109">
����ô���㰡����

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180620e110">
��֮ǰ˵��������
��������˼������Ȼ�����ʶ�û�У�
������Ǿ���Ҫ���Լ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��
����������������������������
������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180630e110">
��������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180640e109">
��ʲô��
����˵ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q

	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("�\Ļ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ");


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md06/0180650a00">
���ŵĿ�ȣ�ֻҪ���㹻һ����ͨ��
�����˰ɣ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180660e307">
������ٿ�һ�㡣
�����������˲���ͨ������
�����Ļ�������Ҳ����ͨ���ˡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180670a00">
�����ȷ�ܱ�����
�����ǲ��ϴ�Ż᲻������

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180680e307">
�����õ��ġ�
��Ϊ���Է���һ��
�ҿ��Ե���ǰ�Ĺ���ȥȡһЩ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0180690a00">
�������Ǿ��������ˡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0180700e307">
�����ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q

	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("�\Ļ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ");


	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180710e110">
��������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180720e109">
��������

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0180730e110">
�������Ǹ����ŵ�С�硭������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0180740e109">
�����ᡭ���ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_019.nss"