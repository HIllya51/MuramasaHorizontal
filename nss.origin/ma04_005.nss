//<continuation number="1500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005.nss_MAIN
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
	if($Ichizyou_Dead == true){
		#ev119_һ��������֦��ˮԡ_b = true;
	}else if($Kanae_Dead == true){
		#ev119_һ��������֦��ˮԡ_c = true;
	}else{
		#ev119_һ��������֦��ˮԡ_a = true;
	}

//	$Ichizyou_Dead=true;
//	$Kanae_Dead=true;
//	#��׉���K�� = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($Ichizyou_Dead == true){

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		if($ma04_005_routeFlag==true){$ma04_005_routeFlag=false;}
		else{$Kanae_Flag++;SetHex();}

	}else if($Kanae_Dead == true){
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		if($ma04_005_routeFlag==true){$ma04_005_routeFlag=false;}
		else{$Ichizyou_Flag++;SetHex();}

	}else{
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		if(#��׉���K�� == true){call_scene @->ma04_005_select02.nss;}
		else{call_scene @->ma04_005_select01.nss;}

	}

	$PreGameName = $GameName;

	if($Ichizyou_Dead == true){

		$GameName = "ma04_006.nss";

	}else if($Kanae_Dead == true){

		$GameName = "ma04_006.nss";

	}else{

		if($ma04_005_Ichizyou == true){
			$GameName = "ma04_005a.nss";
			$ma04_005_Ichizyou = false;
		}else if($ma04_005_Kanae == true){
			$GameName = "ma04_005b.nss";
			$ma04_005_Kanae = false;
		}else if($ma04_005_Sayo == true){
			$GameName = "ma04_005c.nss";
			$ma04_005_Sayo = false;
		}


	}


}

scene ma04_005.nss
{

..//������ָ��
//ǰ�ե����롡"ma04_004.nss"

}


scene ma04_005.nss_all
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//����᪡�һ��������֦��������ʤ飰����������֦�����ʤ飰���¡�һ�������ʤ飰����


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���
//�񣰣���
	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma04/0050010a00">
