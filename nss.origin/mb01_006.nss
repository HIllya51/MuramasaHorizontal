//<continuation number="900">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_006.nss_MAIN
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
	#bg058_�ҿ�a_01=true;
	#bg034_���Lլ����gb_01=true;
	#bg034_���Lլ����gc_02=true;
	#bg059_�w���ݤε���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_007.nss";

}

scene mb01_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_005.nss"

//���ա��Ĥ�ģ��
//�����Lլ
//���ꤶ�`���`��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(350,"bg058_�ҿ�a_01.jpg");

	CreateSE("SEL01","se��Ȼ_ˮ_����01_L");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("�}������", 360, 256, 0, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Rotate("�}������", 0, @-60, @0, @0, null,true);
	Zoom("�}������", 0, 3000, 3500, null, true);
	Fade("�}������", 0, 500, null, true);

	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(2000);

	OnBG(100,"bg034_���Lլ����gb_01.jpg");

	CreateTextureEX("�}����250", 250, Center, Middle, "cg/bg/bg034_���Lլ����gc_02.png");
	CreateEffect("�}������2", 200, 0, 150, 512, 288, "Rain");
	SetAlias("�}������2","�}������");
	Rotate("�}������2", 0, @0, @0, @0, null,true);
//	Zoom("�}������2", 0, 3000, 3500, null, true);

	SetVolume("SEL01", 3000, 200, null);

	Fade("�}����250", 0, 1000, null, true);
	Fade("�}������2", 0, 500, null, true);
	FadeBG(2000,false);
	FadeDelete("�}������", 2000, true);

	Delete("�}������");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����糿��ͺܹ��ܵ������������ڽӽ�����ʱ�ֳ����ԡ�
����ε���ˮ��ͥԺ�����ش�����߰��㣬ƴ���ؽ�ÿ��
���Ļ���ĳɹ���Ϊ���С�

{	SetVolume("SEL01", 5000, 300, null);}
  ����������������
����������Զ�����ƺ������𽥽ӽ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb01/0060010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������ȴ�޷���ֹ��Ī���������ʶ����Ҫ����
��������˼��֮�С�
��Ҳû���ܵ��ҵ����߶���

���𳤳���ȥ�ˣ���������Ůʿ�ֺܷ�æ��
������ҲΪÿ�ձ��������Ǻ���Ѱ����ȥ�ˡ�������Ȼ
����Ž��ٵ�̽�鹦�ܣ����������Ǻ���Ϣ�������ƺ�
�����ۣ�����Ӱ�졣

����������Ľ�����������ѰҲ����������ɡ���ң��
���Ǹ���֩��֮�ˣ���ηѸ����ںڰ�������������ͬ
�飬���ɵ�������Ľ��
������������Ϊ���Ͳ���Ϊ�������¶������ˡ�

������ս����
��ս����ս����ɱ¾��

������˼��������Ǻŵġ��ѡ���Ϯ�����ߡ�
��������Ӧ�ģ�ɱ������ͬ�����������֮�ˡ�

���ƶ���֡�

��������������һŰɱ������û�н�����
���Ծɱ���ɱ¾��

���´�ɱ˭��
��˭�ǵ��ˡ�˭��ͬ�飬��������ȫ��ɱ����

���Ҳ�֪��˭�ǵ��ˡ������Ǻš����Ǳ����ġ��ѡ�
�����ʲô�ˡ�
��ͬ�顪����֪��ͬ����˭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\
//��һ��
	SetVolume("SE*", 1200, 1, null);
	CreateColorEX("�}��Ļ", 2000, "#000000");
	Fade("�}��Ļ", 1700, 1000, null, true);

	StC(2100, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStC(300,true);

	CreateTextureEXmul("�}��", 2200, Center, Middle, "cg/anime/Left/blood_C_6.png");
	CreateTextureEXadd("�}���Y", 2050, Center, Middle, "cg/anime/Left/blood_C_6.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������ɡ�
��һ��һ��ؿ�����Ҫ̤����������Ů��

�������š���Ľ������������
��ÿ����������������ʱ�������뷨�ͻ�����ǿ�ҡ�

�����ԵĻ�����Ҳϣ�������������š�

������������
��Ϊ�˹�ֱ��
������ֱǰ����

���������޷�ʵ�ֵĻ��
����Ϊ���ѷ��¼�׮���е��ң�ֻ��ѡ������������
�����εĻ��

���������һ�����Ҿ�����ңԶ���ָ߹�
��
{	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��", 0, 800, null, true);
	Fade("�}���Y", 0, 1000, null, true);}
�����ԣ��Ҵ�Ż�ɱ������

���´�ɱ��֮ʱ��
����������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreatePlainSP("�}��д", 5000);
	DeleteStA(0,true);
	Delete("�}��*");
	FadeDelete("�}��д", 1000, true);
	FadeDelete("�}��Ļ", 1000, true);
	SetVolume("SEL01", 3000, 200, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ķ��������һ�ˡ�
��һ���������£����ǻ�����Щ���顣

����Ҳ��ȥ�����ǺŰɡ�
��
��������֪���������������壬ȴ���¶�����֮ʱ��

��ͻȻ������˵���Ϣ���ұ���ͥԺ������
��
���и�����ʯ�����������������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͥ�����g���������Ф�ȡ�룩
//��һ��
//����������g������ͥ�x���һ�������ȥƥ���
//���ȥܥå������ä������Ǥ�ϣ�
	CreatePlainSP("�}��д", 5000);

	Delete("�}����*");
	Delete("�}����*");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg034_���Lլ����gb_01l.jpg");
	Move("�}����100", 0, @512, @0, null, true);
	CreateTextureSP("�}����150", 150, Center, Middle, "cg/bg/resize/bg034_���Lլ����gc_02l_ex.png");
	Move("�}����150", 0, @512, @0, null, true);
	CreateTextureSP("�}����200", 160, Center, Middle, "cg/st/resize/stһ��_ͨ��_�Ʒ�m.png");
	Move("�}����200", 0, @-212, @130, null, true);

//	OnBG(100,"bg034_���Lլ����gb_01.jpg");
//	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
//	FadeBG(0,true);
//	FadeStL(0,true);


	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("�}������", 120, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 300, null, true);

//	Delete("�}��д");

	SetVolume("SEL01", 500, 350, null);
	FadeDelete("�}��д", 200, true);

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060020a02">
������������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060030a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����˲�������뷨���ǲ��������ĳ�˼���»�����֡�
���������ԡ���Ů����ʵ���ڵġ�

����Ů�������һ��������վ�š�

��һ�Բ�����
�����ޱ��顣

��������˵��������Ӧ��ӭ�����͡�
��ȴ����ԥ��Ҫ��Ҫ����������

�������еġ����������ҵġ�ֱ��ǰ����Ŀ�⣬������
������Ӱ֮�У���Լ������һ˿������
����˫ƽ�����۾����˾�������һ��ʯ��

���������ķ���ʵ�������ɵ��ʦ��ע������е��
���ɵ�һ�������ױ��ܿ�������Ů��˿������˫���
Ҳ��������ӿ�Ĳ��Ρ�
������ȴ����͸�䱾�ʡ�

���ҵ�һ�ο���������һ������ͬ������֮����������
���εض��ұ��ֳ�����ģ����
�����ң���Ҳ��һ���·���ο������Ƶ��������ҡ�

����˿���⡣
���޹�����ͼ��ڣ����ǲ�֪���ı��䡣

���������ǿ־塣
��
�������־�ʲô������ʲô���־壿

�����ű������Ů���������һֻ�֡�
�����ƾ�ǹ�Ķ�����

�����ս����е�ֽƬ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060040a02">
���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����������Զ�֮ʱ����Ů�������ȴ����˳�Ĭ��
��������ǰ��������˵Щʲô����������ȴ�߱�����ʹ
���������̻غ������������

�����޼ƿ�ʩ����ס������
�����ò����ϱ�����������ס�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060050a02">
�����ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ɱ�⡣
���Ƿ�ŭ��
�����Ǳ��С�

���Ҳ���������ڵ�һ����������һ�ѵ���
��һ��ע����ж���ĵ���

��Ϊ�˴���ʲô�˵����š�

��ʲô�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060060a02">
�����ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����Ϊ��
�����ҡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å��奨�ե����ȡ��Ĥޤ�R�����
//�����椬Ԫ�ˑ��ä�˲�g��
	CreateTextureEXmul("�}����160", 150, Center, Middle, "cg/bg/resize/bg034_���Lլ����gc_02l_ex.png");
	Move("�}����160", 0, @512, @0, null, true);
//	CreateTextureEXmul("�}����210", 210, Center, Middle, "cg/st/resize/stһ��_ͨ��_�Ʒ�m.png");
//	Move("�}����210", 0, @-212, @130, null, true);

	CreateStencil("�}����210",911,Center,Middle,128,"cg/st/resize/stһ��_ͨ��_�Ʒ�m.png",false);
	SetAlias("�}����210","�}����210");
	CreateColorEXmul("�}����210/ɫ", 911, "#000000");
	Move("�}����210", 0, @-212, @130, null, true);

	CreateColorSPadd("�}��", 145, "#FFFFFF");
	Fade("�}����160", 0, 1000, null, true);
	Fade("�}����210/ɫ", 0, 800, null, true);
	Wait(50);
	FadeDelete("�}����160", 1600, false);
	FadeDelete("�}����210/ɫ", 1600, false);
	FadeDelete("�}��", 1600, false);

	WaitKey(500);

	SetFwC("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060070a02">
��ȥ������Ӱ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���פ�������������������
	CreateSE("SE01","se��Ȼ_��_�R��02");
	MusicStart("SE01",0,800,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);
	WaitKey(1000);

	ClearWaitAll(2000, 2000);

//��ӳ����
//���λ����ΣãͤǤɤ�����
//���o����Х���󥴤������ʡ�
//���⤷���Ϥʤ�һ�k�ͥ���

//��������ݳ���ӳ���ͥ����ߩ`��


	CreateSE("SE01","se���L_����_���B��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MoviePlay("dx/mv���_���㥭�`����㥭���`��.ngs", true);

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

//���w����
//�������Qɢ�餹�α�����ʹ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg059_�w���ݤε���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb01/0060080a00">
��������ǰ����������Ӱ������


{	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060090a02">
���ԡ��Բ���
����û�뵽��Ӱ������ô��֡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���Һ�һ��һ��ȥ�˱����ֵĵ�ӰԺ��
�������������Ե�ʣ���ӰԺ�����壬���ǿ��˴�Լ��
Сʱ�ĵ�Ӱ��������������ż�ճ��һ����͸�˵�����
�ͳ�ѥ��

������һ�������ĳЩ�����ĸп��У�һ��Ϊ�˳Գٵ�
���緹��ȥ�˸�����������ꡣ
�����ڣ���������������һ�������ԡ�

���һ�ûѯ��һ��ͻȻ�����ҵ����к���ͼ��
����Ȼ�����⣬�һ�û���ʳ��ڡ�

��������ô˵����Ȼ�м������Ҿȳ������¶�Ҳ��һ��
Ե�ʡ��������ԭ���ǣ������һ����Ȼ��Щ�Ź֣���
��ɢ��������������ԥ��ò�������ѯ�ʡ�

������Ҳ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���w���ݤ���ʤޤˤ���ե�����

	CreateTextureEX("�}�����w����", 100, Center, -100, "cg/st/resize/st�w���ݤ���_ͨ��_�Ʒ�ex.png");

	OnSE("se����_�z_�F",1000);
	Move("�}�����w����", 300, @0, @-100, Dxl1, false);
	Fade("�}�����w����", 300, 1000, null, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st�w���ݤ���_ͨ��_�Ʒ�.png");

	FadeDelete("�}�����w����", 300, false);
//	Move("@StL*", 300, @0, @0, AxlDxl, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw�w���ݤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060100e053">
�����ˣ�Ҫ��ʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060110a00">
��һ�����Ե�ʲô����


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060120a02">
�������ǡ�
����ô�������������������������𣿡�


{	NwC("cg/fw/nw�w���ݤ���.png");}
//�룺�����������ޣ���090930��
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060130e053">
��ʲô�������ģ����ַ�����Ķ������ǵ���
��û�С���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060140a02">
�������������ҵ�һ�¡�
����������ʲô��˼����


{	NwC("cg/fw/nw�w���ݤ���.png");}
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060150e053">
��ʲô����


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060160a00">
����˵ʲô�أ�һ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060170a02">
��������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060180a00">
��������ô��������<RUBY text="��������������">պ������������</RUBY>����Ϊ�ء�
������׷�ݵ��Ϸ���Գʱ��Ҳ���Բ����ܡ���


{	NwC("cg/fw/nw�w���ݤ���.png");}
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060190e053">
���ԣ�û��
�������������ͬ�����˵Ц����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060200a00">
���ǰ������Լ�Ҳ���ú����⡣��


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060210a02">
�������Ǹ�������


{	NwC("cg/fw/nw�w���ݤ���.png");}
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060220e053">
����˵�������������������ֵĴ���Ŷ��
����Ȼ����аѽ�ʲô����������������Ķ�
���˳��������˳Եĵ��ء�����


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060230a00">
����ô���ܡ��Ƕ��д�˵�ɡ�
��������������߷ұ����ֶε�һ�֡���


//��������
<voice name="����" class="����" src="voice/mb01/0060240a00">
����֪�����ĸ�������Ц�ļһ�˵�ø�ȷ����
��һ������������Ҳ˳ˮ��������Ϊ�档��Ϊ
���ֻ�������Ȥ�����Բ��������������ѵ���
�������𡣡�


{	NwC("cg/fw/nw�w���ݤ���.png");}
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060250e053">
���ǰɣ�����Ȼ����������
����������������֪���ġ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060260a00">
�����ƺ�Ҳ�ܰ�����Ц�ء���


{	NwC("cg/fw/nw�w���ݤ���.png");}
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060270e053">
������������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060280a02">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060290a00">
�����ˣ�һ����
��������Ц�ˣ����ʲô����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060300a02">
�������ǰ���
���ǡ�����ͨ���������������桭����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060310a00">
�����𡣵�úá�
������ҲҪһ��һ���ġ���


{	NwC("cg/fw/nw�w���ݤ���.png");}
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060320e053">
���ã������������������ݣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_�z_�F",1000);
	Move("@StL*", 300, @-30, @0, Axl2, false);
	DeleteStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ա�ú������Ƶ����������˶������˻س�����
����һ���ƿ���ҵ�������Ѿ���ʮ��ǰ�������ˣ���
���Ǹ�ʱ����ͳ����ҵ�֪�����������ֿ��ʵ��Ը�һ
ֱδ�䡣

��һ���������������������ζ��ʳ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060330a02">
���ó���
��������������������档��


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060340a00">
���š�
��һ��ʼ�Ե���ʱ�򣬶��ҵĳ���ɲ�С����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060350a02">
�������ܾ��ã��޷����񡣡�


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060360a00">
������ʮ��ǰ�������ˡ�
����ʱ���һ�����һ������ѧ���Ʒ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ӵ��ڡ�һ�ж��͹�ȥһ����
����ʰ����ɢ��ļ������ӣ������ϲ���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mb01/0060370a00">
���Ǳ�ҵ���е�ʱ��
��������һ��ȥ�������ֵ���ʤ����


//��������
<voice name="����" class="����" src="voice/mb01/0060380a00">
���ΰ���ɽ���ڰ�ᦹ���ʵ����ɱ��Ϸ����Ȼ
��պ��ڳ��緹��ʱ�䣬�߽��˸�����������
�ꡣ
�����������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060390a00">
����ʵ���Ǵ����У��ҷ��˸�����
������Ǯ̫���ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060400a00">
�����ǲ�һ������Ϊ�������ѵ�һ�ε����У�
���Ǵ��˺ܶ�����Ǯ��
���������ǹ��������Ƶģ����������ڷ��
�ң����ǽӶ������ص����˸߼������档��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060410a00">
�������ڶ����ǵá�
��С���ȵ���ǽ�ǹ�㽽ɽҩ֭�����档β��
Ҳ�����������ٺ����Ǵ�����ѡ������ɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060420a00">
�����ǳ���һ����Ԫ�ĸ߼������档
������ͷ��Ǯ����ܹ�Ҳ��һ����Ԫ���ҡ���
�����ǵ�Ȼ��֪���ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060430a00">
�����������𣿡�


{	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060440a02">
�������������������ס���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060450a02">
����������ʲô��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060460a00">
����������ս����
����������ս����С����û�е����ó�ȫ����
����ά����������ȡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060470a00">
�������ǳ�����Խ�е�Ц�ݣ��Ѿ��㹻������
һ�������ˡ�
��Ǯ���ﹲ��һ������Ԫ�����������ȷ�ϣ�
������ԥ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060480a00">
���ҵ����������������档
��������Ԫ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060490a02">
������û�����Ȱ�������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060500a00">
���ȵ��������һ�������Ǿ������̵س�����
����
�����һ�һ�߶����ڵ�����������������ң�
˵Щ������ζ�ĳ��滰����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060510a00">
���������ó����Ӱ����ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060520a02">
������������𣿡���Щ�ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060530a00">
�����ǣ����Ǵ�Ų�֪���ɡ�
��ʤ������ת˲֮���ɵ߸������ˡ���


//��������
<voice name="����" class="����" src="voice/mb01/0060540a00">
��ת�����ҵ������������ʱ�����ˡ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060550a00">
��һĿ��Ȼ��
��ÿ���˶��������ˣ�һ�ж���ת�ˡ���


//��������
<voice name="����" class="����" src="voice/mb01/0060560a00">
�������ʱ��С���Ȼ�����ţ����������
����ļһ�ȴ�Ե�����óԵĶ�����
�����Աߵ�β����ƴ������Ҫ��ס��ҵ�ĵ�
ַ����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060570a00">
������ʤ�ߡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060580a02">
����������{WaitKey(2000);}<BR>����ô���Ǹ������ǵ�����
ʲô�����������أ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060590a00">
���š�
���������֡���


{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060600a02">
��������


{	OnSE("se����_�z_�F",1000);
	NwC("cg/fw/nw�w���ݤ���.png");}
//������㣯�w���ݤ����
<voice name="����㣯�w���ݤ��" class="������Ů��" src="voice/mb01/0060610e053">
�����ˣ��õ��ˣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���줫�����Ф��Ф��ȏ�������
//��Ҫ���ͤ����������ʤ������

	CreateSE("SE01","se�ճ�_����_�P����02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(1000);

	ClearWaitAll(1000, 2000);

//��һ�ȥե��`�ɡ��g��ȡ�ä�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg059_�w���ݤε���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fwһ��_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060620a02">
��������������
�������������һ��ǵ�һ�γԵ�����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060630a00">
���ǰɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����֭�е�����<RUBY text="��������">����žž</RUBY>����Ծ�ţ�
������������Ҳֻ������Թ���
����Ȼ�Ҿ���ֻ����������Ծ�ܼ򵥡�

������Ҫ������ζ���ںϾͺ����ˡ���ҵ����������
�����棬�������������������������ϼ�ֱ���ˡ�
��һ���ƺ�Ҳ�����㡣

����������ܱ�����׿���˵����Ҳͦ�á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060640a02">
�����ǣ����˲��Ǻܶ��ء�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060650a00">
���ǰ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060660a02">
��������ô�óԡ�
������Ϊ����Ĺ�ϵ�𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060670a00">
��Ҳ�����ԭ�򣬲�������
����Ϊ�ܵ�Ļ����ʳ�����ƻ��ĳ��������ʱ
�ر���һ���ӡ�ֱ������ſ�ҵ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������һ����𲢲���ĵ��ڡ�
��������ǿ���������緹ʱ�䣬ȴֻ����λ���ˡ�
Ҳ����˵��ֻ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mb01/0060680a00">
�������Ƕ������ڼ���ʧ�˰ɡ�
�����֪������ָ�Ӫҵ���ֻ����������ġ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060690a02">
������˵����Ҳû��
���ҼҸ���֮ǰ�ص�ķ��̣�������ǻָ�Ӫ
ҵ�����¿��š���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060700a00">
�����ķ�Ļ�����Բ�������ѹ�������޵�ͳ
�������ȶ���
������˵�����ֶ������͡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����Ȼ��֪������������
��ǰһ���ӵĴ��±���ػᵼ�����鳯����ȫ�����ȶ�
�ķ���չ�������Ҳ��۴ӳ����ӽ��������ۡ�

�����۵�˵��������ҵ�����ڻָ�����ǰ�ٶȹرյ�
���Ҳ���п��ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060710a02">
�������𡭡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060720a00">
����������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060730a02">
��������Ļ��м���
������Ϊֹ���ڳ��׵��ϼӹ��������ںò���
�ײŻ�����һ���㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������֮���ͣ�����﷨��ʽ�ϡ�
����˵���˵�������������Կ��������Ѿ����Լ���
��������ȷ�еĴ𰸡�

����ͻȻ�о���Щ���¡�
������������ڼ�״��־�֢������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060740a02">
�����ǿ�Ц����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060750a00">
����������Ҳ�ܱ�����ΪҪ�á���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060760a02">
���š�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060770a00">
��ʳƷ���ƵĻ��;�����ϲ��һ����
�����Ҳ���������˶���Ȱɡ���


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060780a02">
����Ҳ��������ġ�
�����ǣ���<RUBY text="��������">�޷�ԭ��</RUBY>����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060790a00">
������������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060800a02">
�����������¡�
��ֻҪ��Щ�ƾ٣���ȥ�����µĶ��о���һ��
�������������Ǿ��Բ����ܵġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0060810a00">
�������ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��û��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060820a02">
���ƾ����ơ�
������Ƕ񡣡�


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060830a02">
�������ƵĲ��ֵõ��Ͽɣ�
  ��Ĳ���ҲӦ�ܵ��Ʋá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��������ˡ�
�����ԡ����ҡ�

���������Լ�
�����ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060840a02">
���������޷�ԭ�¡�
����������������������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060850a02">
��������ȴ�����ˡ�
������������ˣ��Ҿ��ԡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	SetVolume("@mbgm*", 1500, 0, null);
	CreateColorEX("�}��ܞ", 5000, "#000000");
	Fade("�}��ܞ", 600, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��
�����������������������޷�ԭ�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/mb01/0060860a00">
������������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060870a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��һ��û�п��ҡ�
��������ͷ��ע�������ϵ�ľ�ơ�

����ô���ղ�����żȻ��
���ղŵġ���<RUBY text="������">һ����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @30, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	CreateSE("SE01","se�ճ�_��_�����Q��02");

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/mb01/0060880a00">
��һ������


{	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060890a02">
�����������˰ɡ�
����������һ�������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0060900a02">
���и��ط����������һ��ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(5000,"bg058_�ҿ�a_01.jpg");
	CreateSE("SEL01","se��Ȼ_ˮ_����01_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	FadeBG(1500,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��һ����Ȼû�п��ң��������������⡣
���������������ꡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(2000);
	SetVolume("SE*", 2000, 0, null);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_007.nss"