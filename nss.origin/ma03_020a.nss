//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_020a.nss_MAIN
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
	if($ma03_020a_routeFlag==true){$ma03_020a_routeFlag=false;}
	else{$Muramasa_Flag = $Muramasa_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_021.nss";

}

scene ma03_020a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"ma03_020.nss"

//���m���z��

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma03/020a0010a00">
���Ҳ�Ը�⣩

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/020a0020a01">
��Ϊʲô����
���������㲻��ϲ�����ֶ����𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/020a0030a00">
��ϲ����
�����ǣ��һ�װ���Ľ���ֻ���㣩

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/020a0040a01">
������������

//��������
<voice name="����" class="��������" src="voice/ma03/020a0050a01">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/020a0060a00">
����������ʦһ��ֻ����һ�����С�
������һ��ҲӦ��ֻװ��һ�����У�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������Թ����������¡�
��ֻ���������ռ��Ժ�Խ��Խ����˲������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma03/020a0070a00">
���ҵĽ����Ѿ����������ˡ�
���Ҳ��������ñ�Ľ��У�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/020a0080a01">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/020a0090a00">
�������������㻹Ҫ�����ñ�Ľ����𣿣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/020a0100a01">
�������������ǵġ��Բ���
���ո��ǿ���Ц����ֻ�ǵ���ɧ������

//��������
<voice name="����" class="��������" src="voice/ma03/020a0110a01">
�������벻Ҫ�������ϣ�������
���������Լ�Ӧ�������¡����������ܻ��Ǳ�
�ģ�ֻҪ��������ȥ�Ҿͻ�ȥ��
����Ȼ��̫ϲ��������

//��������
<voice name="����" class="��������" src="voice/ma03/020a0120a01">
�����������Ľ����ء���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/020a0130a00">
�����š�
�������ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/020a0140a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������øжȣ�
//$Muramasa_Flag = $Muramasa_Flag++;
	$ma03_020a_routeFlag = true;
	$Muramasa_Flag = $Muramasa_Flag+2;

	judgment_of_count();

}

..//������ָ��
//�Υե����롡"ma03_021.nss"