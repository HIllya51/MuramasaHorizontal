//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_035.nss_MAIN
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
	#bg032_��ᦌm�������b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_036.nss";

}

scene md04_035.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_034.nss"


//��������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg032_��ᦌm�������b_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	StL(1000, @0, @0, "cg/st/st���L_ͨ��_�Ʒ�.png");

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����m��
<voice name="���m" class="���m" src="voice/md04/0350010a10">
������ˣ��𳤣���

{	FadeStL(300, false);
	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0350020a11">
��û��
����פ����׼�����ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0350030a10">
����ô����������֦��˵�Ļ�������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0350040a11">
���ǵġ�
��ֵ��һ�š���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0350050a10">
������������
�����ǲ����˰�����

//�����m��
<voice name="���m" class="���m" src="voice/md04/0350060a10">
������������ȡ��͵ģ����Ǵ�Ӣ���
�����´�½�����ɡ�������

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0350070a11">
����Ȼ�������֮�󲢷ǲ�����⡣
�����������ȷ������֮�⡣��

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0350080a10">
����ίʵ�ǡ�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0350090a11">
�������ξҲʵ�����˲��𡣡�

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0350100a10">
��Ŷ������ô�ˣ��⻰����˵������ϡ�档
��Ī�������������ˣ���

{	FwC("cg/fw/fw���L_Ц�.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0350110a11">
����˵Ц�ˡ�
������Ů֮�飬������Ȼ����������֮����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0350120a11">
������������������ġ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0350130a10">
��������˵���ǡ�
����Ǹ��˵��δ�����ġ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0350140a11">
��ûʲô��
��������֮������һ��һ�оͻ�����ˡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0350150a11">
���ܽ����ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md04/0350160a10">
�����ǡ�
���ⳡս������

//�����m��
<voice name="���m" class="���m" src="voice/md04/0350170a10">
����֮����Ҫ�����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_036.nss"