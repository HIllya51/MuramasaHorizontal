//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005a.nss_MAIN
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
	#ev119_һ��������֦��ˮԡ_a = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma04_005a_routeFlag==true){$ma04_005a_routeFlag=false;}
	else{$Ichizyou_Flag=$Ichizyou_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_005.nss"

//��һ��
	SoundPlay("@mbgm29",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateCamera("����飱", Center, Middle, 250);
	SetAlias("����飱","����飱");

	CreateTextureSP("����飱/�}����100",500, Center, Middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_ex04.jpg");
	CreateTextureEX("����飱/�}����200",500, Center, Middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_ex03.jpg");
	SetAlias("����飱/�}����100","�}����100");
	Request("����飱/�}����100", Smoothing);
	Request("����飱/�}����200", Smoothing);
	Zoom("����飱/�}����100", 0, 1200, 1200, null, true);
	Zoom("����飱/�}����200", 0, 1200, 1200, null, true);

	CreateTextureSP("����飱/�}��",600, Center, Middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_ex01.png");
	CreateTextureEX("����飱/�}��",600, Center, Middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_ex02.png");
	SetAlias("����飱/�}��","�}��");
	SetAlias("����飱/�}��","�}��");
	Request("����飱/�}��", Smoothing);
	Request("����飱/�}��", Smoothing);
	Move("����飱/�}��", 0, @+50, @0, null, true);
	Move("����飱/�}��", 0, @+50, @0, null, true);

	MoveCamera("@����飱", 0, @+200, @+200, @0, Dxl1, true);

	Fade("����飱/�}����200", 500, 1000, null, false);
	MoveCamera("@����飱", 3000, @-100, @-600, @0, Dxl1, false);

	FadeDelete("�ϱ���", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��һ����Ӿװ��ѧ��Ӿװ��
��ȥ���ﹺ��ʱ�����Լ���ѡ���Ǽ���

�����ﲻ��ѧУ����Ȼ����ѡ��������ʽ�Ļ��
�á������������ֱ�׾��Ҳ����һ���ķ��
�����ҡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("����飱/�}����200", null);

	MoveCamera("@����飱", 500, @+210, @-150, @+150, Dxl1, true);
	MoveCamera("@����飱", 500, @+100, @+400, @+100, Dxl1, true);
	MoveCamera("@����飱", 500, @+180, @+350, @+100, Dxl1, true);

	CreateTextureEX("�}�ţ�100", 5100, Center, -576, "cg/ev/ev119_һ��������֦��ˮԡ_a.jpg");
	Move("�}�ţ�100", 0, @0, -110, Dxl1, true);

	MoveCamera("@����飱", 1500, @-470, @-650, @-250, Dxl1, false);
	Fade("�}�ţ�100", 500, 1000, null, true);

	SetFwR("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma04/005a0010a00">
���⻹���ǡ���

{	FwR("cg/fw/fwһ��_ͨ��a.png");
	SetComic(@+250,@0,10);}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005a0020a02">
������ʲô����

{	DeleteComic();
	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005a0030a00">
������������һ����
����Ϊ���ԣ����ܵ��˴̼�����

{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005a0040a02">
��������

{	FwR("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005a0050a02">
������������!!��

{	FwR("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005a0060a04">
���������Ȼֱ���ء�
��С�㣬����������������

{	FwR("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005a0070a03">
����û�뵽�������˾�Ȼϲ��ѧ��Ӿװ��
��������ǰ���鲻����λ��������

{	FwR("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005a0080a03">
����Ȼ��ˣ�Ҳû�취�ˡ�
��ɴ��������ҲҪ��ƴ�ڻ��ֹ���Ƕ������硣��

{	FwR("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005a0090a04">
�����ס�
���ն����ˡ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005a0100a00">
���ǡ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005a0110a04">
�������ܵ��̼�Ҳ����˵����
��������һЩ�����������𣿡�

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005a0120a00">
�������е㡣��

{	FwR("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005a0130a02">
����������

{	FwR("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005a0140a04">
�����а�С�㡣
����ͨ���������������������ʵ��䷴����

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005a0150a03">
��������û�á���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������Щ��ν�ػ���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ���øжȣ�
//$Ichizyou_Flag = $Ichizyou_Flag++;
//�룺+2�ˉ����090922��
	$ma04_005a_routeFlag = true;
	$Ichizyou_Flag = $Ichizyou_Flag+2;

	judgment_of_count();


}

..//������ָ��
//�Υե����롡"ma04_005z.nss"