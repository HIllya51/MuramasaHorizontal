//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005c.nss_MAIN
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
//�룺�ե饰����
	$Sayo_Flag++;

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_005.nss"


//��Ф���
	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ţ�200", 5100, Center, middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_l.jpg");

	Zoom("�}�ţ�200", 0, 500, 500, null, true);

	Wait(16);

	FadeDelete("�ϱ���", 500, false);
	Zoom("�}�ţ�200", 1000, 1000, 1000, Dxl1, false);
	Move("�}�ţ�200", 1000, -200, 0, Dxl1, true);


	SetFwR("cg/fw/fw����֦_����å�.png");
	SetComic(@+250,@0,8);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005c0010a03">
����˵����ô���Ǳ߰�����

{	DeleteComic();
	FwR("cg/fw/fw����_�դ�.png");
	SetComic(@+250,@0,13);}
//�����衿
<voice name="����" class="����" src="voice/ma04/005c0020a04">
������ʿĿ��ת�����ӵĿ�С���
����ΪŮ�ˣ����۵���ʲô��Ͷ���е����ˡ���

{	DeleteComic();
	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005c0030a02">
���ȵȣ�������ղ��ǲ���������ֵĴʣ�
����˵����ֻ��ǲ���ƣ�
��ô�Ҳ�е���֪֮���ɣ���

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005c0040a00">
�����ǡ������������ء�
������ˬ�ʵ��Ը������ơ���

{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005c0050a04">
���ǺǺǣ��ն��������ǻ�������

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005c0060a00">
����ֻ��ʵ��ʵ˵������

{	FwR("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005c0070a04">
�������ҿ��ǻᵱ���Ŷ����

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005c0080a00">
�������⡣��

{	FwR("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005c0090a04">
����������Ŷ��
�������ˡ�����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005c0100a00">
������������

{	FwR("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005c0110a03">
��ι������
���Ǳߵ������ˣ���һ�¡�������

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005c0120a02">
���ն���������ָ�������
���������𣡡�ͷ�Ժܻ�����
��û�о����Խ���������������һ����������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005c0130a00">
���ҵ�����û�С���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������ˣ����ѵ���ʲô�취��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�100", 5100, Center, -576, "cg/ev/ev119_һ��������֦��ˮԡ_a.jpg");
	Move("�}�ţ�100", 0, @0, -110, Dxl1, true);
	Fade("�}�ţ�100", 500, 1000, null, true);
	Delete("�}�ţ�200");

	SetFwR("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma04/005c0140a00">
����ֻ���ڿ����̴Ӹ��µķ�װ���ѡ���

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005c0150a03">
���ҵ�����ȫû������������

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005c0160a02">
����Ȼ����������˵��ȷ��ˡ��������м���
���ص�����ȴ�ޱȷḻ������

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005c0170a00">
����˵���渴�ӡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005c0180a04">
���ն����ˡ��������֮�����ġ�
�����������˵����ദ��ʱ�򡣡�

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005c0190a00">
���ǡ���

{	FwR("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005c0200a02">
�����ԣ�����˵�������
���������ﰡ�ն�������
�������������м�����⣡��

{	FwR("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005c0210a03">
������ʹ�������ʲô���ʣ���չ��������
����ʲô��ֵĳ�������Ҫ��ô����
���������˺����ʣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������ô˵��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ф���ե饰�ϣ�
//$Sayo_Flag = $Sayo_Flag++;

..//������ָ��
//�Υե����롡"ma04_005z.nss"

}


