//<continuation number="2110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_008.nss_MAIN
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

//	$Kanae_Dead = true;
//	$Ichizyou_Dead = true;

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

	}

	$PreGameName = $GameName;

	$GameName = "ma04_009.nss";

}

scene ma04_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_007.nss"

//�����΍u�ϲ��ذ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������̤�Ͻ�֮����ʱ����Ȼ�����ҹ�ˡ�
ԭ�����ڳﱸС��ʱ���˲��ٹ���
���������ֲ�ϰ�߻�����
����������ʣ���������ӵ�ʱ�䡣

����������ֻ��������Ϥһ�»�����
�ʹҴҽ�����
����˵����С��Ѳ̽һȦ�ˣ������۲�Ļ��
�о�����ʱ�䶼ѹ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}


..//���
//����᪡�һ��������֦��������ʤ飰����������֦�����ʤ飰���¡�һ�������ʤ飰����
scene ma04_008.nss_all
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_007.nss"

//�����΍u�ϲ��ذ�
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���

	StL(1000, @-60, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080010a03">
�����Ƿ�ͷ�ж�����Σ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080020a00">
����Ȱ�������ɡ�
����Ч����˵����ȷ��ͷ�ж����ϲߣ�
������֮ǰ���Ǳ��볷�ˣ����໹ʣ��һ��
����Сʱ�ˡ���

//��������
<voice name="����" class="����" src="voice/ma04/0080030a00">
�����Ժ�������ûʲô�ɹ����ڴ��ġ�
���ߣ�����Ѳ�ߵ����߻���ʵ�������
��δ�õ�ȷ���ġ������Σ��ʱ��
�ܹ�������ŵ�ֻ����һ�ˡ���Ҳ�Ǹ����⡣��

{	StCL(1000, @60, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStCL(300,false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080040a04">
���⵹Ҳ��ѽ������

{	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080050a02">
�������Բ���
�������������ս���Ļ������������
�Ͳ����Ϻ����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080060a00">
�������ᡣ
���ұ������Ǹ���ս�����ˡ�
��ֻ�ڴ���ʹ�ξ������Э���ҽ����Ѳ飬
���û�С���

//��������
<voice name="����" class="����" src="voice/ma04/0080070a00">
�������Ѿ���ֻ�Ӧ���ҵ��ڴ���
������û��Ҫ�ھΡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080080a02">
�������š���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080090a02">
�������������ǣ��ҡ�������
����ϣ���ܰ���������æ����������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080100a02">
������ġ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080110a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���Ҷ�������ϸ�������š�
����Ϊ�Ҿ����������Ƚ��׵���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080120a03">
���ǺǺ���������Ӵһ��С�㣡��

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080130a04">
�������ҿ��������ٿ���������

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080140a03">
����������˼�԰ɣ�
������Ҫ��ƴ�����̷�����ˣ�
��ѽ�⺢�ӿ���󵨣���

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080150a02">
���Ҳ�û˵��ôɫ��Ļ��أ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080160a03">
����ѽ������ѽ��ѽ��
��ѽ�����⻰˵�ġ�
����������ɫ�����������������ҵĻ�����
�鷳�����Ұɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080170a00">
����ʼ�ж�����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080180a02">
���õġ���

{	Move("@StR*", 200, @30, @0, DxlAuto, false);
	DeleteStR(200,false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080190a04">
�������߰ɡ���

{	Move("@StML*", 200, @-30, @0, DxlAuto, false);
	DeleteStCL(300,false);
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080200a03">
������������ƺ����ص�
���˵���������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080210a04">
�����죬��С�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��u��ɭ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��˵ʵ�����Ҹ���û�ڴ���ε�����ȡ��
ʲô��չ��
����Ϥһ�»�������ʹ�ӽ�����ĵ�����еø�˳���ɡ�
��ֻ���������㡣

�����ǡ�
��û�������ӣ������쳣��Χ�ı�ɽһ��
��չ����������ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma04/0080220a00">
��������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080230a03">
��������

{	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080240a02">
���������ʡ�
���ն���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080250a00">
��ʲô�£���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080260a02">
�����񡭡���Щ�ֵֹģ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080270a00">
��ʲô��˼����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080280a02">
�������Ҳ�֪������ô���ݡ���

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080290a02">
������������

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080300a02">
������������������һ�������ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080310a00">
���Ǹ����еı�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080320a04">
����Ȼ����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080330a02">
������ʲô��˼����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080340a03">
������û�ж����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080350a02">
������������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080360a02">
��������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080370a00">
��Ұ�����ﱾ��Ҳ�Ͳ�������������
���ֳٶ۵�������ǰ��
�����������������Ӱ���٣��⻹��
ʮ���쳣�ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080380a04">
�������ҡ������������Ǻ����а���
��ֱ�������ж��ﶼ��
���������һ�㡭����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080390a03">
�������ǵ�½��һ������û����
��������ء�
����֮�����︻�и���Ұ�����档��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080400a00">
�������鱨��ʾ������Ҳ�ܿ����ڶ����ࡣ
������һ���棬����ȴ�����������硣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080410a02">
������ֲ�ﶼ��������Ϊʲô������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080420a03">
�����ԡ�
����ľ�����Ҳ���½�ص�
���졣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080430a04">
����˵ʲô����С�㣿��

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080440a03">
��ֻ�����¹⣬���ѿ���ɡ�������
��ή�˰���Խ��ǰ������ή��Խ���ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080450a00">
���������帽�����Ǻ����������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080460a03">
�����������ú�ïʢ����
����˷�ï����ʱ��������Ҳ�ǺܹŹֵġ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080470a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������ĳɳ��ܵ����쳣�����ĵ�����
���Լ��������෴���������ݽߵĵ�����

��������ô���£�
������Ϊ�λ����<RUBY text="��������">����</RUBY>ʧ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//��u���Ď�����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������ξ�Ĺ۵�û�д���

�����չ������ǰ�Ĺ⾰��
��������ν������ݽ������ľ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm35",0,1000,true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma04/0080480a00">
��������ô����������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080490a02">
������������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080500a03">
����֮�����������Էḻ����Ȼ��Դ
Ϊ�������š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080510a04">
�����⡭��
������Ȼ��Դ��Ӱ�Ӷ���������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ݽߡ�
��һ�ж��ݽ��ˡ�

��������·�϶���������������ѿ���Ӳݣ�
�˴�ȴ����˿ݻ�ɫ��ʮ��������
���������棬������Ӱ���١���Ķ���Ҳ�Ͳ������ˡ�

������Ҳ���ﲻ����
������ָ������һ�飬���������̱����߽⣬
���ɢɳ���ع���档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma04/0080520a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080530a03">
��Ļ����������������ʲô����

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080540a02">
���϶�û��ʲô���¡�
����Ȼ���Ǵ�����û�ɹ��κ������£�
���������¿��������
͸���ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080550a04">
�����ź����Ҿ�˫����ͬ��
��������������е����顭��
�����Ǽ������������鷳�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ұ��������ǣ�������������������������˼����
������Υ�����ǻ�������顣
��Ļ�����������ֻ��Ļ��һ�ֲ߻�ʵʩ���£�
������á�������ʵҲ���á���

�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma04/0080560a00">
������ô�룿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����ʴ�����
��������Ӧ�������ڰ�������̽�������Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/ma04/0080570a01">
���š���
����Ȼ���޷��������顣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080580a00">
���ţ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0080590a01">
�����˵��Щ�����������<RUBY text="��������">�����쳣</RUBY>
����Ҳûʲô��ֵİɡ�
����Ϊ��Ҳ�޷���ȫ���������Ǻŵ�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080600a00">
�������Ǻŵ���Ϣô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0080610a01">
���������ڻ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080620a00">
��û�У���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0080630a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����Ȼ�����ǻ���δѲ�쵺�ϵ����еط���
��ֻ����һС���ֶ��ѡ�

������������ԣ�����ʲô�����ܶ��ԡ�
����ʹ�����ĽŲ��������Ѿ���������ʹ��Ĥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma04/0080640a00">
����ξ���¡�����

{	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080650a03">
��ʲô�£���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080660a00">
���������ǵ��У�����Ӧ����á�
���������֪��������ʲô�𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080670a03">
����ָ�����Ǵ��յ��𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080680a00">
���ǵġ�
�������ϡ�����û��ʲô��������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080690a03">
������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080700a02">
���ҹ�ȥ�����ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080710a00">
���Եȡ��������Ұ̫�����ˡ�
���Ҳ�̫�뿿������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080720a04">
���������Ѳ����·�����
���Ǿͱ�һ�������ˡ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080730a04">
���뽻����С��ɡ�
����Ҳ������������г��������ˡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080740a03">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0080750a04">
�����������²ۣ��ҷ���
��Щ��į����������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080760a02">
������ʵ���ϲ������ӣ�����
�������ӵ�������ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080770a00">
����ξ��
����ô������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080780a03">
��������ȷ��
����ȷ�ж���������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080790a03">
�����Ƴ��޵Ķ�������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080800a00">
�����ޣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080810a03">
���и������������
������һ�����ʹ�峵����ž�������
�����ĺۼ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080820a00">
�����͡�����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080830a03">
���ţ��ر�޴�
�����������Ϊ��ĳ��Ŀ�Ķ��ھ�����Ŀӣ�
�������ĳ�ֶ����ƶ�ʱ���µĺۼ���
��ô���ⶫ���϶��Ǹ����µĹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��˵�꣬��ξ�����ˡ�
����������Ϊ�����Լ��Ļ���
��������ĳ���¡�

�������<k>
����������ɫ�Ĺ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����衿
<voice name="����" class="����" src="voice/ma04/0080840a04">
�����������ô˵�أ�
���Ҹо��Լ������Ǵ�����
���굼�ݵĵ�Ӱ��һ������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0080850a03">
��û����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080860a02">
������������ʲô����
���⵺�ϵ�����ʲô��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080870a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��һ�ж���δ���ˡ�
��û���κ��˵���Ӱ��

�����Ǻ���������
������������м����塪��

�����������������ʲô��
���������ν�ı���������

��������ʲô����֪����
��Ȼ����

�������ԣ�һ����<RUBY text="��������">ʲô����</RUBY>�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//�����ޤ�


..//������ָ��
//�Υե����롡"ma04_009.nss"

}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���
scene ma04_008.nss_ic
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_007.nss"

//�����΍u�ϲ��ذ�
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma04/0080880a00">
�����β�Ҫ��ǿ���¡�
����������һСʱ֮�ڽ����鱨�ռ���֮��ͳ��ˡ�
����Ϊ�´λ�����׼������

{	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080890a02">
�����첻��������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080900a00">
�����ڻ���֪���ý�������⵽����<RUBY text="����">ʲô</RUBY>��
�����ǲ�����������֮ǰ����״����
Ȼ�������������Ҫ�ж�����

//��������
<voice name="����" class="����" src="voice/ma04/0080910a00">
�����̫������󻹴��ڵ��ϼ������飬
�Ͳ��ɱ�����Ļ��������������ͻ��
�ҷ�ȱ�ٵ��������Բ�����
�����ܹ�����Ӵ�����

//��������
<voice name="����" class="����" src="voice/ma04/0080920a00">
��������Ҫ��Ļ����ս��Ҳ�޿��κΣ�
��״����ûŪ��������ǲ���
���������̤��ľ֡�
��������ô����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080930a02">
�������š�
���������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080940a00">
����ô�Ϳ�ʼ�ж�����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080950a02">
���ǡ����������ǲ���ͷ�ж���
ʱ�����ޣ�����Ϊ��ͷ�ж�
����Ч�ʡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080960a00">
������û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����������˼��
���������ҡ��ҡͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma04/0080970a00">
������Ѳ�ߵ����߻���ʵ�������
��δ�õ�ȷ���ġ������Σ��ʱ��
û���Ҳ��С�
��������Ū������֮ǰ���������ͷ�ж�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0080980a02">
�������Բ���
�������������ս���Ļ������������
�Ͳ����Ϻ����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0080990a00">
�������ᡣ
���ұ������Ǹ���ս�����ˡ�
��ֻ�ڴ�����Э���ҽ����Ѳ飬
���û�С���

//��������
<voice name="����" class="����" src="voice/ma04/0081000a00">
�������Ѿ���ֻ�Ӧ���ҵ��ڴ���
������û��Ҫ�ھΡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081010a02">
�������š���

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081020a02">
�������������ǣ��ҡ�������
����ϣ���ܰ���������æ����������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081030a02">
������ġ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081040a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���Ҷ�������ϸ�������š�
����Ϊ�Ҿ����������Ƚ��׵���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma04/0081050a00">
���߰ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081060a02">
���õġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��u��ɭ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��˵ʵ�����Ҹ���û�ڴ���ε�����ȡ��
ʲô��չ��
����Ϥһ�����գ���ʹ���ĵ�����еø�˳���ɡ�
ֻ���������㡣

�����ǡ�
��û�������ӣ������쳣��Χ�ı�ɽһ��
��չ����������ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma04/0081070a00">
��������

{	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081080a02">
���������ʡ�
���ն���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081090a00">
��ʲô�£���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081100a02">
�����񡭡���Щ�ֵֹģ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081110a00">
��ʲô��˼����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081120a02">
�������Ҳ�֪������ô���ݡ���

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081130a02">
������������

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081140a02">
������������������һ������
�ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081150a00">
���Ǹ����еı�������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081160a02">
������ʲô��˼����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081170a00">
������û�ж����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081180a02">
������������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081190a02">
��������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081200a00">
��Ұ�����ﱾ��Ҳ�Ͳ�������������
���ֳٶ۵�������ǰ��
�����������������Ӱ���٣�����
ʮ���쳣�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����½�ظ����������෴��
���������˲��ٱ����̾��Ŷ���æ�Ĵ��Ӵ�ʱ������΢С���졣
ͬʱ�ں��￴�����ڶ����࣬
��Ҳӡ֤�˷���������鱨��

���������߹���·���������
�����Ǳ仯ȴ���֮��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081210a02">
������ֲ���״̬����ƽ����Ϊʲô������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081220a00">
���Ҳ�֪����
��Ҳ��ֲ������Ҳ���쳣��ֻ������һƬ�ڰ���
��������ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081230a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������ĳɳ��ܵ��쳣�����ĵ�����
���Լ��������෴���������ݽߵĵ�����

��������ô���£�
������Ϊ�λ����<RUBY text="��������">����</RUBY>ʧ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//��u���Ď�����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����������ͣ�½Ų���

�����չ������ǰ�Ĺ⾰��
��������ν������ݽ������ľ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm35",0,1000,true);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma04/0081240a00">
��������ô����������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081250a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm35",0,1000,true);


...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���ݽߡ�
��һ�ж��ݽ��ˡ�

��������·�϶���������������ѿ���Ӳݣ�
�˴�ȴ����˿ݻ�ɫ��ʮ��������
���������棬������Ӱ���١���Ķ���Ҳ�Ͳ������ˡ�

������Ҳ���ﲻ����
������ָ������һ�飬���������̱����߽⣬
���ɢɳ���ع���档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/ma04/0081260a00">
��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081270a02">
���ն���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081280a00">
���š�����

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081290a02">
����Ȼ�Ҳ�֪����������ʲô��ı��
������һ���й�
���϶�û����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081300a02">
�����ǿ϶�����Щ<RUBY text="����������">����������</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081310a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���ұ���������������������������������˼����
������Υ������������顣
��Ļ���D�D�����ֻ��Ļ��һ�ֲ߻�ʵʩ���£�������á�
������ʵҲ���á���

�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/ma04/0081320a00">
������ô�룿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�����ʴ�����
��������Ӧ�������ڰ�������̽�������Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="��������" src="voice/ma04/0081330a01">
���š���
����Ȼ���޷�����
���顣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081340a00">
���ţ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0081350a01">
�����˵��Щ�����������<RUBY text="��������">�����쳣</RUBY>
����Ҳûʲô����˼��ɡ�
����Ϊ��Ҳ�޷���ȫ���������Ǻŵ�
����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081360a00">
�������Ǻŵ���Ϣô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0081370a01">
���������ڻ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081380a00">
��û�У���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0081390a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����Ȼ�����ǻ���δѲ�쵺�ϵ����еط���
��ֻ����һС���ֶ��ѡ�

������������ԣ�����ʲô�����ܶ��ԡ�
����ʹ�����ĽŲ����D�D�Ѿ���������ʹ��Ĥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/ma04/0081400a00">
��һ������

{	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081410a02">
���š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081420a00">
�����ܿ���������ʲô��
���㿴��������Ƭ�յء���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081430a02">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081440a00">
�������ϡ�����û��ʲô��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081450a02">
����������ʲô����
���ҹ�ȥ��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081460a00">
������������û���κ��ڱ��
����һ������·�����ɾ����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081470a00">
����������ȥ���������𣿡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081480a02">
��������ǿ�ܿ�����
���������
<RUBY text="��������">��������</RUBY>�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081490a00">
����Ҳֻ�ܿ�������Щ��
�������⡭���������⡣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081500a02">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081510a00">
��������������
�������������ǳ��ؾ޴�Ķ���������
����ɵĺۼ�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0081520a02">
�����������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081530a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410a]
���������<k>
����������ɫ�Ĺ����

����һ�е����򣬾����Ǵ���С˵�Ŀ���һ�㡣
���ұ���Ϊ��ֻ�ǳ¸������ԣ����𽥱ƽ���
��״ȴ�������ֲ���ʵ����Ϣ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410b]
��һ�ж���δ���ˡ�
��û���κ��˵���Ӱ��

�����Ǻ���������
������������м����塪��

�����������������ʲô��
���������ν�ı���������

��������ʲô����֪����
��Ȼ����

�������ԣ�һ����<RUBY text="��������">ʲô����</RUBY>�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//�����ޤ�


..//������ָ��
//�Υե����롡"ma04_009.nss"


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���
scene ma04_008.nss_ka
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_007.nss"

//�����΍u�ϲ��ذ�
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//�룺voice/ma04/0080010a03
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081540a03">
�����Ƿ�ͷ�ж�����Σ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081550a00">
����Ȱ�������ɡ�
����Ч����˵����ȷ��ͷ�ж����ϲߣ�
������֮ǰ���Ǳ��볷�ˣ����໹ʣ��һ��
����Сʱ�ˡ���

//��������
<voice name="����" class="����" src="voice/ma04/0081560a00">
�����Ժ�������ûʲô�ɹ����ڴ��ġ�
����������Ѳ�ߵ����߻���ʵ�������
��δ�õ�ȷ���ġ������Σ��ʱ��
�ܹ�������ŵ�ֻ����һ�ˡ���Ҳ�Ǹ����⡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//�룺�����å�45
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081570a03">
���⵹Ҳ��ѽ����
�����������Ƕ�ôԹ���Լ�
�ⲻ�����������ػ��ţ��ʹ粽���е�
����֮��ѽ����

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081580a04">
���ۡ���

{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//�룺�����å�45
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081590a03">
�����������š��š���
����������ô��������Ҳ�������ˣ���

{	FwC("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081600a04">
�����������������ѽ��
������ɴ��Ҳ���������
��������

{	FwC("cg/fw/fw����֦_��Ц.png");}
//�룺�����å�45
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081610a03">
���źǺǣ���ô��
���ǾͶౣ������ѽ�����ţ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081620a04">
���ǣ���л���Ĺ��ġ�
����˵�������ն����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081630a00">
���š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081640a04">
������֮����������ݵ���
�λö����������
���������Ǳ�����Ƥ�����������޳ܡ�
��֪�ܵĴʻ㡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081650a00">
������֪������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081660a04">
����ʹ����������ͨ��
Ҳ���ͷ���Ͱɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081670a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣���å��󥰥�Щ`�����z��
	CreateSE("SE01","se���L_�|��_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//�룺�����å�45
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081680a03">
���ְ���һ���¸ҵ�սʿ��
�����Ǹ��������ӵ����ˡ�
�����������˳����ڱ���
��Ϊ�Σ�Ϊʲô���ְ�����ô����_��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��u��ɭ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��˵ʵ�����Ҹ���û�ڴ���ε�����ȡ��
ʲô��չ��
����Ϥһ�����գ���ʹ���ĵ�����еø�˳���ɡ�
��ֻ���������㡣

�����ǡ�
��û�������ӣ������쳣��Χ�ı�ɽһ��
��չ����������ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/ma04/0081690a00">
��������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081700a03">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081710a04">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
��ÿ���˶���ù����ˣ��⵱Ȼ����Ϊ����֪��
�������ж������ǡ�
�������������ڽ���Ұ�ͣ�����֮��Ҳ��һ��
���ҵ����⡣

����Ȼû��˵��������ÿ���˶��Ѿ�
ע�⵽�ˡ�
�����<RUBY text="����">����</RUBY>�ĸо������ֺ�������
�޷����ӡ�

��û�������ļ���
��<RUBY text="��������">û�ж���</RUBY>��

��������֪�������Ұ�������
������������ǰ����
������ԶԶ����ʱ���������졢΢���ĺ�����
�����������ߵ����񡪡�һ�ж������ˡ��⵽�ס���

����֮������Ȼ������Ӧ���ܵ����ĵı�����
������ȴ��������С�
���⵽������ô���£�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081720a03">
�����������ǵ�½�ĵط�����û����
��������ء�
�������Ǹ��и���Ұ�����档��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081730a00">
�������鱨��ʾ������Ҳ�ܿ����ڶ����ࡣ
������һ���棬����ȴ�����������硣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081740a04">
��ֲ�￴�������Ƕ�ͦ�����ġ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081750a03">
�����ԡ�
����ľ�����Ҳ���½��
���졣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081760a04">
����˵ʲô����С�㣿��

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081770a03">
��ֻ�����¹⣬���ѿ���ɡ�
���������ǿ�ή�˰���Խ��ǰ������ή��Խ���ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081780a00">
���������帽�����Ǻ����������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081790a03">
�����������ú�ïʢ����
����˷�ï����ʱ��������Ҳ�ǺܹŹֵġ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081800a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
������ĳɳ��ܵ��쳣�����ĵ�����
���Լ��������෴���������ݽߵĵ�����

��������ô���£�
������Ϊ�λ����<RUBY text="��������">����</RUBY>ʧ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//��u���Ď�����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�������ξ�Ĺ۵�û�д���

�����չ������ǰ�Ĺ⾰��
��������ν������ݽ������ľ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma04/0081810a00">
��������ô����������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081820a03">
��������֮���������Էḻ����Ȼ��Դ
Ϊ�������š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081830a04">
�����⡭��
������Ȼ��Դ��Ӱ�Ӷ���������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
���ݽߡ�
��һ�ж��ݽ��ˡ�

��������·�϶���������������ѿ���Ӳݣ�
�˴�ȴ����˿ݻ�ɫ��ʮ��������
���������棬������Ӱ���١���Ķ���Ҳ�Ͳ������ˡ�

������Ҳ���ﲻ����
������ָ������һ�飬���������̱����߽⣬
���ɢɳ���ع���档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="����" src="voice/ma04/0081840a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081850a03">
��Ļ����������������ʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0081860a04">
�����������
����������õ����ǿ϶���һ������������
�鷳�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
���ұ���������������������������������˼����
������Υ������������顣
��Ļ�����������ֻ��Ļ��һ�ֲ߻�ʵʩ���£��������
�ġ�������ʵҲ���á���

�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��������
<voice name="����" class="����" src="voice/ma04/0081870a00">
������ô�룿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
�����ʴ�����
��������Ӧ�������ڰ�������̽�������Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="��������" src="voice/ma04/0081880a01">
���š���
����Ȼ���޷�����
���顣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081890a00">
���ţ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0081900a01">
�����˵��Щ�����������<RUBY text="��������">�����쳣</RUBY>
����Ҳûʲô����˼��ɡ�
����Ϊ��Ҳ�޷���ȫ���������Ǻŵ�
����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081910a00">
�������Ǻŵ���Ϣô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0081920a01">
���������ڻ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081930a00">
��û�У���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0081940a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
����Ȼ�����ǻ���δѲ�쵺�ϵ����еط���
��ֻ����һС���ֶ��ѡ�

������������ԣ�����ʲô�����ܶ��ԡ�
����ʹ�����ĽŲ��������Ѿ���������ʹ��Ĥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��������
<voice name="����" class="����" src="voice/ma04/0081950a00">
����ξ���¡�����

{	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081960a03">
��ʲô�£���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081970a00">
���������ǵ��У�����Ӧ����á�
���������֪��������ʲô�𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0081980a03">
����ָ�����Ǵ��յ��𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0081990a00">
���ǵġ�
�������ϡ�����û��ʲô��������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0082000a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0082010a04">
���ұȽ�ϣ���ܿ�����ȥȷ�ϡ���
����������Ұ̫�����˰�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0082020a00">
���ǡ����ﲻ����û��Ѳ��������
�������ǲ��ܴ�ҡ��ڵ��߳�ȥ��
��������ô��������ξ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0082030a03">
��������ȷ��
����ȷ�ж���������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0082040a03">
�����Ƴ��޵Ķ�������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0082050a00">
�����ޣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0082060a03">
���и������������
������һ�����ʹ�峵����ž�������
�����ĺۼ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0082070a00">
���޴󡭡���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0082080a03">
���ţ��ر�޴�
�����������Ϊ��ĳ��Ŀ�Ķ��ھ�����Ŀӣ�
�������ĳ�ֶ����ƶ�ʱ���µĺۼ���
��ô���ⶫ���϶��Ǹ����µĹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
��˵�꣬��ξ�����ˡ�
����������Ϊ�����Լ��Ļ���
��������ĳ���¡�

������D�D<k>
����������ɫ�Ĺ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//�����衿
<voice name="����" class="����" src="voice/ma04/0082090a04">
�����������ô˵�أ�
���Ҹо��Լ������Ǵ�����
����ල�ĵ�Ӱ��һ������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0082100a03">
������ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0082110a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...//���¤Υƥ����Ȥϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
��һ�ж���δ���ˡ�
��û���κ��˵���Ӱ��

�����Ǻ���������
������������м����塪��

�����������������ʲô��
���������ν�ı���������

��������ʲô����֪����
��Ȼ����

�������ԣ�һ����<RUBY text="��������">ʲô����</RUBY>�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//�����ޤ�

}

..//������ָ��
//�Υե����롡"ma04_009.nss"