//<continuation number="1730">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_012.nss_MAIN
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

//�룺�ǥХå���
//$Ichizyou_Dead=true;
//$Kanae_Dead=true;

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

	#av_��҆��=true;

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

	#av_��҆��=true;

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

	#av_��҆��=true;

	}

	$PreGameName = $GameName;

	$GameName = "ma04_013vs.nss";

}

scene ma04_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_011.nss"

//��ҹ
//���L��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm24",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ǳ���ҹɫ��½��֮����
��������һ�����������ն��Ը���Ч�ʡ�
�ڸչ���ҹ֮ʱ���Ѿ����ֵ��顣

�����粦��ҹĻ��ǰ����
�������ҹ��ӡ�󻹲����š�����û�˷羰�ĺڰ�������
���ӹ��죬�ƺ�������ĳЩ������

����֪�����䣬�Ų���ó��ض�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����᪡�
//���ҥ���ȫ�T����ʤ飱����
//������֦�����ʤ飱����
//��һ�������ʤ飱����


}


scene ma04_012.nss_all
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_011.nss"

//��ҹ
//���L��
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	SoundPlay("@mbgm24",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����衿
<voice name="����" class="����" src="voice/ma04/0120010a04">
���ն����ˡ���ҹ�к��ж����룿��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120020a00">
����֮��ȥ��ҹ�����˹Źֺۼ��ĵط��ɡ�
��˵�������ҵ��µ���䡣��

//��������
<voice name="����" class="����" src="voice/ma04/0120030a00">
��֮��ȥ�о�������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120040a02">
���Ҿ���ֱ�����о���ǰ���ȽϺð���
������ô�붼�϶��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0120050a03">
���⻰��û����������������ͬ��
��ô��΢��Щ·Ҳ����ͽ��֮�ٰɡ�
���������������˼�ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120060a00">
���ǵġ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120070a02">
��ԭ����ˡ���
���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ҵ�о�������˵�����ڵ����뿿���ĵط���
��������Ļ�����еĵ�ͼ������ô��ʾ�ġ�

������⴦������Υ����ʵ�����Ǿ�ֻ���Լ�Ѱ��
�������ڴ��ˡ�
�������������Ȳ쿴ȷ��������ĳЩ�����ĵط���
��Ȼ��֪�������϶���ó���

������ʱ�����ޣ���ԶԶ���㡣
������Զ·�͵üӿ��ٶȡ������Һȳ��Լ�
��������Щ��ų�ĽŲ����ڲ������������޶���
�ӿ�ǰ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ď�����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ú��������ڵִ
�������ϲ���������צӡ������յء�
��ή����ľҲ��������޶��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120080a02">
��������������ô�죿��

{	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0120090a03">
������Ҫ����ȥ�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120100a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������Ҳ��Ϊʱ�䲻�㣬���Ա�����ð�ա�
��ͨ������ܴ����ط����˽⵽���������ޡ�
��������޷��õ��鱨��
����Ȼ���������С�ĵ���˳����С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma04/0120110a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120120a01">
���š�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120130a00">
��������Դ̽�顣
������ΧѰ��������Ӧ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120140a01">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣤���äݤ��ӣ�
	CreateSE("SE01","se����_���å��ԥå�_������04");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/ma04/0120150a01">
�������޷�Ӧ��
��ʲô��û�С�����

//��������
<voice name="����" class="��������" src="voice/ma04/0120160a01">
�����ʲô��û�С�
����СèС���������ڡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120170a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������Ҳ�ܸ��ܵ����쬵�<RUBY text="��������">���޷�Χ</RUBY>����������ǵõ���
֤ʵһ�㡣
����Ȼ�⸽��û�����

�����ǵ��쳣�Ŀ��Ⱥͼ�����¶ȱ仯��
��̬ϵͳ������Ҳ��������Ȼ�ġ�
������ʹ��ˣ�<RUBY text="����������">���������</RUBY>Ҳ���������޶ȡ�

�������������ɡ�
��һ�����б�����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100a]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0120180a03">
���������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100b]
//��������
<voice name="����" class="����" src="voice/ma04/0120190a00">
�����������ƺ�û�����ˡ�
����ʼ����ɡ�������Ѹ�ٵء�����

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120200a01">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ŵĽ��д���������ҵĻ���
�������ǽ��о���ļ�С�

