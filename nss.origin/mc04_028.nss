//<continuation number="1470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_028.nss_MAIN
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
	#ev196_����֦�ȣ�_a=true;
	#ev196_����֦�ȣ�_b=true;
	#ev197_����֦�ȣ�=true;
	#ev198_����֦�ȣ�_a=true;
	#ev198_����֦�ȣ�_b=true;

//��������ݳ��������ǵ��h���Ƥ�����Τ����ͥ��Х�رܤΤ��ᐙ���K�ˤޤǤȤäƤ���������
	//#ev007_������Ƥ���Ů��=true;

	#bg091_ɽ�P��һ��_03b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_029.nss";

	//��ꥳ�쥯������á���������������
	ReConquest();
	#mc04_028=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene mc04_028.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================

//============================================
//��ꥳ�쥯������á���������������
}else{

	//״�B���x

	//�ꥳ����Ĩ��
	RecoIn();
}
//========================================================

..//������ָ��
//ǰ�ե����롡"mc04_027.nss"

//���£ǣͣ��ҥ����
//���ţ֣�������Ѻ����������֦
//inc�ñ�����ߩ`���ʤ����ᤨ��`���Ǥޤ��衣

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 19000, "BLACK");
	CreateTextureEX("�}�ݱ�������", 111, -630, -500, "cg/bg/resize/bg091_ɽ�P��һ��_03aexl.jpg");
	CreateTextureEX("�}�ݱ���", 110, -630, -500, "cg/bg/resize/bg091_ɽ�P��һ��_03al.jpg");
	OnBG(100,"bg091_ɽ�P��һ��_03a.jpg");
	FadeBG(0,true);

	OnSE("se����_����_�����Ĥ�01", 1000);
	WaitKey(800);

	OnSE("se����_�n��_ܞ��01", 1000);
	WaitKey(1000);

	Delete("�ϱ���");

	WaitKey(1000);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]

//��������
<voice name="����" class="����" src="voice/mc04/0280010a00">
��������������������


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280020a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�ݱ���*", 10000, -400, @0, DxlAuto, false);
	SoundPlay("@mbgm28",3000,1000,true);
	Fade("�}�ݱ���", 0, 1000, null, true);
	FadeDelete("�\Ļ*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����Ӷ����ĳ������
������Ԥ���е���ȣ���Щ����졣

�������ξ���Ұ�����

����ֵ��ǣ���ȫû�дֱ��ĸо���
����ʹ����ĳ���������ҷ·�����Լ�����
Ը��Ҫ����������֪�����ء��������������ɵ�������

���ع����������������Ѿ�ѹ�������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc04/0280030a00">
����ξ������


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280040a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�����Ĥ�02");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ѯ�ʵ���ͼ�Ѿ������˰ɡ�
��Ȼ������ξû�л�Ӧ��

{	MusicStart("SE01",0,1000,0,800,null,false);}
����΢΢������ָ�⣬���ҵ����졣
���⿪Ŧ�ۣ��ü����Ӵ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc04/0280050a00">
�������ڡ�����


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280060a03">
�����졭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������ȷ�Ļ����ٴ�ѯ�ʣ����Լ�̵Ķ���
�������ҵ��Ȼ���
����˼�ǽ�������գ���˼����Ĵ��

�����졪������
��
��Ȼ����һ�����Ѿ���ʾ�˽����������ԣ�
�Ƕ��Ҷ����Ǿ����������ĺ��塣

�����졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280070a03">
�����ԡ�������֮ǰ����
�������ҵĶ�������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280080a03">
���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���Ⲣ��Ѱ��ͬ����������������������������
�������

����֧�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc04/0280090a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���øɿʵĺ���������˳��֮�⡣
�����޷�������ֻ�����ᴭϢ��

����������Σ��ҵĻش�Ϊ�ξ�û�й�ϵ��
����Ȼ֧���ѳ�ǰ�ᣬ���ǶԷ��ķ�Ӧû����
�μ�ֵ��

�������ξ��˫������������ɱ���֮Ȩ���֣���
�����ڰ�ȥ�ҵ��·��������ö�����
Ҳ���Լ������ܵ������ĺ��������Ҵ�����
����δ�����������Ĵ�Ůͬ���Ľ��š�

��˼���ţ���ΪʲôҪ�������¡�
�����������ͬʱ���־���ȥ�Ʋ����е�����
������û������ġ�

�����ƿ����ҡ�
��ֻ����һ��������ʵ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��inc�ñ���ץ�֤����ޤ���

	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�}�ݱ���*", 20000, @0, 0, DxlAuto, false);
	Fade("�}�ݱ�������", 1000, 1000, null, true);

//��inc�ñ���ץ�֤����ޤ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0091]
���·���ǰ�󱻳������ʻ��Ƥ����¶������Ŀ����С�
�����ŵ����ߴ��Ϸ���ע������

�������кܶ��˺ۡ�

