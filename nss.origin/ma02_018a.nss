//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_018a.nss_MAIN
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
	#bg020_ɽ�}�ӵ�_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma02_018a_routeFlag==true){$ma02_018a_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_019vs.nss";

}

scene ma02_018a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_018.nss"

//��_���ʷ�
	PrintBG("������", 30000);
	OnBG(100,"bg020_ɽ�}�ӵ�_01.jpg");
	FadeBG(0,true);
	FadeDelete("������", 0, true);
	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
���Ұ���������״�ÿ��ķ��š�
�����ǵ��������﷽��ʳ�ã����С�����ʡ�

���Ž����С�
����������ĵ�ζ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
//��������
<voice name="����" class="����" src="voice/ma02/018a0010a00">
�����ɫ��
�����Ǻ��������ķ��š�����ν�������ĵķ�
�ˣ�˵�������ⷹ�Űɡ���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�դ�_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/018a0020b05">
��ѽ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010c]
��ʀ��������κ�����
���Ǵ�����ҷ·𿴵�����ͫ����ð�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/018a0030b05">
�������롢���ٶ�Ե�Ŷ��
���кö��أ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/018a0040a00">
���õġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Ҳ�ʤ�м���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//�����ʥ��`�øжȥץ饹
//$Another_Flag = $Another_Flag++;
	$ma02_018a_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

..//������ָ��
//�Υե����롡"ma02_019vs.nss"


}