�������ִߴ�ͬ���߰�������������ͷ�ϵĽ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma04/0120210a00">
������?!
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120220a01">
������Դ��Ӧ!!
��������������ʲô������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120230a00">
������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������Դ��������ô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/ma04/0120240a01">
������<RUBY text="��">��</RUBY>�߶���Դ��Ӧ��
�����ˡ��������ж���Ҫ����!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120250a00">
��������?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120260a01">
�����£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������������?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
//������ǈ��ݳ����ޤ����륨�åȤ���
	OnSE("se���L_�Ɖ�_����01",1000);
	CreatePlainEX("�}��", 5100);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");

	Fade("�}��", 0, 500, null, true);
	Shake("�}��", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("�}�ե�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����ǰ�Ŀյس��ķ��ο�ʼ<RUBY text="����">����</RUBY>����������������ˡ�
����һ˲�䡣

�����Ƕ�Ѩ�ײ���<RUBY text="��">��</RUBY>�������֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T���Ï�����װ����҆��
	#av_��҆��=true;

//���Ȥ������ӥ����ࡣ�ڹ�����ż�L��
	PrintGO("�ϱ���", 25000);
	CreateSE("SE01","se����_������_�u������");
	CreateColorSP("�}��Ļ", 10000, "#FFFFFF");
	CreateTextureSP("�}����100", 5000, Center, Middle, "cg/ev/resize/ev909_��҆��_l.jpg");
	CreateTextureSP("�}����200", 5000, Center, Middle, "cg/ef/efRec_�a03.png");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 3000, 5000, null, true);
	Move("�}����100", 0, @+100, @0, null, true);
	Move("�}����200", 0, @+250, @-50, null, true);
	CreateMovie("��`�ө`��", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("��`�ө`��", 0, @0, @180, @0, null,true);
	Zoom("��`�ө`��", 0, 3000, 5000, null, true);
	Move("��`�ө`��", 0, @+250, @-50, null, true);

	Delete("�ϱ���");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}����100", 1500, @0, @+200, null, false);
	Shake("�}����100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("�}��Ļ", 1000, 1000, "effect_01_00_0", true);

	Zoom("�}����200", 2500, 10000, 80000, null, false);
	Fade("�}����200", 1000, 0, null, false);
	Move("��`�ө`��", 5000, @0, @+300, null, false);
	Zoom("��`�ө`��", 5000, 70000, 8000, null, false);
	Fade("��`�ө`��", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//�����ޤ�

	SetFwL("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120270a02">
�����������֡�����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120280a02">
���������������

{	FwL("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0120290a03">
��������ѽ��ѽ����

{	FwL("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0120300a04">
������������ǵġ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

	SoundPlay("@mbgm13",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��û��
���Ƕ������ˡ��������û���������õĳ�ν�ˡ�

���ӽ��׽����ɫ������
���·����弫�ȳ��󻯺���ֵ����͡�

������Ҫ���ǡ���
���Ǹ��޴�������

����ֱ���ǵ�½�ľ޾���
����������֪�ߴＸ�֡��޴Ӽ��㡣

���������������
��<RUBY text="��������">���ڿ���</RUBY>��

������һ��������ζ����ʵ�еķ羰��
�����޷�����˼������֪�������θ��룬
Ҳ��֪�����кξٶ���

����Ŵ������������Ҳ��ֹ��һ�ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�
	CreateTextureEX("�}����1000", 6000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Fade("�}����1000", 1000, 1000, null, true);
	Delete("��`�ө`��");
	Delete("�}����100");
	Delete("�}����200");


	SetFwL("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0120310a03">
��������˵�ܾúܾ���ǰ��
�и�������ʲô���������
����������������Ķ���������

{	FwL("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0120320a04">
�����µ�����˵�����ڵ¹�
ʧ���ˡ�����

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120330a02">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��ŭ���޷������������Դ���
����Ӧ����Щ���顪��һ����ĳЩ��Ҫ��ȥ����

��Σ�ա�

�����ﲻ������С�ݡ�
����û����ȥ������ݾ�㵸С�

���Ҹ������¡�
����Ҫ���Ҹ������¡���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma04/0120340a00">
��������������

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120350a01">
��������������

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120360a00">
������ʲô����
����֪���𣿡�

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120370a01">
������������

//��������
<voice name="����" class="��������" src="voice/ma04/0120380a01">
�������ǽ��С�
����Ȼ��Щ�������ڲ�ͬ����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120390a00">
�����С�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����Ҳ�����ֲ��롣
�����ǽ��С�

����ô��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma04/0120400a00">
���С��ѡ�ô����

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120410a01">
����������û�С���

//��������
<voice name="����" class="��������" src="voice/ma04/0120420a01">
�������ǡ���

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120430a00">
�����Ǽ����尡��
����ô��ȻҲ�������Ǻš���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120440a01">
���š���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120450a00">
����ô��������Ӧ�ó��˰ɡ���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120460a01">
���ǰ�����
�����Ÿ������Լ�û��ս�⣬��Σ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������Ĵ��н����ߡ������ߣ�������Ͷ���ҡ�
�����ڿ����ҡ�

����ƫ���еؿ����ҡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma04/0120470a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���ƺ���Щ���
������ᷢ���鷳�¡�

���Ӳ��ϲ硣
�����޷�׼ȷ���ա�

����ã��������
��<RUBY text="����������������������������">��Ȼ��֪�����ڲ��Ƿ�����ʱ��</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�������`�ɥ쥤��k�ӡ�
	CreateSE("SE01","se����_��x_��҆��01");

	CreateTextureEXsub("�}��ܞ100", 16000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreateColorEX("�}��ܞ200", 15000, "White");

	CreateTextureEXadd("�}����200", 12000, Center, Middle, "cg/ev/ev909_��҆��.jpg");

	CreateMovie("��`�ө`��", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("��`�ө`��", 0, 0, null, true);
	Rotate("��`�ө`��", 0, @0, @180, @0, null,true);
	Zoom("��`�ө`��", 0, 3000, 5000, null, true);
	Move("��`�ө`��", 0, @+250, @-30, null, true);
	SetAlias("��`�ө`��","��`�ө`��");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("��`�ө`��", 5000, 40000, 5000, Axl1, false);
	Fade("��`�ө`��", 1000, 1000, null, false);
	Shake("�}����100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("�}��ܞ200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("�}����200", 0, 1000, null, false);
	DrawTransition("�}����200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("�}����200", 300, 0, null, false);
	Fade("�}��ܞ100", 0, 1000, null, false);
	DrawTransition("�}��ܞ100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("�}��ܞ200", 0, 1000, null, false);
	DrawTransition("�}��ܞ200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("��`�ө`��", 2000, 0, null, false);
	Zoom("��`�ө`��", 5000, 30000, 5000, Axl1, false);

	FadeDelete("�}��ܞ*", 500, false);


//�����ޤ�

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma04/0120480a00">
������!!��

{	FwL("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0120490a03">
�����ǡ���?!��

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120500a02">
�����ȡ���
�����ԣ�����?!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ
	SetVolume("SE01", 2000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����ů�ķ紵����
�����������<RUBY text="��������">����ס��</RUBY>��

����ʧȥ��ĳЩ������
���ұ�������ĳЩ������

�����ǡ�������

�����ǹ�����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma04/0120510a00">
������!!��

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120520a01">
����������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����鹥��
//�������夶���夶���塣ͻ���̤��롣
	CreateSE("SE01","se����_����_֩������¤�01");
	CreateTextureEX("�}EF100", 10000, 0, 0, "cg/ef/ef018_֩�����.jpg");

	SetVertex("�}EF100", 1024, 576);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	Request("�}EF100", Smoothing);

	SetBlur("�}EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}EF100", 200, 1024, 0, Dxl1, false);
	Fade("�}EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	Delete("�}EF100");
	Delete("��`�ө`��");
	Delete("�}����200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se���L_�|��_����04",1000);


	Fade("�ե�å����",300,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Delete("�ե�å����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��֩���³��ĸ�˿���ì�㻮����ա�
����������ɫ����װ�ס�

���Ҳ�֪����һ���ܴ���������ˡ�
�����ǣ��ַ羲ֹ�����ˡ�

�������ָֻ������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma04/0120530a00">
�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
������ͬ���߽е���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/ma04/0120540a00">
�����غ��塪��
�������ص�Ƭ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120550a02">
���ն�����������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120560a00">
����ȥ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340a]
���Ҵ�С�
��������Ͼ�����ʴ�

{	CreateSE("SEL01","se����_����_�ߤ�01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);}
�������ξ��������ŵ�һ�����֣�ǿӲ�ش�������ʼ
���ܡ�
�����Լ�Ҳ��ʼ�����ˡ���������֮ǰ��
��������һ�ۡ�

{	SetVolume("SE*", 3000, 0, null);}
����Ҳ��������
������ֻ���������ֻ�Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340b]
������Ͼ���������ȥ�ı�Ӱ��ֻ�������Լ�����
������ʧ�ĽŲ�����
��Ȼ�󣬶��š�

�������޴�����
����ԡ��֩��ķ���֮�£�ȴ����η��Ĺ�Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="��������" src="voice/ma04/0120570a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х�`�󡣥ѩ`�ķֽ�
//���������܇��չ�_
//�����֤�򸲤���ƬĿ��Җ��
	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStR(0,true);
	Fade("�}�ե�", 1000, 0, null, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/ma04/0120580a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤�ǰ����Ф�
	CreatePlainSP("�}��д", 2000);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStR(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma04/0120590a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�����ߡ��������l�Tξ����
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeDelete("�}�ե�", 1000, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/ma04/0120600a00">
���������ˡ�
��Ҫ��ʼ�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120610a01">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�100", 4100, -780, -170, "cg/ev/resize/ev909_��҆��_l.jpg");
	Request("�}�ţ�100", Smoothing);
	Rotate("�}�ţ�100", 0, @0, @180, @0, null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���ұ���ս����
������Ҫ�����ǳɹ�����֮ǰ��

{	DrawTransition("�}�ţ�100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("�}�ţ�100", 300, 850, null, false);}
����������֡���
������ǰ��δ����Ҳ��δ������Լ���������
������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_013vs.nss"

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
scene ma04_012.nss_ic
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_011.nss"

//��ҹ
//���L��
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/ma04/0120620a00">
��������֮��ȥ����ĵط�����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120630a02">
�������Ǹ�������ֺۼ��ĵط��ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120640a00">
���š�
��֮��ȥ�о�������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120650a02">
��ֱ��ȥ�о����ȽϿ��
�ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
������Ӧ���Ǻ��ġ�
���������һ����˼������������ô˵��

����Ҳ�������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma04/0120660a00">
��������˳·��
��������̫���µģ���������˵����
����ĳЩ��Ҫ���鱨����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120670a02">
�����������������⵹Ҳ�ǡ�
���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����˵����ҵ�о����������ڵ����뿿����
�ط���
��������Ļ�����еĵ�ͼ������ô��ʾ�ġ�

������⴦������Υ����ʵ�����Ǿ�ֻ���Լ�Ѱ���������ڴ�
�ˡ�
�������������Ȳ쿴ȷ��������ĳЩ�����ĵط���
��Ȼ��֪�������϶���ó���

������ʱ�����ޣ���ԶԶ���㡣
������Զ·�͵üӿ��ٶȡ������Һȳ��Լ�
��������Щ��ų�ĽŲ����ڲ������������޶���
�ӿ�ǰ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ď�����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
�����ú��������ڵִ
�������ϲ���������צӡ������յء�
��ή����ľҲ��������޶��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120680a02">
��������������ô�죿��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120690a00">
������Ҫ����ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
������Ҳ��Ϊʱ�䲻�㣬���Ա�����ð�ա�
��ͨ������ܴ����ط����˽⵽���������ޡ�
��������޷��õ��鱨��
����Ȼ���������С�ĵ���˳����С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/ma04/0120700a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120710a01">
���š�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120720a00">
��������Դ̽�顣
������ΧѰ��������Ӧ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120730a01">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣤���äݤ��ӣ�
	CreateSE("SE01","se����_���å��ԥå�_������04");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="��������" src="voice/ma04/0120740a01">
�������޷�Ӧ��
��ʲô��û�С�����

//��������
<voice name="����" class="��������" src="voice/ma04/0120750a01">
�����ʲô��û�С�
����СèС���������ڡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120760a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
������Ҳ�ܸ��ܵ����쬵�<RUBY text="��������">���޷�Χ</RUBY>����������ǵõ���
֤ʵһ�㡣
����Ȼ�⸽��û�����

�����ǵ��쳣�Ŀ��Ⱥͼ�����¶ȱ仯��
��̬ϵͳ������Ҳ��������Ȼ�ġ�
������ʹ��ˣ�<RUBY text="����������">���������</RUBY>Ҳ���������޶ȡ�

�������������ɡ�
��һ�����б�����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500a]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120770a02">
���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500b]
//��������
<voice name="����" class="����" src="voice/ma04/0120780a00">
�����������ƺ�û�����ˡ�
����ʼ����ɡ�������Ѹ�ٵء�����

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120790a01">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
�����ŵĽ��д���������ҵĻ���
�������ǽ��о���ļ�С�

�������ִߴ�ͬ���߰�������������ͷ�ϵĽ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="����" src="voice/ma04/0120800a00">
������?!
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120810a01">
������Դ��Ӧ!!
��ʲ��������ʲô������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120820a00">
������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
������Դ��������ô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��������
<voice name="����" class="��������" src="voice/ma04/0120830a01">
������<RUBY text="��">��</RUBY>�߶���Դ��Ӧ��
�����ˡ��������ж���Ҫ����!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120840a00">
��������?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120850a01">
�����£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
��������������?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
//������ǈ��ݳ����ޤ����륨�åȤ���
	OnSE("se���L_�Ɖ�_����01",1000);
	CreatePlainEX("�}��", 5100);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");

	Fade("�}��", 0, 500, null, true);
	Shake("�}��", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("�}�ե�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
����ǰ�Ŀյس��ķ��ο�ʼ<RUBY text="����">����</RUBY>����������������ˡ�
����һ˲�䡣

�����ǿڶ�Ѩ�ײ���<RUBY text="��">��</RUBY>�������֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T���Ï�����װ����҆��
	#av_��҆��=true;

//���Ȥ������ӥ����ࡣ�ڹ�����ż�L��
	PrintGO("�ϱ���", 25000);
	CreateSE("SE01","se����_������_�u������");
	CreateColorSP("�}��Ļ", 10000, "#FFFFFF");
	CreateTextureSP("�}����100", 5000, Center, Middle, "cg/ev/resize/ev909_��҆��_l.jpg");
	CreateTextureSP("�}����200", 5000, Center, Middle, "cg/ef/efRec_�a03.png");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 3000, 5000, null, true);
	Move("�}����100", 0, @+100, @0, null, true);
	Move("�}����200", 0, @+250, @-50, null, true);
	CreateMovie("��`�ө`��", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("��`�ө`��", 0, @0, @180, @0, null,true);
	Zoom("��`�ө`��", 0, 3000, 5000, null, true);
	Move("��`�ө`��", 0, @+250, @-50, null, true);

	Delete("�ϱ���");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}����100", 1500, @0, @+200, null, false);
	Shake("�}����100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("�}��Ļ", 1000, 1000, "effect_01_00_0", true);

	Zoom("�}����200", 2500, 10000, 80000, null, false);
	Fade("�}����200", 1000, 0, null, false);
	Move("��`�ө`��", 5000, @0, @+300, null, false);
	Zoom("��`�ө`��", 5000, 70000, 8000, null, false);
	Fade("��`�ө`��", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//�����ޤ�

	SetFwL("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120860a02">
�����������֡�����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120870a02">
���������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

	SoundPlay("@mbgm13",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
��û��
���Ƕ������ˡ��������û���������õĳ�ν�ˡ�

���ӽ��׽����ɫ������
���·����弫�ȳ��󻯺���ֵ����͡�

������Ҫ���ǡ���
���Ǹ��޴�������

����ֱ���ǵ�½�ľ޾���
����������֪�ߴＸ�֡����޴Ӽ��㡣

���������������
��<RUBY text="��������">���ڿ���</RUBY>��

������һ��������ζ����ʵ�еķ羰��
���޷�����˼������֪�������θ��룬
Ҳ��֪�����кξٶ���

����Ŵ������������Ҳ��ֹ��һ�ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�
	CreateTextureEX("�}����1000", 6000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Fade("�}����1000", 1000, 1000, null, true);
	Delete("��`�ө`��");
	Delete("�}����100");
	Delete("�}����200");

	SetFwL("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120880a02">
������������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0120890a02">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
����ŭ���޷������������Դ���
����Ӧ����Щ���顪��һ����ĳЩ��Ҫ��ȥ����

��Σ�ա�

�����ﲻ������С�ݡ�
����û��ȥ������ݾ�㵸С�

���Ҹ������¡�
����Ҫ���Ҹ������¡���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="����" src="voice/ma04/0120900a00">
��������������

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120910a01">
��������������

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120920a00">
������ʲô����
����֪���𣿡�

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120930a01">
������������

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120940a01">
�������ǽ��С�
����Ȼ��Щ�������ڲ�ͬ����

{	FwL("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120950a00">
�����С�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
����Ҳ�����ֲ��롣
�����ǽ��С�

����ô��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//��������
<voice name="����" class="����" src="voice/ma04/0120960a00">
���С��ѡ�ô����

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0120970a01">
����������û�С���

//��������
<voice name="����" class="��������" src="voice/ma04/0120980a01">
�������ǡ���

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0120990a00">
�����Ǽ����尡��
����ô��ȻҲ�Ͳ������Ǻ��ˡ���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121000a01">
���š���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121010a00">
����ô��������Ӧ�ó��˰ɡ���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121020a01">
���ǰ�����
�����Ÿ������Լ�û��ս�⣬��Σ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
������Ĵ��н����ߡ������ߣ�����Ͷ��
�ҡ�
�����ڿ����ҡ�

����ƫ���еؿ����ҡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//��������
<voice name="����" class="����" src="voice/ma04/0121030a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
���ƺ���Щ���
���ᷢ���鷳�¡�

���Ӳ��ϲ硣
�����޷�׼ȷ���ա�

����ã��������
��<RUBY text="����������������������������">��Ȼ��֪�����ڲ��Ƿ�����ʱ��</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�������`�ɥ쥤��k�ӡ�
	CreateSE("SE01","se����_��x_��҆��01");

	CreateTextureEXsub("�}��ܞ100", 16000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreateColorEX("�}��ܞ200", 15000, "White");

	CreateTextureEXadd("�}����200", 12000, Center, Middle, "cg/ev/ev909_��҆��.jpg");

	CreateMovie("��`�ө`��", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("��`�ө`��", 0, 0, null, true);
	Rotate("��`�ө`��", 0, @0, @180, @0, null,true);
	Zoom("��`�ө`��", 0, 3000, 5000, null, true);
	Move("��`�ө`��", 0, @+250, @-30, null, true);
	SetAlias("��`�ө`��","��`�ө`��");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("��`�ө`��", 5000, 40000, 5000, Axl1, false);
	Fade("��`�ө`��", 1000, 1000, null, false);
	Shake("�}����100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("�}��ܞ200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("�}����200", 0, 1000, null, false);
	DrawTransition("�}����200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("�}����200", 300, 0, null, false);
	Fade("�}��ܞ100", 0, 1000, null, false);
	DrawTransition("�}��ܞ100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("�}��ܞ200", 0, 1000, null, false);
	DrawTransition("�}��ܞ200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("��`�ө`��", 2000, 0, null, false);
	Zoom("��`�ө`��", 5000, 30000, 5000, Axl1, false);

	FadeDelete("�}��ܞ*", 500, false);
//�����ޤ�

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//��������
<voice name="����" class="����" src="voice/ma04/0121040a00">
������!!��

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0121050a02">
�����ȡ���
�����ԣ�����?!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ
	SetVolume("SE01", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
����ů�ķ��������
�����������<RUBY text="��������">����ס��</RUBY>��

����ʧȥ��ĳЩ������
���ұ�������ĳЩ������

�����ǡ�������

�����ǹ�����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//��������
<voice name="����" class="����" src="voice/ma04/0121060a00">
������!!��

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121070a01">
����������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����鹥��
//�������夶���夶���塣ͻ���̤��롣
	CreateSE("SE01","se����_����_֩������¤�01");
	CreateTextureEX("�}EF100", 10000, 0, 0, "cg/ef/ef018_֩�����.jpg");

	SetVertex("�}EF100", 1024, 576);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	Request("�}EF100", Smoothing);

	SetBlur("�}EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}EF100", 200, 1024, 0, Dxl1, false);
	Fade("�}EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	Delete("�}EF100");
	Delete("��`�ө`��");
	Delete("�}����200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se���L_�|��_����04",1000);


	Fade("�ե�å����",300,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Delete("�ե�å����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
��֩���³��ĸ�˿���ì�㻮����ա�
����������ɫ����װ�ס�

���Ҳ�֪����һ���ܴ���������ˡ�
�����ǣ��ַ羲ֹ�����ˡ�

�������ָֻ������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��������
<voice name="����" class="����" src="voice/ma04/0121080a00">
�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
������ͬ���߽е���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//��������
<voice name="����" class="����" src="voice/ma04/0121090a00">
�����غ��塪��
�������ص�Ƭ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0121100a02">
���ն�����������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121110a00">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740a]
���Ҵ�С�
��������Ͼ�����ʴ�

�����ƿ������ŵ�һ���������������ʱ�ķ���
�������ص��ˡ���������������˵��ʲô��

��
������������Ҳ��
��������������������������һ�𡪡�

{	CreateSE("SEL01","se����_����_�ߤ�01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);}
�������ɳ�Ĭ��
�������˵�ҧ���촽��ת������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740b]
������Ͼ���������ȥ�ı�Ӱ��ֻ�������Լ�����
������ʧ�ĽŲ�����
��Ȼ�󣬶��š�

�������޴�����
����ԡ��֩��ķ���֮�£�ȴ����η��Ĺ�Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//��������
<voice name="����" class="��������" src="voice/ma04/0121120a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х�`�󡣥ѩ`�ķֽ�
//���������܇��չ�_
//�����֤�򸲤���ƬĿ��Җ��
	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStR(0,true);
	Fade("�}�ե�", 1000, 0, null, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//��������
<voice name="����" class="����" src="voice/ma04/0121130a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤�ǰ����Ф�
	CreatePlainSP("�}��д", 2000);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStR(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��������
<voice name="����" class="����" src="voice/ma04/0121140a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�����ߡ��������l�Tξ����
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeDelete("�}�ե�", 1000, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��������
<voice name="����" class="����" src="voice/ma04/0121150a00">
���������ˡ�
��Ҫ��ʼ�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121160a01">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�100", 4100, -780, -170, "cg/ev/resize/ev909_��҆��_l.jpg");
	Request("�}�ţ�100", Smoothing);
	Rotate("�}�ţ�100", 0, @0, @180, @0, null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
���ұ���ս����
������Ҫ�����ɹ����ӡ�

{	DrawTransition("�}�ţ�100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("�}�ţ�100", 300, 850, null, false);}
����������֡���
������ǰ��δ����Ҳ��δ������Լ���������
������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_013vs.nss"

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
scene ma04_012.nss_ka
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_011.nss"

//��ҹ
//���L��
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	SoundPlay("@mbgm24",0,1000,true);


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//�����衿
<voice name="����" class="����" src="voice/ma04/0121170a04">
���ն����ˡ���ҹ�к��ж����룿��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121180a00">
����֮��ȥ��ҹ�����˹Źֺۼ��ĵط�
�ɡ�
��˵�������ҵ��µ���䡣��

//��������
<voice name="����" class="����" src="voice/ma04/0121190a00">
��֮��ȥ�о�������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0121200a03">
������Ҳ�á���Ȼֱ�����о���ǰ����Ƚ�
��ݡ�
�����ͷ�λ��˵����·Ҳ�Ƶò���̫Զ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121210a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
����˵����ҵ�о����������ڵ����뿿����
�ط���
��������Ļ�����еĵ�ͼ������ô��ʾ�ġ�

������⴦������Υ����ʵ�����Ǿ�ֻ���Լ�Ѱ���������ڴ�
�ˡ�
�������������Ȳ쿴ȷ��������ĳЩ�����ĵط���
��Ȼ��֪�������϶���ó���

������ʱ�����ޣ���ԶԶ���㡣
������Զ·�͵üӿ��ٶȡ������Һȳ��Լ�
��������Щ��ų�ĽŲ����ڲ������������޶���
�ӿ�ǰ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ď�����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
�����ú��������ڵִ
�������ϲ���������צӡ������յء�
��ή����ľҲ��������޶��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0121220a03">
������Ҫ����ȥ�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121230a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
������Ҳ��Ϊʱ�䲻�㣬���Ա�����ð�ա�
��ͨ������ܴ����ط����˽⵽���������ޡ�
��������޷��õ��鱨��
����Ȼ���������С�ĵ���˳����С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//��������
<voice name="����" class="����" src="voice/ma04/0121240a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121250a01">
���š�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121260a00">
��������Դ̽�顣
������ΧѰ��������Ӧ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121270a01">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣤���äݤ��ӣ�
	CreateSE("SE01","se����_���å��ԥå�_������04");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//��������
<voice name="����" class="��������" src="voice/ma04/0121280a01">
�������޷�Ӧ��
��ʲô��û�С�����

//��������
<voice name="����" class="��������" src="voice/ma04/0121290a01">
�����ʲô��û�С�
����СèС���������ڡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121300a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
������Ҳ�ܸ��ܵ����쬵�<RUBY text="��������">���޷�Χ</RUBY>����������ǵõ���
֤ʵһ�㡣
����Ȼ�⸽��û�����

�����ǵ��쳣�Ŀ��Ⱥͼ�����¶ȱ仯��
��̬ϵͳ������Ҳ��������Ȼ�ġ�
������ʹ��ˣ�<RUBY text="����������">���������</RUBY>Ҳ���������޶ȡ�

�������������ɡ�
��һ�����б�����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880a]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0121310a03">
���������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880b]
//��������
<voice name="����" class="����" src="voice/ma04/0121320a00">
�����������ƺ�û�����ˡ�
����ʼ����ɡ�������Ѹ�ٵء�����

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121330a01">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
�����ŵĽ��д���������ҵĻ���
�������ǽ��о���ļ�С�

�������ִߴ�ͬ���߰�������������ͷ�ϵĽ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//��������
<voice name="����" class="����" src="voice/ma04/0121340a00">
������?!
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121350a01">
������Դ��Ӧ!!
��������������ʲô������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121360a00">
������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
������Դ��������ô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//��������
<voice name="����" class="��������" src="voice/ma04/0121370a01">
������<RUBY text="��">��</RUBY>�߶���Դ��Ӧ��
�����ˡ��������ж���Ҫ����!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121380a00">
��������?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121390a01">
�����£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
��������������?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
//������ǈ��ݳ����ޤ����륨�åȤ���
	OnSE("se���L_�Ɖ�_����01",1000);
	CreatePlainEX("�}��", 5100);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");

	Fade("�}��", 0, 500, null, true);
	Shake("�}��", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("�}�ե�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
������ǰ�Ŀյس��ķ��ο�ʼ<RUBY text="����">����</RUBY>����������������ˡ�
����һ˲�䡣

�����Ƕ�Ѩ�ײ���<RUBY text="��">��</RUBY>�������֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T���Ï�����װ����҆��
	#av_��҆��=true;

//���Ȥ������ӥ����ࡣ
	PrintGO("�ϱ���", 25000);
	CreateSE("SE01","se����_������_�u������");
	CreateColorSP("�}��Ļ", 10000, "#FFFFFF");
	CreateTextureSP("�}����100", 5000, Center, Middle, "cg/ev/resize/ev909_��҆��_l.jpg");
	CreateTextureSP("�}����200", 5000, Center, Middle, "cg/ef/efRec_�a03.png");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 3000, 5000, null, true);
	Move("�}����100", 0, @+100, @0, null, true);
	Move("�}����200", 0, @+250, @-50, null, true);
	CreateMovie("��`�ө`��", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("��`�ө`��", 0, @0, @180, @0, null,true);
	Zoom("��`�ө`��", 0, 3000, 5000, null, true);
	Move("��`�ө`��", 0, @+250, @-50, null, true);

	Delete("�ϱ���");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}����100", 1500, @0, @+200, null, false);
	Shake("�}����100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("�}��Ļ", 1000, 1000, "effect_01_00_0", true);

	Zoom("�}����200", 2500, 10000, 80000, null, false);
	Fade("�}����200", 1000, 0, null, false);
	Move("��`�ө`��", 5000, @0, @+300, null, false);
	Zoom("��`�ө`��", 5000, 70000, 8000, null, false);
	Fade("��`�ө`��", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//�����ޤ�

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
//��������
<voice name="����" class="����" src="voice/ma04/0121400a00">
����������

//��������
<voice name="����" class="����" src="voice/ma04/0121410a00">
�������������������������

{	FwL("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0121420a03">
��������ѽ��ѽ����

{	FwL("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0121430a04">
������������ǵġ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

	SoundPlay("@mbgm13",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
��û��
���Ƕ������ˡ��������û���������õĳ�ν�ˡ�

���ӽ��׽����ɫ������
���·����弫�ȳ��󻯺���ֵ����͡�

������Ҫ���ǡ���
���Ǹ��޴�������

����ֱ���ǵ�½�ľ޾���
����������֪�ߴＸ�֡����޴Ӽ��㡣

���������������
��<RUBY text="��������">���ڿ���</RUBY>��

������һ��������ζ����ʵ�еķ羰��
���޷�����˼������֪�������θ��룬
Ҳ��֪�����кξٶ���

����Ŵ������������Ҳ��ֹ��һ�ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�
	CreateTextureEX("�}����1000", 6000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Fade("�}����1000", 1000, 1000, null, true);
	Delete("��`�ө`��");
	Delete("�}����100");
	Delete("�}����200");

	SetFwL("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0121440a03">
��������˵�ܾúܾ���ǰ���и�������ʲô���������
��������������Ķ���������

{	FwL("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0121450a04">
�����µ�����˵�����ڵ¹�
ʧ���ˡ�����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121460a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
����ŭ���޷������������Դ���
����Ӧ����Щ���顪��һ����ĳЩ��Ҫ��ȥ����

��Σ�ա�

�����ﲻ������С�ݡ�
����û��ȥ������ݾ�㵸С�

���Ҹ������¡�
����Ҫ���Ҹ������¡���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
//��������
<voice name="����" class="����" src="voice/ma04/0121470a00">
��������������

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121480a01">
��������������

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121490a00">
������ʲô����
����֪���𣿡�

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121500a01">
������������

//��������
<voice name="����" class="��������" src="voice/ma04/0121510a01">
�������ǽ��С�
����Ȼ��Щ�������ڲ�ͬ����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121520a00">
�����С�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
����Ҳ�����ֲ��롣
�����ǽ��С�

����ô��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
//��������
<voice name="����" class="����" src="voice/ma04/0121530a00">
���С��ѡ�ô����

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121540a01">
����������û�С���

//��������
<voice name="����" class="��������" src="voice/ma04/0121550a01">
�������ǡ���

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121560a00">
�����Ǽ����尡��
����ô��ȻҲ�Ͳ������Ǻ��ˡ���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121570a01">
���š���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0121580a00">
����ô��������Ӧ�ó��˰ɡ���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121590a01">
���ǰ�����
�����Ÿ������Լ�û��ս�⣬��Σ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
������Ĵ��н����ߡ������ߣ�����Ͷ��
�ҡ�
�����ڿ����ҡ�

����ƫ���еؿ����ҡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
//��������
<voice name="����" class="����" src="voice/ma04/0121600a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1040]
���ƺ���Щ���
������ᷢ���鷳�¡�

���Ӳ��ϲ硣
�����޷�׼ȷ���ա�

����ã��������
��<RUBY text="����������������������������">��Ȼ��֪�����ڲ��Ƿ�����ʱ��</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�������`�ɥ쥤��k�ӡ�
	CreateSE("SE01","se����_��x_��҆��01");

	CreateTextureEXsub("�}��ܞ100", 16000, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	CreateColorEX("�}��ܞ200", 15000, "White");

	CreateTextureEXadd("�}����200", 12000, Center, Middle, "cg/ev/ev909_��҆��.jpg");

	CreateMovie("��`�ө`��", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("��`�ө`��", 0, 0, null, true);
	Rotate("��`�ө`��", 0, @0, @180, @0, null,true);
	Zoom("��`�ө`��", 0, 3000, 5000, null, true);
	Move("��`�ө`��", 0, @+250, @-30, null, true);
	SetAlias("��`�ө`��","��`�ө`��");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("��`�ө`��", 5000, 40000, 5000, Axl1, false);
	Fade("��`�ө`��", 1000, 1000, null, false);
	Shake("�}����100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("�}��ܞ200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("�}����200", 0, 1000, null, false);
	DrawTransition("�}����200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("�}����200", 300, 0, null, false);
	Fade("�}��ܞ100", 0, 1000, null, false);
	DrawTransition("�}��ܞ100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("�}��ܞ200", 0, 1000, null, false);
	DrawTransition("�}��ܞ200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("��`�ө`��", 2000, 0, null, false);
	Zoom("��`�ө`��", 5000, 30000, 5000, Axl1, false);

	FadeDelete("�}��ܞ*", 500, false);


//�����ޤ�

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
//��������
<voice name="����" class="����" src="voice/ma04/0121610a00">
������!!��

{	FwL("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0121620a03">
�����ǡ���?!��

{	FwL("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0121630a04">
�������������ˣ�
�����ã���С�㣡��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ
	SetVolume("SE01", 2000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
����ů�ķ��������
�����������<RUBY text="��������">����ס��</RUBY>��

����ʧȥ��ĳЩ������
���ұ�������ĳЩ������

�����ǡ�������

�����ǹ�����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
//��������
<voice name="����" class="����" src="voice/ma04/0121640a00">
������!!��

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121650a01">
����������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����鹥��
//�������夶���夶���塣ͻ���̤��롣
	CreateSE("SE01","se����_����_֩������¤�01");
	CreateTextureEX("�}EF100", 10000, 0, 0, "cg/ef/ef018_֩�����.jpg");

	SetVertex("�}EF100", 1024, 576);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	Request("�}EF100", Smoothing);

	SetBlur("�}EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}EF100", 200, 1024, 0, Dxl1, false);
	Fade("�}EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	Delete("�}EF100");
	Delete("��`�ө`��");
	Delete("�}����200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se���L_�|��_����04",1000);


	Fade("�ե�å����",300,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Fade("�ե�å����",100,1000,null,true);
	Fade("�ե�å����",20,0,null,true);
	Delete("�ե�å����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1080]
��֩���³��ĸ�˿���ì�㻮����ա�
����������ɫ����װ�ס�

���Ҳ�֪����һ���ܴ���������ˡ�
�����ǣ��ַ羲ֹ�����ˡ�

�������ָֻ������ɡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1090]
//��������
<voice name="����" class="����" src="voice/ma04/0121660a00">
���볷�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
������ͬ���߽е���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ޤ�

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
//��������
<voice name="����" class="����" src="voice/ma04/0121670a00">
�����غ��塪��
�������ص�Ƭ������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0121680a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se����_����_�ߤ�01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120a]
�������ξû�лش�
��������οյ��������������ˡ�

��ֻ�������뿪֮ǰ��
��������һ�ۡ�

{	SetVolume("SE*", 3000, 0, null);}
����Ҳ��������
������ֻ���������ֻ�Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//���¤Υ��`��ϸ���`�ȹ�ͨ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120b]
������Ͼ���������ȥ�ı�Ӱ��ֻ�������Լ�����
������ʧ�ĽŲ�����
��Ȼ�󣬶��š�

�������޴�����
����ԡ��֩��ķ���֮�£�ȴ����η��Ĺ�Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1130]
//��������
<voice name="����" class="��������" src="voice/ma04/0121690a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х�`�󡣥ѩ`�ķֽ�
//���������܇��չ�_
//�����֤�򸲤���ƬĿ��Җ��
	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStR(0,true);
	Fade("�}�ե�", 1000, 0, null, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1140]
//��������
<voice name="����" class="����" src="voice/ma04/0121700a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤�ǰ����Ф�
	CreatePlainSP("�}��д", 2000);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStR(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
//��������
<voice name="����" class="����" src="voice/ma04/0121710a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�����ߡ��������l�Tξ����
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeDelete("�}�ե�", 1000, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1160]
//��������
<voice name="����" class="����" src="voice/ma04/0121720a00">
���������ˡ�
��Ҫ��ʼ�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0121730a01">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�100", 4100, -780, -170, "cg/ev/resize/ev909_��҆��_l.jpg");
	Request("�}�ţ�100", Smoothing);
	Rotate("�}�ţ�100", 0, @0, @180, @0, null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1170]
���ұ���ս����
������Ҫ�����ǳɹ����ӡ�

{	DrawTransition("�}�ţ�100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("�}�ţ�100", 300, 850, null, false);}
����������֡���
������ǰ��δ����Ҳ��δ������Լ���������
������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_013vs.nss"

}