�������ܴٽ��ٿ��ߵ������ָ���������ͨ���˿ڶ���
�ڶ�ʱ���ڲ����ۼ�����ʧ�������˿ڼ������Ȭ��
��Ҳ�����µ����ĺۼ���
���������˿����ҵ����������Ǽ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280100a03">
������������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280110a00">
���������������������ŵĻ�����
����Щ̫������


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280120a03">
���߳��𣿡�


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280130a00">
���ǡ�����


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280140a03">
��Ϊʲô��
�����ó�ª�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ξ��Сָ��������ǰ��һ���ۼ��軭�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280150a03">
����������˺ۡ���


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280160a00">
���š���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280170a03">
���˺ۿ���˵�ǻ��ŵ�֤�ݡ�
���Ȳ���ֵ���߳ܵĶ�����
Ҳ����ʲô��ª�Ķ���Ŷ���������ˡ���


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280180a00">
�����Ƕ�Ѱ��������˶��ԡ�����ξ��
�����������ԡ���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280190a03">
��������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280200a00">
�����˵�˺��ǻ��ŵ�֤�ݡ���
���Ǵն��������˺�����ʾ�ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����Լ�����ָָ�򷽲ű���ξ���������˺ۡ�

���һ���������˺۵����ɡ�
�������������������˺۵�ս��֮�С�������ս��֮��
�Լ����ߵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc04/0280210a00">
�����ǳ��С���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280220a03">
��������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280230a00">
����ȥΪ֮�߳����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 19000, "#000000");
	DrawTransition("�}ɫ�\", 3000, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ұ����۾�˵����
��
������û�п϶�Ҳû�з񶨣�û�������������ش�

�����ǣ�����û��ֹͣ��
�����Ըо�������ξע�����Ľ���ʼ��ͣפ����
��Ƥ���ϡ�

���о���Щ��������
��ϸϸ��Ŀ�⻯�����ֵ�˿�ߣ����ҵ�Ƥ��������
�����ĵ�ӿ�������Ĵ����

��������Ť�����壬Ҳ���ڱ���ѹ�ţ����޷���Ը��

���߳����Խ��������·��ȣ�����ֻ������һ;��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣����˿ڤ�Ĥ�������֦
	CreateSE("SE01","se����_����_�ڸ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetNwC("cg/fw/nw����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc04/0280240a00">
��������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�ݱ���*", 0, -723, -315, null, true);

	DrawDelete("�}ɫ�\", 300, 1000, "slide_05_00_1", false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��ͻȻ����Ϊ�Ǵ���ĸо������ʵ�ʡ�
�����һ�ҪŨ��������

��ɲ�Ǽ䣬��ʶһ���Ի��޷�Ū����ʵ��
�����ǵ�ȷ����Ұ�з����ı仯����ʶ��
�����˺��¡�

������֦С�㣬�����š���
���ҵ��˺ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280250a03">
���š�����


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280260a00">
����ξ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������ֹ��������Ȼ��ȴ�޷�������ȥ��
����Ѱ�������ã֮�䣬�޷��ҵ����ڡ�

�����״̬�¡���Ӧ��˵ʲô�á�
����֪������˵ʲô�����ж���ǰ���������ġ�

������ľżһ�㿴Ҳ������Ĭ���ţ���ξ�����
���Լ�����Ϊ�С�
���ø��е�����˫����Ū�ţ����е����Ҳ��
������

���ʪ�Ĵ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mc04/0280270a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����ͷ����ʹ��������������������
������Ĵ̼��������������¡�

��������������һ��Ϊ��
������������һ������Χ���죬����

��ϸ�µء�
�������ξ���Լ��Ŀڴ���ȷ�����ҵ��˺ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mc04/0280280a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��ͻȻ����

���޷���ֹ�������ɡ�
����������ҵ����ɡ�

����������������ξ��Եģ�������
�ֲ����ҡ�

���ҵ��˺ۡ�

���ҵĹ켣��

���ҵ�������

���ҵ����

����������Ʒζ����Щ��

���޷��ܾ���������Ȼ�ġ�
���������ҳ��׸�����ϣ���õ��þ��Ķ�����

����ֻ����Ը���ܡ�
�����⿴���������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280290a03">
��������Щ����


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280300a00">
��������


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280310a03">
��ÿһ����ÿһ������
��������ˮ��ζ������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280320a03">
��������̾��ζ��������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280330a00">
���������ǡ���


//��������
<voice name="����" class="����" src="voice/mc04/0280340a00">
��������Ȼ�İɡ���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280350a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������ɱ��֮��Թ�޵���ˮ��
�����Լ�ԩ�����������˷����ı�̾��

�����Ⱦ���ҵ��˺���Ҳ�ǵ�Ȼ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280360a03">
��û�����ס�����


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280370a00">
����������


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280380a03">
���������˴��ˡ�
��������<RUBY text="����������">������һ��</RUBY>����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280390a03">
��Ϊʲô�����Ͳ������أ���


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280400a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��˵������Ҳ��ȷʵ����ξ˵�Ļ�����
�������ķ��롣

����˵��ʲô�ط�Ū�����ء�
������˵��������ʲô�ء�

����ˮ�𣿡���̾��
������˵��������<RUBY text="��������">˭��һ��</RUBY>�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280410a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����֪��ʱ��ξ��˫��ͻȻֱ��ס�ҡ�
�������ҵ�ͫ�ף����ڵȴ����г���
����Ļ���𡪡�

��������Ҳ˵������
�������ͬʱ����ξ����Ͷ����Ŀ�����Ѿ�
�����ŷ�������ɫ��

����Ϊ֪�������޷���⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mc04/0280420a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
�����һ�Ӧ�ģ������ķ����������ڴ���
������Ԥ��һ�㣬������ӳ����������ɫ��

����ξ��û�з���ʧ����̾Ϣ��
��ֻ�Ǹ������ף��������Լ��ı��顣

������һ�ٴ룬Ӧ��Ҳ������ĳ�־���ɡ�
��������������Ҳ�������½��������ж���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣����e�������ڷ��ˡ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���������ʣ���Ҳ���ǲ���˵��˳�ƶ�Ϊ��
��Ȼ����Ҫ˵�ɼ��磬Ҳȷʵ�Ǽ��硣

�����ٶ��ҵ���ж����������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280430a03">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}�ݱ���");
	CreateTextureEX("�ۤ�����", 4000, -680, 0, "cg/ev/resize/ev196_����֦�ȣ�_al.jpg");
	Move("�}�ݱ���*", 3000, @0, @-196, DxlAuto, false);
	Move("�ۤ���*", 3000, @0, -196, DxlAuto, false);
	Fade("�ۤ�����", 1000, 1000, null, true);
	Delete("�}�ݱ���*");

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���Աȸղų�������ʱ���ӱ�׾��Ӳ�Ķ�����
��ξ���������ҵĿ��ӡ�
���⿪Ƥ��������������

�������ž��˶�����¶���Ķ�����

��һ��Ŀѣ��

������ͻȻ��ʼ����ӿ�ֵ��������¡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������^ȥ�Υȥ饦�ޣãǡ�ev007

	EfRecoIn1(18000,600);

	CreateTextureSP("�}�ݣţ�", 4100, Center, Middle, "cg/ev/ev007_������Ƥ���Ů��.jpg");
	SetShade("�}�ݣţ�", SEMIHEAVY);
	SetTone("�}�ݣţ�", NegaPosi);

	Fade("�}�ݣţ�", 600, 750, null, false);

	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��ƽʱ������������е�<RUBY text="����">����</RUBY>��
�Զ���ͻȻ��������һ�����ͷ������ѡ�
���������ƣ���Ҫ�ܰ��Լ�����ҧ�Ƶ���־����


������嶯�ܲ��
�������Լ����ò������Լ���

����֪����ξ����ζԴ��ҵ���ݿ��ơ�
������⻹������ء�

����������������û�������ж���Ϊ��ѡ��
��ѩ�׵�˫��Ⱦ��糺죬�������С�


����ָ�ԶԴ�����Ʒ��Ķ���������ȥ��
��С������أ�����Ϊ��������������Լ��ķ���ȥ��


���·������������һ��أ�ע�����
�����������������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);

	Delete("�}�ݣţ�");
	CreateTextureSP("�ۤ�����", 4000, Center, Middle, "cg/ev/ev196_����֦�ȣ�_a.jpg");

	EfRecoOut2(600,true);

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/mc04/0280440a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�������޷����
��������ѹ���еĳ嶯���Ѿ��߾�ȫ����

�������������ξ�����š�
�����������ڵ��Ҷ��ԣ�������ֻ��˵�Ǿ綾��

������һ�ο���Ϊ�ǹ۲�Ҳ����Ϊ�ǳ����ʱ�䣬��
ξ�����ؿ�ʼ���ֵĶ�����
��Ҫ����Ϊ����������Щ��׾������û���ܹ���
�������������۵���ԣ��

��������ʶ������֦С�����ڽ���������Ϊ����ʵ��
�ҽ��ܵĴ̼����Ѿ����ٱ��͡�
���·�һ��������ʶ�ͻᱻ���ɡ�

�����Ĵ�Ϣ����������ָ�����ߡ�
��ȫȻ�������˵���Ը���ҵ��Ǹ�����̰���ű�
ʩ���ȫ���̼���

�����ң����ڿ�����ࡪ��
������ȥ������ˡ��ǰ�����ѪҺ��������Σ�
���͵���̬��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280450a03">
�������Ǹ����������ˡ�����


{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280460a00">
��������


{	NwR("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280470a03">
�����졭���Ļ���û��ϵ�ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����Ȼ�й�ϵ��

��û�н��⻰˵������������Ϊ����ƴ��ѹ��
�Գ嶯�أ�������Ϊ�Ѿ��������ݳ嶯�أ�
�����Լ�Ҳ�����б�
�����Է���ȱ����ʵ��������Զȥ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��inc�ñ���ץ�֤����ޤ���

	CreateTextureEX("�ۤ�����", 4010, Center, Middle, "cg/ev/ev196_����֦�ȣ�_b.jpg");
	Fade("�ۤ�����", 1000, 1000, null, true);

	WaitKey(1000);

//��inc�ñ���ץ�֤����ޤ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0401]
����ξû�нӵ��ҵķ񶨣������︶����ʵ����
����������ʱ��Ҳ����ô�Ĺ��ϡ�
����ȻͬʱҲ��Ϊ�ѡ�

����ͷ������ȥ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��inc�ñ���ץ�֤����ޤ���

	Fade("�ۤ�����", 500, 0, null, true);

//��inc�ñ���ץ�֤����ޤ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0402]
���⾥��������������á�
����ξ���ȵؽ�ͷ���඼���˻�ȥ��

�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�ۤ�����", 500, 1000, null, true);
	Delete("�ۤ�����");

	SetNwR("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280480a03">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�����˲�䡣
���Ҳ����˲�ʳ������ľ���

�����Լ���Ϊ<RUBY text="��������">����ʳ��</RUBY>��
��
������˵��û��ʲô���ɣ�������������ظо�����
��ξ������仯��

��<RUBY text="����������������">ĳ�����ر�����</RUBY>��
�������������������ǡ�Ī�������Ȥ����
һ���ĸо���

��Σ�ա�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�ۤ�����ex", 4011, -340, InBottom, "cg/ev/resize/ev196_����֦�ȣ�_bm.jpg");

	SetNwR("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430a]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280490a03">
��������


</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�ۤ�����ex", 3000, @0, -104, DxlAuto, false);
	Fade("�ۤ�����ex", 1000, 1000, DxlAuto, false);

	SetNwR("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430b]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280500a03">
���Ź�������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��������Ԥ�о�������ա�

����ξ������ǰ��սս�����������Ե���ͬ����һ���
�¸ң���ס����������ǰ�ˡ�
�������еĲ��֣����ʪ�ĸд�����ů��������


��������������Ϊ̹�ʵ��Ǹ����֣��������ʵأ�
Ѹ����������Ӧ�ķ�Ӧ��
���������¡��

��˳���Ŵ�ξ����ͼ��
����ʵ�ء�

�������ɸ���һ��ɿ�����������顣
�����ܵĺ쳱��ʾ����������Ѿ����߳�ת��Ϊ���á�ͬʱ
ӣ����ǰ�ƽ��š�

������Խ��Խ�
������Ĵ�붼�Ѿ������ɵ���ǻ�С�

����˴����������Ĥ��
������Ĵ��С�

������֮��ӿ���ҵ���������ȫ������������
��
���������ⲻ������٣��ַ����������ֵط���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280510a03">
���ź�������


{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280520a00">
������������


{	NwR("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280530a03">
���������ˡ���
������ɣ���


{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280540a00">
����������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
���Գ�Ĭ����
��������Ȼ֪���Ⲣ���洦��

����ξ�ô���΢΢չ¶Ц�ݣ�����������
���ٴκ�ס��������������ͷ��

�������ˣ���Ū������ǰ�ˡ�
��������Ū����������ɡ�Ĳ��֡�

���������ƺ�����ס��<RUBY text="����">����</RUBY>��

����������ֹ���س�Ѫ��
���ҳ��˻��Һ�����������������ʲôҲ��������

��Խ�Ǹ��������ķ�Ӧ����ξ��Խ�Ǽӿ���Ϸ�Ľ��ࡣ
��ӣ�ڵĶ���Խ��Խ���

������Ϊ����Ҫȥ��ѹ�⾥����ȴ�ڸô�չ������
����������
����������ʼĦ����

������ҺͿĨ�����Ǻ�ڳ�ª�Ĳ����ϡ�
������Ī������ģ��Ұ�������ʶ�����

�����Ũ���մȾ���˴�ξ����ζ�ɡ�
��������������ѪҺ�ͷ·���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�ۤ�����", 5000, -340, -104, "cg/ev/resize/ev196_����֦�ȣ�_am.jpg");
	Fade("�ۤ�����", 1000, 1000, null, true);

	SetNwR("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280550a03">
���Ǻǡ�����


{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280560a00">
��������������


{	NwR("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280570a03">
������¶�������ı��鰡����


{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280580a00">
�������Ͼ�����û�����䵭����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�ۤ�����", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
�������ǹƻ����ĵ�����������Ȼ���ǻ��ԣ�����Ϊ���
ȴ�ޱ�׾�ӵ���������Ӧ��
���������Ҹ��ط���ʧ�����ľ���

����Ȼ�����޴����ӡ�
�������У������н���ҵ���˼֮ǰҲ�Ǻ�������ġ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�ۤ�����ex", 1000, false);

	SetNwR("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280590a03">
������ʪ������̶ȵĻ�������


{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280600a00">
����������


{	NwR("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280610a03">
�������Ϳ����˰ɣ���


{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280620a00">
����ξ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����֪Ϊ�Σ��о������������а�����ĳ�־����Ե���˼��
�������ѯ�ʡ���
���ɿ������¶����Ľ��������Լ��·����ж�ʱ���ҽ�
����˵���ڵĻ����˻�ȥ��

������¶�����������������ҵ�˼���ɵ��������⡣
��������������ֻһζע���š�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280630a03">
������������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280640a03">
��������


{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280650a00">
������?!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣�����֦���Ѥ��ȡ��T�\λ��
	CreateTextureEX("�����礦��ex", 4025, -530, InTop, "cg/ev/resize/ev197_����֦�ȣ�l.jpg");
	Move("�����礦��ex", 3000, @0, -576, DxlAuto, false);
	Fade("�����礦��ex", 1000, 1000, null, true);
	Delete("�ۤ���*");

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
���ʼ�ĸо�����ʹ�ࡣ
�������ɷ�˵�ػ�ѹ����խ�ط���ȥ��ʹ������

������Ϊ�����жȸߵĲ�λ�������Ź�ʣ��ʹ���̼���
������Щ��Ҫ�������Ƶ��������ò����ײ�ҧ����ס��

���ɽ����˼�գ�۵�˲�䡪��ʹ���ͷ�����ˮһ����ȥ��

��ȡ����֮������ӿ�������෴�ĸо���
��������������ġ�

��ʹ������ǰ���Ļ������������粨�Ρ�
���ڽ����˲����и���ʼϯ�����ҵ�ȫ���񾭡�

��������������ⶴ����
��������ܲ���ĸд����������Ҳ���Կ��ܡ�

��������������������
����������ȥ��һ��̰��
��
����Ϊһ���������������˳�����⻹����Ρ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�����礦��", 4020, Center, Middle, "cg/ev/ev197_����֦�ȣ�.jpg");
	Fade("�����礦��ex", 1000, 0, null, true);

	SetNwL("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280660a03">
������������������


{	NwL("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280670a00">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
������Ҫȼ�մ�����˼�������������������
������ʹ��ġ���������

���Ҳ�������������������λ�ã��и�ճ��Һ��
�Ĵ��ڡ�
{	Fade("�����礦��ex", 1000, 1000, null, false);}
�����ţ���Ŀ��Ͷ��ô���

�����ɫ��Һ�塣

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwL("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/mc04/0280680a00">
��������ξ����


{	NwL("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280690a03">
���ء�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�����礦��ex", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
������������δ�ʵ����⡣
������ʹ��֮�е�����֦С����ǿЦ�š�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwL("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280700a03">
����Ϊ����һֱ���ػ���١���


{	NwL("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280710a00">
������Ϊ˭����


{	NwL("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280720a03">
����Լ�ߡ�����

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280730a03">
������<RUBY text="����">ȥ��</RUBY>֮ǰ����
������ί�����������ˡ�����


{	NwL("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280740a00">
������������

//��������
<voice name="����" class="����" src="voice/mc04/0280750a00">
���Ǹ���Լ�ߡ���Ī���ǡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 4100, -410, -255, "cg/ev/resize/ev197_����֦�ȣ�l.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
��û��������˵��ȥ��
������ʹ�໹û�����ˣ���ξ���뿪ʼ��Լ������塣

{	Move("�}��", 3000, -581, -30, DxlAuto, false);
	Fade("�}��", 1000, 1000, null, false);}
��̧����֫�������뼺����������γ���
��մȾ�ƹ�֮Ѫ�������������죬��̬�����׶�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwL("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280760a03">
���������ء���

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280770a03">
���š�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
����΢����һ�º�������
�����ٶȳ�������

�������ʵ������������ڡ�
������ء�

���ҵļ�ˣ����������������
��
������˼���һ������ʵ�С�

��ÿһ�����¶�����������ʹ�ô��Լ�ֱ��Ҫ���ڡ�

������֦С�㷴��������������Ϊ��

�����չ鲻���ǳ���֪��������ζ�Ĵ�Ů��������
��������ȱ�����򣬵�����

����û�й�ϵ��
������ݽ��£����<RUBY text="����">�ʪ</RUBY>��
��ݳ�����ǰ������������֮�¡�

���ҵ�����������������
�����ٵء�

�����ҽ������Ƶ���־�ϱ��Ѿ��������ڡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwL("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280780a03">
���������ˡ�����������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//���ۥ磻�ȥ�����
	CreateColorEX("����", 25000, "#FFFFFF");
	Fade("����",1500,1000,null,true);

//����������
	WaitKey(500);

//���ۥ磻�ȥ��󡣲��ݣ�
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg091_ɽ�P��һ��_03a.jpg");

	Delete("�����礦��*");
	FadeDelete("����", 1500, true);

	WaitKey(500);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280790a03">
����������������


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280800a03">
���������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm27",0,1000,true);

	CreateColorEX("�}ɫ�\", 15000, "#000000");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
��������Ѿ����ҵĸо����򶥵����ʵ��
����ξ������ʧȥ��������

��̱��ؽ�˫�ֳ��ڴ��ϡ�
��
�������ҷ��������������������ı���

{	SetVolume("@mbgm*", 100, 0, null);
	Fade("�}ɫ�\", 0, 1000, null, true);}
��
���������������������������ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ�\", 300, false);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��������
<voice name="����" class="����" src="voice/mc04/0280810a00">
�����ԡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
�����������в�Ȼӿ���������Լ������˿϶���
��<RUBY text="����">����</RUBY>���ԡ�

��������ǰ��Ů�Եı���
�����ܸ߰������ȡ���Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="����" src="voice/mc04/0280820a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
���ҽ��ַ��ڴ����ξ���ϡ�
��ʩ��������ת����ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280830a03">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
����֪�Ƿ������ϵ��С�������һ��ͷ�Ի�û������ʵ
������̧ͷ���ҡ�
����ò�а����ų�����߳ܣ��Լ�<RUBY text="������">�ɾ͸�</RUBY>��

����������ҵ���ǲ�֪���������̡�
��
���������ٴ�˵�������ԡ�

���������ľ���Ϊ�Ρ�
���Ҳ���֪����

������������΢���˽�һЩ�ն�����Ҳ˵������
������˵û��ʲô��ȷ��ͼ��ֻ�ǳ嶯��������Ҳ˵������

�����ǲ�����������������û�д�ɡ�
����Ȼ��Ϊ�Ǵ�Ů���ɱ���û����ʶ����

���ɱ�������֪����
��<RUBY text="��������">��������</RUBY>�������Խ���

���������Խ���
��Ӧ���Ǹ��ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����ȥ饦�ޣãǡ�ev007��
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����01", 8000, Center, Middle, "cg/ev/ev007_������Ƥ���Ů��.jpg");
	SetShade("�}����*", SEMIHEAVY);
	SetTone("�}����*", NegaPosi);

	EfRecoIn2(300);

	Wait(1500);

	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
��ԶҪ�޿ɾ�ҩ�ö�Ķ�����

���������������ԡ�
����Ȼ��ˣ��Ҿ��������˽⵽���ʵ�����

������Ҫ������
��
��������Ҫ�ҵĻ��͸�����ˣ���������֦��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ�����֦�ȣ����������å���
	CreateTextureEX("����꣱", 4010, Center, Middle, "cg/ev/resize/ev198_����֦�ȣ�_al.jpg");
	Request("����꣱", Smoothing);
	Zoom("����꣱", 0, 500, 500, null, true);
	Fade("����꣱", 0, 1000, null, true);

	CreateSE("SE01","se����_����_���01");
	CreatePlainSP("�}��д", 4100);

	SoundPlay("@mbgm29",0,1000,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 300, 30, 0, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280840a03">
�������������ˡ���?!��


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280850a03">
����ô����ȵȡ�����


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280860a00">
�����������˾���˵������
Ҳ����ȵ������ξ��
����ס����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�֒B��01");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
���Դӱ���Ϯ�������ƣ�׽ס�Ǹ���Ů�������ڸ���
�����塣
���������С�˲�ֹһȦ��������������û���κ����ѡ�

{	MusicStart("SE01",0,1000,0,1000,null,false);}
�������쵽ǰ�棬���鷿�������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280870a03">
���������ң���û���Ǹ�������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280880a00">
������˵��û����׼����
�����뵣�ġ���


//��������
<voice name="����" class="����" src="voice/mc04/0280890a00">
���������鲻��Ҳ�ա���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
����Ū�ŷ�����ʵ���鷿��
���ǳ���������������������Ϊû�б�����������
�ľ��飬���л�������Щ��̽ᡣ

����������������ʹ�ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280900a03">
���ء�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
������ҵ����������ѣ���ξ�����š�
���൱ǿ��������

�����Ҳ��������ռ�ţ��������Ժ�Ů��֮�仹�и����ļ�
�ʲ�ࡣ
���Ը���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("����꣱", true, 3, 500, 60, false);
	Move("����꣱", 300, -114, -352, Dxl3, false);
	Zoom("����꣱", 300, 1000, 1000, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0762]
������������������һ��֮����ס������һ����
�����ڴ��ϡ�
����ξ�����˵س��������С�

���־��������Ų��š�
�������������õ��ַ�ɱ����ȫ��ĵֿ���

������һ������Ӧ�þͻ����ס�
���Լ��޷�Υ������ʵ��

����ʹ��Ķ�������ξ����ת����ԣ��������ҡ�
���µ������Ҳû��ʲô���飬���鲻��������߻�Ӧ��

����һ����
��Ũ���η����ɫ��ˢ���������ϡ�

���ֿ�������Ѹ�ټ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}��", 4000, Center, Middle, "cg/ev/ev198_����֦�ȣ�_a.jpg");
	FadeDelete("�����*", 1000, true);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��������
<voice name="����" class="����" src="voice/mc04/0280910a00">
��û��
�������ͺá���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280920a03">
��������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280930a00">
����Ҫ������ֻҪ���ܾͺá�
���������𣿡�


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280940a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
�����ٴν��������鷿��
��ָ����ʩ���˱�֮ǰ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280950a03">
�����ۣ���


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280960a00">
���ش��أ���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280970a03">
���ǡ����ǡ���


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0280980a00">
���ܺá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
�������۽Ǻ���������������Ļش�Ÿе�����
�Ҹ���������ͷ����
�������з������ŵ�����������Ӧ��

����������ͬʱ���������ϵ���Ҳû���뿪��
���Ҳ�δ�Ż��������������������ҵ�����

��������ʾʹ���Ĵ�Ϣ���ȴ�����С�
��ÿһ�ζ����ҵ����¸�Ϊ���ǡ�
�����뷽�ŵĽ�����ȫ��ͬ��

���������ǲ��еġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0280990a03">
���ء���������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281000a00">
���ܷ����ɰ��������ء���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281010a03">
����������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281020a00">
���뱣����ȥ��
���ǳ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
��˳���Լ��Ŀ������飬�Ұ��쿿������ξ�����㺹��
�����ϡ�
����������ȥ����˱��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����֦.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281030a03">
�����ء�����


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281040a00">
��ϲ������������
����ô���͸������ɡ���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281050a03">
���������ǡ���
����ͣ�¡���


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281060a03">
�������ºۼ��ġ�����


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281070a00">
���š�
������ĺۼ�������


//��������
<voice name="����" class="����" src="voice/mc04/0281080a00">
�����룬�Ǻ��Դ�Ů֮����
�����˵���ǳ���ơ���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281090a03">
������������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281100a00">
��û���˻���ã�Ұ������������ʲô��֡�
�������������е�Ů�Լ������ϲ������Ǽ�������
Ҳ����ʲô��ֵ��°ɡ���


//��������
<voice name="����" class="����" src="voice/mc04/0281110a00">
�������������¶��������ǰ����Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 5000, "#000000");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
����������Ū���ĵĻ�����ξĬ�������ش���ͷ��
���߳ܵ�������ҲȾ����糺졣

{	Fade("�}ɫ�\", 1000, 1000, null, false);}
�������ľ������󱳡����󡭡�
���ܸо��������ÿһ���ط����������������ǡ�

����������˱������������ĺۼ���
������ͬ����ӣ������״�軭�Ĵ���һ�㡣

�������ξʲôҲû����˵����ƾ��Ű����Ϊ����
���Լ����ϡ�
��˳�ӵ��׳����壬Ҳ���ٵֿ���

����Ȼ��Ҳ�������죬��Ҳ�����Լ��ܿ�ͻ���롣
��
��������ʱ������

����Ȼ�ٻ�Щʱ���������Ҳ����
������������Ҳ����һ�����¡�

����˴����⣬�ҵ���Ϊ�ƶ�����һ���׶Ρ�
��û�и����κ�Ԥ�档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}��", 4000, Center, Middle, "cg/ev/resize/ev198_����֦�ȣ�_bl.jpg");
	SetBlur("�}��", true, 3, 500, 60, false);
	Zoom("�}��", 0, 500, 500, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0845]
����������һ�ж�����ͻ�ġ���
�����⵶��Ů�˵�����<?>
{	Wait(600);
	Delete("�}ɫ�\");
	Move("�}��", 600, -1024, 0, Dxl2, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, false);}
�ᴩ��

���·𱻵��������������ξ�����嵯���ţ��趯�š�
��������ڼ��磬����ǿ�ң����������������޷�����
�����ӡ�


���ش���Ȼ�ܽ�������������ѹ���ҵ��⾥���޷����֡�
�������о��ƺ���������֨��֨��������

���ɼ�����ˣ�����֮ǰ�Ľ��ҲҪ���׵öࡣ
������Ϊ��ξ�����������ڻ���ʧȥ��ԭ�е�
���°ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݏr", 4010, -655, -466, "cg/ev/resize/ev198_����֦�ȣ�_bl.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0848]
��������һ�����ԭ���������Ǵ�����֦С���
�������������Һ��
��
{	Move("�}�ݏr", 3000, -120, @0, DxlAuto, false);
	Fade("�}�ݏr", 1000, 1000, null, false);}
���������еĴ���Ҳ��ȫ���ѡ�

���ܵ������ĶԴ�������е����á�
����̰���ſ��֡�

������ֵ�ó��޵�̰����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݲ�", 4009, Center, Middle, "cg/ev/ev198_����֦�ȣ�_b.jpg");
	Fade("�}�ݏr", 1000, 0, null, true);
	Delete("�}�ݏr");

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//��������
<voice name="����" class="����" src="voice/mc04/0281120a00">
����ξ������


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281130a03">
�������������ء�����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281140a03">
���ݡ������ˣ��������ˡ���
��һ��ͺá�����΢������һ��㡣��


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281150a00">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
���Ҵ󷽵ص��ͷ��
���˻���û�оܾ������ɡ�

�����������<RUBY text="����">����</RUBY>��
��������Ը�����ɡ��������������㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��������
<voice name="����" class="����" src="voice/mc04/0281160a00">
���ղţ���˵���ػ���١�����


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281170a03">
����������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281180a00">
���Է���˭�Ҳ����ʡ�
��ֻ�Ǵ�ξ���¡����ڱ��˿�������ν���
�Ǽ�ʹ�ڶԷ�����ҲӦ�ü����ػ��Ķ�������


//��������
<voice name="����" class="����" src="voice/mc04/0281190a00">
��ֻ������������Ů����


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281200a03">
�����ǡ�����


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281210a00">
���Ǵ���Ҫ������
�������������������š�����


//��������
<voice name="����" class="����" src="voice/mc04/0281220a00">
�����Ҵն������������С�
����ͼ���������Ǹ�����������������Ҳ��������


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281230a03">
��������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281240a00">
���ߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
���������������Ƶ�Ц����

��ƾ��ֱ�������׵��������Ǹ��ˣ���û�н�����ν
��������ϵ��
�������еĻ������������������ػ����Ȥ����û
�еĶ�����ȥǿ��Ҳû�����塣

����������Ҳͬ���ܳ�����ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//��������
<voice name="����" class="����" src="voice/mc04/0281250a00">
����ξ��
����Ҫ����ô������¡���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281260a03">
�����������������ˣ���


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281270a00">
���벻Ҫ���ǡ�
���ú��������İɡ���

//��������
<voice name="����" class="����" src="voice/mc04/0281280a00">
������ô˵Ҳ�ǵ޽��Լ֮�ˡ�
����������Ѿ����ʣ���׷�������ݵ�ͬʱ������

//��������
<voice name="����" class="����" src="voice/mc04/0281290a00">
�������������������ַ��ĸо���Σ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
��Խ˵Խ������ͬʱ����������Ŵ�ξ����Ѩ��
����һɲ�ǣ�������������������������顣

����Ȼ�Ļ���ΪʲôͻȻ�䣬������ἱ���
���ҵ���������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
//��������
<voice name="����" class="����" src="voice/mc04/0281300a00">
������ˣС����ȥ�������顣
���ú����ܲ�������ðɡ���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281310a03">
����������Ҫ��˵�ˡ�������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281320a00">
����������ҡ�
����ʹ��Ļ�Լ�߻����ţ����Ҳ������ı䡣��

//��������
<voice name="����" class="����" src="voice/mc04/0281330a00">
�������������ţ���Ҳ��������ǰ�̺��ҵ������
˦���β��ɣ�
����ӵ����������Ҳ���������õı��ʡ���


{	NwC("cg/fw/nw����֦.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281340a03">
����������˵����ƭ�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
����ξ���ſ�ǻ���Է񶨡�
��Ȼ��ȴ�޷���Ūÿһ�붼��ø��Ӹ߰�
�����塣

��ֱ�׵��������Լ���������ļ�Ӵ̼�����������
δ֪������
����������ɬ�Ľ����Ѿ���ʧ���𽥱仯Ϊ�����״̬��

�����á�
����ô��ˬ��

������������֦�Ǵ��ӵ�Ů����Ͼ�����ͬʱ��
����Ԥ�н�ҹ���������������ܣ�����һ�˴Ӻ����
������Ц��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����
	CreateColorEXadd("����", 25000, "#FFFFFF");
	Fade("����",1500,1000,null,true);

	Delete("�}��*");
	Delete("����ꣲ");

	SetVolume("@mbgm*", 2000, 0, null);

//���֥�å�������
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg091_ɽ�P��һ��_03b.jpg");

	WaitKey(500);
	FadeDelete("����", 1500, true);

//����������
	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
������������������Լ��Сʱ���ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�\Ļ��", 1500, true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281350a03">
������������


//���դ�
{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281360a03">
���������ޡ�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281370a00">
����������
����Ҳ��֪����α�⡣��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281380a00">
�����ǣ�һ�ּ�������
����Ů�����������������ȽӴ��Ļ�����
�ͻ������ôҲ�޷����Ƶ�״������


{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281390a03">
�������������ޣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281400a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
�����������಻����ָ����ֻ��һֱ����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
	}
//============================================

//���ե��`�ɥ�����
//���ե��`�ɥ���

	CreateColorEX("����", 15000, "BLACK");
	Fade("����",1000,1000,null,true);
	WaitKey(1000);
	SoundPlay("@mbgm26",3000,1000,true);
	Fade("����",1000,0,null,true);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281410a03">
������������̫���ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281420a00">
����������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281430a03">
������������<RUBY text="����������">������һ��</RUBY>��û������
��֪���ɣ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281440a00">
���������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
������֪�����˺ܶ��Ǿ�ͷ���ˡ�
���������������ȥ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281450a03">
���Ǻǡ�
����������ܵĲ��֣�Ҳ�����ҿ���
�����̫���ˡ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0281460a03">
����������󡭡���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0281470a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1500, 0, null);
	ClearWaitAll(2000, 2000);
}

..//������ָ��
//�Υե����롡"mc04_029.nss"