//<continuation number="450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_008.nss_MAIN
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
	#bg007_��m��·a_01=true;
	#bg032_��ᦌm�������b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_009.nss";

}

scene md04_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_007.nss"


//���`�}�н�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg009_�`�}סլ��a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);
	SetNwC("cg/fw/nw�ǣȣюڈ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��Ů��
//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080010e001">
�����ֵ���λ����
�����ǽ�פ����ȫû�мӺ���λ����ͼ����

//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080020e001">
����������������ǵġ���

//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080030e001">
��������Ļ�����ǹ���ͳһ�������˳��ϵ���
��������
������ֻ������������֧�����ǡ���ĥ���ǵ�
�Ƿ�ǿ�����š���

//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080040e001">
�����Ǵ�ͽ�פ�������������ޣ�Ϊ���Ƕ��
������Ȩ�桭����

//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080050e001">
����λ��������ѭѲ��ʿ����ָʾ��
����������������լ�����������������
�̵�ȵ��Լӵȴ�����

//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080060e001">
��������п��ܱ�����ս��
��������������

//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080070e001">
�����ܵõ���λ����Ķ���Э������פ����
��ȷ�������еİ�ȫ��
���������޵�ս��ֻ���������ֳ��ܱߵش�
���У������ڶ�ʱ���ڽ�������

//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080080e001">
������λ��ʱ���͡�
��ϣ����λ��������������

//������㣯�ǣȣюڈ�
<voice name="����㣯�ǣȣюڈ�" class="������Ů��" src="voice/md04/0080090e001">
������ʳ��������������Ʒ������Ѳ�ߵ�
ʿ����Ҫ��
�����ǻ��������������ķ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//��������

	CreateColorEX("�\Ļ��", 3000, "#000000");
	Fade("�\Ļ��", 1500, 1000, null, true);

	Delete("@text0010");

	OnBG(100, "bg032_��ᦌm�������b_01.jpg");
	FadeBG(0, true);
	Wait(500);
	FadeDelete("�\Ļ��", 1500, true);

	Wait(500);
	StL(1000, @0, @0, "cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStL(500, true);

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080100a11">
�����ǺʹӺ�����½�ľ��Ӳ�һ���ء���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080110a10">
����˵�Ӻ����½·ֱ�ӹ�������Щ�һ��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080120a11">
�������ǡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080130a10">
���������࣬
��װ��Ҳ������͵ġ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080140a11">
�����ֻ�и��𰲸�������������ͷ��
���󲿶�֮��ŵ�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080150a10">
�����ֱ�ռ�����𡭡���

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080160a11">
���ֶθ�������
���϶����������ܵļƻ������в��ϵ�ѵ����
�����ˡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080170a11">
������رܿ����������ĳ�ͻ����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080180a10">
���������ٺò�����
�����ǡ�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080190a10">
����̬��������ˡ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080200a11">
���ǰ���
�����ǵ��ж���Ȼ�������ǡ�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080210a10">
�����˲�����������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080220a11">
���ǵġ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080230a10">
�������Ǳ���ô������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080240a11">
���ղ����˹�ȥ�ˡ�
�����ս�פ����ָʾ����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080250a11">
���ҷԸ����ǣ������פ������ʲô�Ѱ��
Э���Ļ����ͽ���Ҳ��ڶ�����ʱ�䡣��

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080260a10">
���Ǿͺá���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080270a11">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080280a10">
���ճء���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080290a11">
���ڡ���

{	FwC("cg/fw/fw�H��_����.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080300a10">
����ʼ���ء�����

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080310a11">
�������š����ź�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080320a10">
���������ľ��ǿ�ս�����������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080330a11">
��������ˣ�Ҳ�޿��κΡ�
��������ʵ�ɡ���

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080340a11">
������ֻ�ܽ߾�ȫ���ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080350a10">
���ǰ���
����ǰ��ս����Ҳ������ô��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080360a11">
���ǡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080370a10">
������Ҳ���������𣿡�

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�룺���������룩��090930��
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080380a11">
�������ɡ�
������Ԥ��Է��Ĵ��㣬׼���Բߡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080390a10">
���š���
����˵��������

//�����m��
<voice name="���m" class="���m" src="voice/md04/0080400a10">
������ͯ�Ӻ�һ��������ô���ˣ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080410a11">
��������������ơ�
�����Ƕ������ߣ������˶�þͻ�Ȭ���İɡ���

{	FwC("cg/fw/fw�H��_Ц��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080420a10">
�������Ǿͺá�
����������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080430a11">
��ʲô����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0080440a10">
��������������أ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0080450a11">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_009.nss"