//<continuation number="680">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_023.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md01_023.nss","Zansyu_md01_023",true);
	Conquest("nss/md01_023.nss","ZansyuSet_md01_023",true);
	

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
	#bg026_���ӘSɽ��a_01=true;
	#bg045_���ӘS�ǹ������g_01=true;
	#ev214_�����o�Ϥ�����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_024.nss";

}

scene md01_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_022.nss"

//���r�g�U�^���Β�����
//�����ӘS��
//���m����һ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg026_���ӘSɽ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	OnBG(100,"bg045_���ӘS�ǹ������g_01.jpg");
	FadeBG(3000,true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230010a05">
�����������¡�
���ཫǰ����ᦹ�ִ̫������֮�ǡ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230020a05">
�������������������ʹ��������֮�£�
��һ�������ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230030a10">
�������š�
���Ǳ�Ҳ�����ˣ���������

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230040a05">
���ǡ�
����ǰȥ��Ը���Ұ���֮���١���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230050a10">
�������Ǽ����°�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230060a05">
�����������������ݴ��֮����ί�ڼ�����
����Ϊ���ң����ۺ��½Աز�и������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230070a10">
�������ţ�����֪����
�������ĳ൨���ģ��������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230080a05">
����̿֡���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230090a05">
����ô���ڣ��ڹ�������ǰ���������һ׮��
�ΰɡ�
����Ϊ���й��£��಻��ʡ����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230100a10">
������ʲô�£���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230110a05">
���׵�����

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md01/0230120a08">
���ǣ����ס���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��󤴤������g��һ��Ͷ���z�����
	CreateSE("SE01","se���L_����_��Ͷ���z��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainEX("�}����", 5000);
	Fade("�}����", 0, 500, null, true);
	Shake("�}����", 1000, 0, 4, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw�`��줿��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�Ƚ����ӡ�
<voice name="����㣯�Ƚ�����" class="����������" src="voice/md01/0230130e148">
�������������¡�����

{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230140a10">
������?!
����Ϊʲô���������

//�����m��
<voice name="���m" class="���m" src="voice/md01/0230150a10">
��������ô���£���������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230160a05">
���������𡭡�
����������ȫ��֪�ء���

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230170a05">
��������Ϊ���������֮�̴ӣ����������Բ�
�е�����
������ͼ������������ı��֮�У���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230180a10">
������������

{	NwC("cg/fw/nw�`��줿��.png");}
//������㣯�Ƚ����ӡ�
<voice name="����㣯�Ƚ�����" class="����������" src="voice/md01/0230190e148">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230200a05">
�����ڹ����£���ӦΪ����������
������֤�Ѵ棬�޿����ɡ�����

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230210a05">
����������֮���顣��

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230220a10">
��������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md01/0230230a08">
���ף�
�������£��ƺ���̫�Ծ��ء���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md01/0230240a08">
�������ǣ����֪���ˡ���֮�ࣿ��

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230250a10">
����������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230260a05">
�����ɺ��ԣ��׵���
��������֮������֪��Ϊ������������
�ߡ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230270a05">
�������ǰɣ�
�������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230280a10">
������������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md01/0230290a08">
��������������������

{	NwC("cg/fw/nw�`��줿��.png");}
//������㣯�Ƚ����ӡ�
<voice name="����㣯�Ƚ�����" class="����������" src="voice/md01/0230300e148">
���͹������޹أ�����ʲôҲ��֪����
������̽�˹������Ƿ��е�Ļ���뷨����ȴû
���κγɹ������Բ�������������

//������㣯�Ƚ����ӡ�
<voice name="����㣯�Ƚ�����" class="����������" src="voice/md01/0230310e148">
����ϧ�������ºʹ����е�һ�������޼�
ֵ��
���Ͽ���ҵ��׼�������

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md01/0230320a08">
������졣��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ���
	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}����", 1000, 4, 0, 0, 0, 1000, Dxl2, false);

	StL(1000, @0, @0,"cg/st/st�׵�_ͨ��_�Ʒ�.png");

	SetNwC("cg/fw/nw�`��줿��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�Ƚ����ӡ�
<voice name="����㣯�Ƚ�����" class="����������" src="voice/md01/0230330e148">
���ذ�������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230340a10">
�����ӣ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230350a05">
�������¡�������Ρ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230360a05">
����������֪�䱾�ԡ���
��Ϊ�ν���������ߣ��������ϸ�˽⡣��

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230370a05">
�����໤���������ػ���͡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230380a10">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230390a05">
��������֪������ܼ򵥡�
����ô��������Ρ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230400a10">
��������

//�����m��
<voice name="���m" class="���m" src="voice/md01/0230410a10">
����֪������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230420a05">
��������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md01/0230430a08">
��������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230440a10">
������ʲô����֪����
�����Ӿ�����˶��ˡ�����

//�����m��
<voice name="���m" class="���m" src="voice/md01/0230450a10">
���ܲ�Ҫ�ѱ������ȥ��
���Ա������಻�á���

{//��С����
	NwC("cg/fw/nw�`��줿��.png");}
//������㣯�Ƚ����ӡ�
<voice name="����㣯�Ƚ�����" class="����������" src="voice/md01/0230460e148">
�������ٺ١�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230470a05">
��������ô�������¡�
������֮���ֿɷ����ࡣ��

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230480a10">
���š������ԡ�
�����������ԡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230490a05">
���ǡ�
���׵�������ȥ����

{	Delete("�}����");
	FadeStL(300,false);
	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md01/0230500a08">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ݳ����ץ����äζ��x�ޤȤ᡹
	CreateSE("PSE01","se����_����_����������_L");
	CreateSE("PSE01a","se���L_����_���̤���05");
	CreateVOICE("����㣯�Ƚ�����","md01/0230510e148");
	CreateSE("PSE01b","se����_�n��_ܞ��02");

	Zansyu_md01_023();
	DeleteStA(300,true);

//���ˤ�����ߡ�äƤ���
//���ؤä��������Щ`��

/*
//���ܥ����Τߡ��ƥ����ȳ����ʤ�
{	NwC("cg/fw/nw�`��줿��.png");}
//������㣯�Ƚ����ӡ�
<voice name="����㣯�Ƚ�����" class="����������" src="voice/md01/0230510e148">
����������!!��
*/

//����������������

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230520a05">
����������֮ĩ·�ؽ���ˡ�
���ػ���������ʵ�˿�ϲ֮�¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230530a10">
�������ǰ�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230540a05">
���Բ�δ��֮�˽����ཫһ���򾡣���ʹ֮��
��󳾡�
������°��ĵȴ�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230550a10">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230560a05">
����������֪������δ�����֮������أ���
Ȼ���ġ�
��������������������δ�����ɣ���������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230570a05">
�����Ҳ�뱣������֮����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230580a10">
������֪��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230590a05">
�������Ҳ�ɷ���ִ�з֮���ˡ�
����ô������ǡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230600a10">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230610a05">
�������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230620a10">
��ʲô�¡���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230630a05">
��ɳ��˫��֮��ɫ����ʢ�߱�˥֮��
���߰���֮�������紺ҹ֮�Ρ���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230640a05">
��������˴�������ĵȴ��пɡ�
�������޲�������������׷����������֮�Ρ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230650a10">
������������

{	FwC("cg/fw/fw�o��_��Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0230660a05">
���ߺߺߺߡ���
���۹���������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o��ȥ��
	DeleteStA(300,true);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230670a10">
��������

//���ڤ�����y�ߚ����L
//�����m��
<voice name="���m" class="���m" src="voice/md01/0230680a10">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ã��Ф�С����Ф�椯�o�Ϥ�����
//��������ݳ��������Σţ֤�ʹ�������褯�狼��ʤ���
	ClearWaitAll(2000, 1000);

	Delete("@�ץ���*");

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev214_�����o�Ϥ�����.jpg");
	CreateSE("SE01","se����_����_��������_L");
	Delete("�ϱ���");
	MusicStart("SE01",1000,1000,0,1000,null,true);
	FadeDelete("�}��ܞ", 1000, true);

	WaitKey(3000);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_024.nss"


.//�ץ�����======================================================
..//���פ�������
function Zansyu_md01_023()
{
	CreateProcess("�ץ�������", 5000, 0, 0, "ZansyuSet_md01_023");
	Request("�ץ�������", Start);
	Request("�ץ�������", Disused);
}

function ZansyuSet_md01_023()
{
	MusicStart("@PSE01",0,1000,0,1000,null,true);

	Wait(6000);

	SetVolume("@PSE01", 100, 0, null);
	MusicStart("@PSE01a",0,750,0,1000,null,false);

	Wait(300);

	MusicStart("@����㣯�Ƚ�����",0,750,0,1000,null,false);

	Wait(1000);

	MusicStart("@PSE01b",0,750,0,1000,null,false);

}