//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_022.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_023.nss";

}

scene ma02_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_021vs.nss"

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_������01_L");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	WaitKey(3000);

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220010b45">
������������

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220020b45">
������������Ԩ�ˡ�����

{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220030b45">
�������ʹ˽����𡭡���

{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220040b45">
��������Ȥ��������

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220050b45">
������Ȥ��һ��������������

{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220060b45">
������һ�¡�����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220070b45">
������������Դ̫����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���¤���⤬�
//���£ǣͣ�����ħ����
//��������ݳ�������졢���m����
	SoundPlay("@mbgm02",3000,1000,true);

	PrintGO("�ϱ���", 10000);

	CreateColorSP("�}�ե�", 100, "#FFFFFF");
	DrawTransition("�}�ե�", 0, 0, 30, 1000, null, "cg/data/circle_13_00_0.png", true);

	SetVolume("SE*", 2000, 0, null);
	FadeDelete("�ϱ���", 2000, true);

	SetFwC("cg/fw/fw�L��_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220080b45">
������ʲô����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220090b45">
������������

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220100b45">
�����ǡ���ʲô����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220110b45">
���⡭����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220120b45">
��������������

{	FwC("cg/fw/fw�L��_�@��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220130b45">
�����ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����

	CreateColorEXadd("�}����", 5000, "#FFFFFF");
	Fade("�}����", 800, 1000, null, false);

	DrawTransition("�}�ե�", 1000, 30, 1000, 1000, Axl1, "cg/data/circle_13_00_0.png", true);


	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220140b45">
��������������

{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220150b45">
��������������������

{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220160b45">
����Ȼ������

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220170b45">
��<RUBY text="������">������</RUBY>����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220180b45">
���㡭����ġ�������

{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220190b45">
������������������
����Ȼ������������

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220200b45">
����ԭ��Ϊ�ǲ����ڵġ���
��������ڣ�Ҳֻ���������ĵ�ʯ����ѡ�����

{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220210b45">
����Դ̫����һ�£�
�����ɡ���������

{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220220b45">
�����ҡ������ˣ���

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0220230b45">
������������
���ҵ�һ�����ҵĶ�������ȫ���˰�!!��


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"ma02_023.nss"



