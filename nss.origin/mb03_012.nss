//<continuation number="130">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_012.nss_MAIN
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
	#bg056_���L�����Tǰ_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_013.nss";

}

scene mb03_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_011.nss"

//�������¡��Tǰ��ҹ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg056_���L�����Tǰ_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(500);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb03/0120010b21">
�������ˡ���


{	NwC("cg/fw/nw��ɮ.png");}
//������㣯�����¤�ɮ��
<voice name="����㣯�����¤�ɮ" class="����������" src="voice/mb03/0120020e067">
�����£���


{	NwC("cg/fw/nw������.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb03/0120030b21">
���������ʹ���֮�ڣ����и��Ϸ򸾣���


{	NwC("cg/fw/nw��ɮ.png");}
//������㣯�����¤�ɮ��
<voice name="����㣯�����¤�ɮ" class="����������" src="voice/mb03/0120040e067">
���򸾡�����
��������������ס��ȫ�����̷����֮�ˡ���


{	NwC("cg/fw/nw������.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb03/0120050b21">
���������ǰ���
�����ܲ��Ƿ򸾡���


{	NwC("cg/fw/nw��ɮ.png");}
//������㣯�����¤�ɮ��
<voice name="����㣯�����¤�ɮ" class="����������" src="voice/mb03/0120060e067">
���š�
���ġ����ġ�����


{	NwC("cg/fw/nw��ɮ.png");}
//������㣯�����¤�ɮ��
<voice name="����㣯�����¤�ɮ" class="����������" src="voice/mb03/0120070e067">
����û��ӡ�󡭡���


{	NwC("cg/fw/nw������.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb03/0120080b21">
����������
�������ˡ�ֻ�򷽲Ž������֮���ܾ�����Щ
���ƣ�����д�һ�ʡ���


{	NwC("cg/fw/nw��ɮ.png");}
//������㣯�����¤�ɮ��
<voice name="����㣯�����¤�ɮ" class="����������" src="voice/mb03/0120090e067">
�����������ΰݵ��˰ɡ�
����Ȼ���ڲ��ǲΰ�ʱ�䡭����


//������㣯�����¤�ɮ��
<voice name="����㣯�����¤�ɮ" class="����������" src="voice/mb03/0120100e067">
������ʩ�������Ҳ��Ҫ�����ʱ������߶���
����������ð���
����ס�δ�����


{	NwC("cg/fw/nw������.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb03/0120110b21">
���������ް��������⸽����
������ͻ�ȥ���ǳ���л����


{	NwC("cg/fw/nw��ɮ.png");}
//������㣯�����¤�ɮ��
<voice name="����㣯�����¤�ɮ" class="����������" src="voice/mb03/0120120e067">
����������
��ʩ�����ߺá���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(1000);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb03/0120130b21">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_013.nss"