�����졭����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050020a03">
����������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050030a04">
������ļ��ڽ���Ҳ���ڶ������ء���

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050040a02">
������������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������һ�С���ˮԡ�L��
//���Щ`����ϥ���ϥ���ĤȤ���
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, Axl2, true);
	CreateTextureEX("�}�ţ�100", 5100, Center, -576, "cg/ev/ev119_һ��������֦��ˮԡ_a.jpg");
	Fade("�}�ţ�100", 0, 1000, null, true);
	Move("�}�ţ�100", 2500, @0, -110, Dxl1, false);

	FadeDelete("�}�ե�", 2000, true);

	SetFwR("cg/fw/fwһ��_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050050a02">
��Ϊʲô�������������µ��ݺ�ˮԡ��!?��

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050060a03">
����������ô�ʡ���

{	FwR("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050070a04">
����Ϊ����һ����
��Ҷ���ƽ������ک��ʢ�İ�����

{	FwR("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050080a02">
��������ˣ�Ϊʲô������Ҳ�������!?��

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050090a00">
������Ϊ���ռ��鱨���������׶��ѡ�
��������������ֵù����쳣����

{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050100a04">
���⻰ίʵ���
�������ó��괩��һ��ڣ�
��ʱ�޿̲���ɢ����ɭ
��Ϣ��ĳ��Ҳ�������ⷬ������

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050110a00">
���ǡ�������ˡ���

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050120a03">
�����˵�����û���Ծ�֢״������

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050130a02">
���͡�������ˣ�
��Ҳ���ô���Ӿ�°ɡ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050140a00">
����������ķ�װ����Ʒֻ��Ӿ�¡���Ҳ
����ǵ��ѡ�
�����⺣�����ű�װ�߶�ʵ��̫³ç�ˡ���

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050150a03">
���ẹ��䤱�����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050160a04">
��������ˮ֢״�����Ҫ��ʮ��������
��ʱ�䡣��

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050170a02">
�����ء�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���п಻����һ����
����˵�Ļ�̫�࣬������֪Ҫ��ο��ڡ�
�����ڵ����������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma04/0050180a00">
��������𡣡�

{	FwR("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050190a02">
������������
����û���������

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050200a02">
��ֻ�ǡ����Ǹ�������

{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050210a03">
������ġ�
���㴩��ȥ�ܺ���Ŷ����

{	FwR("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050220a02">
���ҡ��ҡ��Ҳ�û���������
��û���ġ���!!��

{	FwR("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050230a04">
����������ô˵���Ӹղſ�ʼ���С���Ŀ��
�����Լ��ʹն�����֮��Ʈ��Ʈȥ��
����Ȼ�������͸���й¶�˵����ġ���

{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050240a02">
����̫�ţ��ҿ������뱻ˮ�ᡭ����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050250a04">
���һ��治ϣ���Լ������³��ǳ�Ϊ�㱴��
�Ķ����ء���
���ն����ˣ��Ȳ�˵�������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050260a00">
���ǡ���ʲô�¡���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050270a04">
���������ǲ����������Լ������񣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������̴���ζ��ض����ҵ���ա�
����������ԭ����ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050280a02">
��������

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050290a03">
�����˷ܣ��ý��š���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ҡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//�x�k��һ����Ҋ�룯����֦��Ҋ�룯�Ф�����Ҋ��
//���x�k��һ����Ҋ�룯����֦��Ҋ�룯�Ф�����Ҋ��
//�����Ф����x�k֫�ϵڶ����ǤФ���ե饰���ƤƤ�����ϤΤ߳��F


//��һ����Ҋ�롡"ma04_005a.nss"
//������֦��Ҋ�롡"ma04_005b.nss"
//���Ф�����Ҋ�롡"ma04_005c.nss"

}


scene ma04_005.nss_ic
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���
	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma04/0050300a00">
�����졭����

{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050310a02">
�����԰�?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������һ�С���ˮԡ�L��
//��������һ���Τߡ�
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, Axl2, true);
	CreateTextureEX("�}�ţ�100", 5100, Center, Middle, "cg/ev/ev119_һ��������֦��ˮԡ_b.jpg");
	Fade("�}�ţ�100", 0, 1000, null, true);
	FadeDelete("�}�ե�", 2000, true);

	SetFwL("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050320a02">
��ΪʲôͻȻ����ˮԡ�˰�?!��


{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050330a00">
�������������ռ��鱨�Ļ�������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������һ����ԭ���Ǻ�ˮԡ������Ҳ����ǵ��ѡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050340a02">
���Ҳ���˵�����
������������

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050350a02">
����������Ҳ������һ�㡣
����������ΪʲôҪ��Ӿװ������

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050360a00">
��������������֮�У����ű���߶�����

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050370a02">
��������

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050380a00">
��ʵ��̫��³ç����

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050390a02">
�����ء���������ˡ�����

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050400a00">
��������Ӿװ����

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050410a02">
������˵���ᡭ����

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050420a02">
���Ǹ�����

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050430a00">
�����Ҹ��˶��ԡ�
�������ڵ����Ӻ�������

{	FwL("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050440a02">
�������ף���

{	FwL("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050450a00">
��ʵ�ں�����������

{	FwL("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050460a02">
��������

{	FwL("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050470a02">
������ʲ��ʲ������

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050480a00">
��������

{	FwL("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050490a02">
�������벻Ҫ����Ѱ���ġ���

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050500a00">
�������Ļ�����

{	FwL("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050510a02">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ���øжȣ�
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma04_005_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();

	SetFwL("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0129]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050520a02">
���ܡ�����֮��
���ص�ԭ���Ļ��⡣��

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050530a00">
���š���

{	FwL("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050540a02">
��Ŀ�ĵز��ǽ�֮����
���졢���ȥ�ɣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("�}�ţ�*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����������
���˴����ǽ�֮����

�����ǽ�֮���Ķ԰���Ƭ����
����������Ҳ�޼����¡�һ����Ҫ���նɺ�ǰ��
���ϵ�������Ҳ�ܹ���⡣

��Ȼ����
��������˻�Ҫ���£���������ԭ��

���Ҵ�����ѡ����Ϊ���Եļ���ϸϸ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma04/0050550a00">
������ȥ����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050560a02">
�������ף�
��Ϊʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050570a00">
����֮ǰ���Ѿ��������
�����ڣ���֮��ȫ���ѱ���Ϊ�������򡣡�


//��������
<voice name="����" class="����" src="voice/ma04/0050580a00">
����Ȼ�����������Ļ����
�����ɲ�������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050590a02">
����������Ϊ�ڽ��б����о�֮��Ļ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050600a00">
������������ԡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050610a02">
������ô�죿��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050620a00">
����Ȼ���ܹ�Ȼ�ɺ�����ֻ��˽�¹�ȥ��
������ô�򵥡�
��Ѱ�Ҷɺ��������������������ĵ�
�������ɡ���

//��������
<voice name="����" class="����" src="voice/ma04/0050630a00">
���������ռ��鱨��
��ԭ����Ŀ�ĵؽ�����ǰ����Ҳ��ϲ�������Ĵ�
��̽�����ػصķ�ʽ����

//��������
<voice name="����" class="����" src="voice/ma04/0050640a00">
���������������⡣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050650a02">
����������
��ǰ����֮��֮ǰ�����ٵ��Ȱ�<RUBY text="��������">��ǰ����</RUBY>
�˽����š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050660a00">
���ԡ�
������óȻǰȥ����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050670a02">
����Ϊ�����졭����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050680a00">
�����졭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ֵ�ļ���
��ũ����ʮһ�·ݡ����꼴�����١�

�������û������졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma04/0050690a00">
�������쳣Ҳ���и��޶ȡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050700a02">
������ֻ�н�֮���ܱߡ���
��Ϊʲô������ԵĹ����¼�ȴû������
���������Ҳ��ǵ����ڱ�ֽ�Ͽ�����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050710a00">
�����ǣ����������������������
�����������Ż��ط��������Ҳ�����練��
�ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050720a02">
��Ҳ����˵��ȷʵ���Ρ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050730a00">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����Ȼ�ڰ�ᦹ��������鱨��ʱ�򡪡�����֮�����
һ������˵���߷��������鱨��ʱ�򣬶�����������
����Σ���о�һ�£��Լ�һֱ���Ű��ɣ���������
�������ڳֻ���̬�ȡ�

��Ȼ��������ȴǡǡ�෴��
�����¡���Ļ�����ڵ��Ͻ�����ʲô���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma04/0050740a00">
����ô���ж���ʼ��
����ͷ�ռ��鱨���ص�����Ǳ�뵺�ڵķ�����
�Լ�����쳣������������

//��������
<voice name="����" class="����" src="voice/ma04/0050750a00">
����û��ʲô���ʻ��顣��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050760a02">
��û�У���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��˵�ţ�һ���Ѿ���ʼ���ж���
���������ܣ������ϵĲ��ǿ����ڶ࣬��������
�ĺ�֮�ң������Ա���С������Χ��һ�ţ�����
����������Ѹ������ȷ���ж���

������Ҫ�����Ų���
��ͻȻ��һ���ع�ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050770a02">
��˵���������ն���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050780a00">
��ʲô����

{	SetVolume("@mbgm*", 300, 1, null);
	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050790a02">
���Ǹ���ξ����̫̫��ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(2000);

	SetVolume("@mbgm*", 2000, 1000, null);
	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050800a02">
���������Բ��𡣻������ˡ�
���϶��ǻ�����������ɡ������ô�Ҳ�Ǹ�
���ˡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0050810a02">
���ǣ��ҳ����ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050820a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��������ʲô���޷��ش�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);



//��������

..//������ָ��
//�Υե����롡"ma04_006.nss"

}


scene ma04_005.nss_ka
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���
//��������
	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma04/0050830a00">
�����졭����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050840a03">
���ǰ�������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050850a04">
��������������Ҳ���ڶ������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������һ�С���ˮԡ�L��
//��һ�����ڡ�
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, Axl2, true);
	CreateTextureEX("�}�ţ�100", 5100, Center, Middle, "cg/ev/ev119_һ��������֦��ˮԡ_c.jpg");
	Fade("�}�ţ�100", 0, 1000, null, true);
	FadeDelete("�}�ե�", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���ڰ����������Ů��
����ɳ̲���ܵĺ��ӡ�

������ġ���
����ˮԡ���ľ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050860a03">
���濪�š�����

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050870a00">
���ǰ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����������֦С�㡣
������������˵�����߲�֪��Ͷ�����

����ô���ţ����ȴ��������������һ�㡣
������ȥ������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050880a03">
�����ڿ��ҡ����ڿ����ء�
��������������

{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050890a04">
����ս�ɹ����أ�
���о������ҼҴ�С���ڷǳ���̬��ͬʱȴ��Ŭ��
װ���²��ؼ��ء���

{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050900a00">
�����ɷ��ϣ��ҵ����߱������ˡ�
��������ѡ��Ӿ�»����Ǵ󵨡���

{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050910a03">
�������Ա�Ʒ����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050920a04">
���Ҿ�֪������������

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050930a00">
��˵��Ȼ��ᡭ��
���Ƿ����տ��������Ĳ�Ʒ�ɡ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0050940a04">
���ն��������ǲ�ʶ��
����Ȼ��ʵ���Һ���׷�������Ի���֪
�������顣��

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050950a00">
�����ں��⹺����𡣡�

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050960a03">
���ǡ�
������Ӧ�û�û���ڴ�ͳ��ۡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��Ӧ���ǰɡ�
��������Ȼ����Χ�����ǡ������������ԡ���������
Ҳ������˼��С�

����������
��Ҳûʲô��ı仯�ɡ�

�������ᱡ��ǰ��Ӿװ���ͣ��Ѵ����ξ���ڵ����
������ͻ���˳�����
���Ѿ����˿��ŵĵز���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050970a03">
���Ǻǡ���ô�����������ˣ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0050980a00">
������������ʤ��
���ǳ��ء�����

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0050990a03">
���ܰ��Ҳ���ɹ���𣿡�

{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051000a00">
��Ը��Ч�͡���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051010a04">
������������ô���ɣ��ն����ˡ���

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051020a00">
���ǡ���

{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051030a04">
��������ԥ���ޱ�ֱ�ӵ����ߡ���
����Ȼ��ǿ�ҵؾ�����ɾ�ͷ�����ô���
�ط�����

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051040a03">
����������Ǿ������ˡ�
���������롪����

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051050a00">
���Ǿ�ˡ��ð���ˡ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0051060a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��������֪�����Ժδ���
���о���������Ǵ��

�������Իָ���һЩ�侲��
����Ȼ�����������Ӧ���ռ��鱨�����׻�
������ͷ�˰ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma04/0051070a00">
���������ˡ���

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051080a03">
���ף���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051090a00">
���Ҹо��������Լ���Ŀ�ġ���

{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051100a03">
���ҡ����ϧ����

{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051110a04">
�����ˣ���Ҳ���޿ɺ�ǰɡ�
��������������ȥ�������˾ͻ���Ҫ����
��Ҳֻ�����������Ŷ��ѡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051120a00">
����һ��Ҳ�����ҷǳ����š���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��ʵ����ʧ̬��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦�øжȣ�
//$Kanae_Flag = $Kanae_Flag++;
	$ma04_005_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���ı�˼������
��״������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("�}�ţ�*", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma04/0051130a00">
�����ǵ�Ŀ�ĵ��ǽ�֮������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051140a03">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051150a04">
����Ȼ��Ҳ����Ͻ��ɺ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
����������
���˴����ǽ�֮����

�����ǽ�֮���Ķ԰���Ƭ����
����������Ҳ�޼����¡���Ҫ���նɺ�ǰ��
���ϵ�������Ҳ�ܹ���⡣

��Ȼ����
��������˻�Ҫ���£���������ԭ��

���Ҵ�����ѡ����Ϊ���Եļ���ϸϸ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma04/0051160a00">
���޷��ɺ�����һ���Ǹ����⡣
����ȻĻ����ֹ�ɺ��ϵ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051170a03">
����ֱ���൱�ڴ˵�������������
˵ʵ�����Ҹе���Щ���⡣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051180a04">
����Ϊ֮ǰ���������޵ı����о���л��ɡ���
��������Ȼ�����ˣ��������ܴ��⡣��

//�����衿
<voice name="����" class="����" src="voice/ma04/0051190a04">
����ô���ն����ˡ�
�����кδ��㣿��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051200a00">
����Ϊ��ֹ�ɺ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051210a03">
���ǡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051220a00">
���Ǿ���δ����ɵ�����¶ɺ����ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051230a04">
�����Լ��ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��Ѱ�Ҷɺ�������������Ƭ���ĵڶ������ɡ�

���������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma04/0051240a00">
���������������ǻ�����ȥ�ռ��鱨�ɡ�
�����ܵĻ����������ڶ����˽��˵��ϵ����֮
���ٸ����ж�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051250a03">
����ȷ����
����Ϊ�������أ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051260a00">
����Ϊ�����졣��

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051270a04">
����Ϊ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����ֵ�ļ���
��ũ����ʮһ�·ݡ����꼴�����١�

�������������졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma04/0051280a00">
�������쳣Ҳ���и��޶ȡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051290a04">
������ֻ�н�֮���ܱߡ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051300a03">
�������Ĵ��¼�����Ȼδ�ܵ������š���
��˿�������Ȼ�������޷����˼����ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051310a04">
�����������������˷�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����ȷ��
����Ȼ�ڰ�ᦹ��������鱨ʱ�������������ڽ���
Σ���о�һ�£��Լ�һֱ���Ű��ɣ���������˵��
�����ڳֻ���̬�ȡ�

������ȴǡǡ�෴��
�����¡���Ļ�����ڵ��Ͻ�����ʲô���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma04/0051320a00">
����ô���ж���ʼ��
����ͷ�ռ��鱨���ص�����Ǳ�뵺�ڵķ�����
�Լ�����쳣������������

//��������
<voice name="����" class="����" src="voice/ma04/0051330a00">
����û��ʲô���ʻ��顣��

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051340a03">
�������ҿ�����һ���𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051350a00">
���ǡ���ξ����

{	SetVolume("@mbgm*", 300, 1, null);
	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051360a03">
��һ��С����ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(2000);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051370a03">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051380a00">
��������Ҳ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051390a00">
����֪������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051400a03">
��������ı��鿴��ȥ�е�ʹ���أ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051410a00">
�����𡣡�

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051420a03">
���ǲ��ǡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051430a00">
��������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051440a03">
��������ʲô��
����˵�����š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051450a04">
���š���
������˼������Ů�����¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0051460a04">
�������������������ɡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051470a03">
������Ҳ�ԡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051480a00">
������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0051490a03">
�������������ˡ�
���������ˣ���ͷ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0051500a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);

//��������

..//������ָ��
//�Υե����롡"ma04_006.nss"


}


scene ma04_005_select01.nss
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	SoundPlay("@mbgm29",0,1000,true);

	PrintGO("������", 30000);

	CreateTextureEX("�}�ţ�100", 5100, Center, -576, "cg/ev/ev119_һ��������֦��ˮԡ_a.jpg");
	Move("�}�ţ�100", 0, @0, -110, Dxl1, true);
	Fade("�}�ţ�100", 0, 1000, null, true);

	FadeDelete("������", 1000, true);

//���x�k֫
	SetChoice02("һ����Ҋ��","����֦��Ҋ��");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA03();
			$ma04_005_Ichizyou = true;
		}
		case @�x�k֫��
		{
			ChoiceB03();
			$ma04_005_Kanae = true;
		}
	}
}


//==========================================================//
//���x�k֫���`��
scene ma04_005_select02.nss
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	SoundPlay("@mbgm29",0,1000,true);

	PrintGO("������", 30000);

	CreateTextureEX("�}�ţ�100", 5100, Center, -576, "cg/ev/ev119_һ��������֦��ˮԡ_a.jpg");
	Move("�}�ţ�100", 0, @0, -110, Dxl1, true);
	Fade("�}�ţ�100", 0, 1000, null, true);

	FadeDelete("������", 1000, true);

//���x�k֫
	SetChoice03("��һ��","������֦","������");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA03();
			$ma04_005_Ichizyou = true;
		}
		case @�x�k֫��
		{
			ChoiceB03();
			$ma04_005_Kanae = true;
		}
		case @�x�k֫��
		{
			ChoiceC03();
			$ma04_005_Sayo = true;
		}

	}
}


