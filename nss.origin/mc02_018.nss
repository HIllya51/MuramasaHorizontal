//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_018.nss_MAIN
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

	$GameName = "mc02_019.nss";

}

scene mc02_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_017.nss"


//��������
//�������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg028_��亣ǣȣѻ���_01.jpg");
	FadeDelete("�ϱ���", 0, true);
	FadeDelete("�\Ļ��", 1000, true);

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0180010b03">
������������


{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0180020b03">
���ǲ�����Ƥ̫�����ء�����


{	NwH("cg/fw/ny��ʿ.png");}
//������㣯���ر�ʿ��
<voice name="����㣯���ر�ʿ" class="����������" src="voice/mc02/0180030e042">
����ũ������ ��

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0180040b03">
���ţ������£���


{	NwH("cg/fw/ny��ʿ.png");}
//������㣯���ر�ʿ��
<voice name="����㣯���ر�ʿ" class="����������" src="voice/mc02/0180050e042">
���ģ�����Ҫ�������档��


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0180060b03">
��������˵�������������ء�
������Ҳ���ǿ���ʲô�������ȡ�ֵĿ��ˣ�
���ſ��а����鴦����ɡ���


{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0180070b03">
�������ҵķ��䡣��


{	NwH("cg/fw/ny��ʿ.png");}
//������㣯���ر�ʿ��
<voice name="����㣯���ر�ʿ" class="����������" src="voice/mc02/0180080e042">
����������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc02_019.nss"