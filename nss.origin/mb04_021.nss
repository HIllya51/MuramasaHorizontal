//<continuation number="850">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_021.nss_MAIN
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
	#bg003_�Ĥ�Ұ_02=true;
	#ev269_�x��Ȋ�_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_022.nss";

}

scene mb04_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_020.nss"

//���F�g�͎�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg003_�Ĥ�Ұ_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	SoundPlay("@mbgm32",2000,1000,true);
	FadeDelete("�}��ܞ", 2000, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����޵������ص���
��Թ�޵�����������

���븸������������һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	StR(1000, @0, @0,"cg/st/st�x�劗��_ͨ��_˽��b.png");
//	FadeStR(300,true);

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev269_�x��Ȋ�_b.jpg");
	Fade("�}����100", 500, 1000, null, true);


	SetFwC("cg/fw/fw�x��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210010b21">
�������Ƿ�֪����������֪���ĸ�ɮ�𡭡���
��������֪��������֪��Ŷ����


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210020b21">
�����Ǹ���������ˣ�
��˫��ȥ��֮�󣬾����Һͽ����Ҫ׷�游ĸ
��ȥ��ʱ���Ǹ�ɮ�������ǣ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210030b21">
����Ϊ��ɮ�ǵ��ҵĸ�ĸ����һЩС�����ж�
������
��ֻ����Ϊ��ô�򵥵��£���ɮ�Ͳ�ϧð����
��Σ�վ������Һͽ�㡣��


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210040b21">
��������������
��֮����������������ʿ����ݡ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210050b21">
���ҶԸ�ɮ�������޾��ĸм���
������ɮȴ����Ц��˵����ƶɮ��������ߣ���
�������������Լ�����֮�¶��ѡ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210060b21">
���������Ǹ����������!!
������!?����������
���ⲻ�������������𣿡�


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210070b21">
��������֪����ɮ�Ǹ�����������!!��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210080b40">
��������


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210090b40">
���������������ǡ���
���Ǹ����ˡ�����


{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210100b21">
���ǰ���û��
����ɮ���˺ܶ���¡���Ϊ�����Ǹ�����
�����������ˡ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210110b21">
����������ˣ���ɮ���Ҷ��Ե�����Ҳ����
�ı䡣��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210120b40">
��������


{	FwC("cg/fw/fw�x��_��Ц.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210130b21">
���Ǻǡ���������������
��û���ˣ����µ������˵��ЩҲû���ˣ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210140b21">
����Ϊ���Ѿ����ˡ�
����ɮ��������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210150b21">
�����Ҳ������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210160b21">
���Լ��ǻ�û���ü�������Ӥ������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210170b40">
�������ء�����


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210180b40">
��Ӥ������
������Ӥ��������


{	FwC("cg/fw/fw�x��_��Ц.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210190b21">
������ɱ�ˡ�
������ɱ��������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210200b21">
��������Ǹ�<RUBY text="����">Ӥ��</RUBY>ɱ���ģ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210210b40">
���������ǡ�����


{	FwC("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210220b21">
�������㡣
��ΪʲôҪ�����ء�������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210230b21">
���ղŲ��ǻ���ô�����дʵ���
����ͦ��������Ű�����


{	FwC("cg/fw/fw�x��_��Ц.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210240b21">
����Ϊ��ɮ�Ƕ��ˣ�
��������������Ϊ�и��Ľ��������е�̥��Ҳ
һͬɱ���ˡ�������˵����������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210250b21">
�������Ҫ��˽���Ҳɱ���Ļ���
����Ҳ����Թ�ԣ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210260b40">
���и��ˡ���
��������ô���ܡ�����


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210270b40">
�����ǡ����ɹ��˵��о�������
���ҡ���ֻ��Ϊ�˷�ֹ���ֲҾ��ٴη���������


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210280b40">
��������������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210290b40">
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	FadeDelete("�}����100", 1000, false);

//���Ӥ��Ӥ����ҥӤ������
//�����ڤ�С�̤ߤ���Ӥ���
	CreateSE("SE01","se����_�z_���٥�_�ҤӸ��");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw�x��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210300b21">
����ô�ˣ����У�
���㻪����װ���ϳ����Ѻ���Ŷ��������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210310b21">
��������ʱ�������һ���ء���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210320b40">
������������������������


{	FwC("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210330b21">
�����ڸ�ʲô��
����ΪʲôҪ�е������أ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210340b21">
��������Ǽ�����������Ѱɣ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210350b21">
����ĵ����ϲ���û��һ˿�ۻ��𣿡�


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210360b21">
���ԣ�û��
������ɫ��װ����ĺ����ء�����


{	FwC("cg/fw/fw�x��_��Ц.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210370b21">
�������׺������ɱ����̥��֮Ѫ������ʢ��
������ͷ׵�ǣţ���Ļ���һ�㣡
�����������ˣ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210380b40">
���ް���������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф��Ф���
//���ۥ磻�ȥ�����
//���Ԥ��á�����������Ĥ�һ���äݤ���
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	CreateSE("SE02","se����_�z_���٥�_�ҤӸ��");//���ߩ`ע��
	MusicStart("SE02",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE02");
	Fade("�}ɫ��", $�Еr�g, 1000, Axl2, true);

	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210390a02">
���侲����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á��������Ĥ�����
	CreateSE("SE03","se����_����_���01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210400b40">
��������������


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210410b40">
��������������!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������֣�ץס�����ڵ�ͷ��
��ͬʱ�����رպϡ�

���ݺݵ�ҧס���е���Ƭ��
��Ʒ���Ÿ��õ�ζ����

�������������ۻ��ζ����
�������Լ��Ǹ��಻�������ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210420a02">
������������һ�㡣
��Ҫ����������������Ķ�������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210430a02">
�����岢����ʲô���������泩�Ķ�����
�������������ǡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210440a02">
������·�ϲ�����һ˿��â��
��ֻ�в������ӵģ��������������󡣡�


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210450a02">
������û��
������Ҫ��������һ�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������
������������ϥ�ǣ�վ��������

�������쳣�س��ء�
��
����Ϊ��������������ѹ�����ҵ�����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg003_�Ĥ�Ұ_02.jpg");
//	StR(1000, @0, @0,"cg/st/st�x�劗��_ͨ��_˽��b.png");
//	FadeStR(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw�x��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210460b21">
��������
����������㣬��̫��Ȥ�ˡ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210470b21">
�����Ǹ����ɵ����µ������ߡ�
���ɲ����������������Ϊ�������ǰ���¡���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210480b21">
����ô�����ɡ�
������Ҳһ��նɱ����


{	FwC("cg/fw/fw�x��_��Ц.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210490b21">
������Ľ��У�
�����ұ�Ϊһ����ҵ�ʬ���ɣ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210500a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؤ��ҡ�
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);
	DeleteStA(0,true);
	DrawDelete("�\Ļ��", 500, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw�x��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210510b21">
����������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210520b40">
������������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210530a02">
���߰ɣ����ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ǰ����������������Ų����˵��ı�����
�������˵������ͲƲ����ڱ��б����Ӷᡣ

��<RUBY text="��">����</RUBY>ӵ���ܹ��ػ����ǵ�������
�����ԣ��߰ɡ�

������Ҫ�졪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á�һ�i�i���ơ�
//���|�������`��
//���n�ġ�ϥ��ͻ��
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1250,null,false);

	WaitKey(200);

	CreateSE("SE01b","se���L_�|��_ȭ�|�k�h01");
	CreateSE("SE01c","se����_�n��_ܞ��05");
	$�Еr�g��=RemainTime("SE01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateEffect("�}����", 3000, 0, 0, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);
	Shake("�}����", 300, 6, 0, 0, 0, 1000, Dxl2, true);
	Delete("�}����");

	CreateTextureEX("�}�ݱ���", 2000, -275, -516, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");//���ߩ`ע��
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Move("�}�ݱ���", $�Еr�g��, @0, @-60, AxlDxl, false);
	Fade("�}�ݱ���", $�Еr�g��, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210540a02">
���ء�����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210550b40">
����������


{	FwC("cg/fw/fw�x��_ŭ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210560b21">
���ù��ְ���
���ѵ���ר�������㣬��ȴ������������𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210570a02">
��������Ǹ��
�����м��¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä�
//���i����
//���ޤ��k�h��
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("�}�ݱ���", 300, @0, @60, null, false);
	FadeDelete("�}�ݱ���", 300, true);

	CreateSE("SE01b","se����_����_�᤺����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	WaitPlay("SE*", null);

	CreateSE("SE01c","se���L_�|��_ȭ�|�k�h01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);
	Shake("�}����", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210580a02">
��������


{	FwC("cg/fw/fw�x��_��ŭ.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210590b21">
��������ʲô��Ц��
���µ���񡭡������ֻ�Ź���һ���𣿡�


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210600b21">
����ô��
��Ϊʲô����


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210610b21">
����Ϊʲôɱ�˸�ɮ!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�h
	CreateSE("SE02","se���L_�|��_ȭ�|�k�h01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);
	Shake("�}����", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw�x��_��ŭ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210620b21">
�����н�㣡
���Լ���ɮ����ĺ��ӣ���


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210630b21">
��Ϊʲôɱ�����ǰ�����������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�󤺤��`��
//���Ф졣�����������մ������
	CreateSE("SE03","se���L_�|��_ȭ�|���01");
	CreateSE("SE06","se���L_�|��_ȭ�|���01");
	CreateSE("SE04","se���L_�|��_ȭ�|�k�h01");
	CreateSE("SE05","se���L_�|��_ȭ�|�k�h01");

	CreateEffect("�}����", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}����","�}����");
	Request("�}����",Passive);
	Fade("�}����", 0, 500, null, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("�}����", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Wait(400);

	MusicStart("SE05",0,1000,0,1000,null,false);
	Shake("�}����", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Wait(600);

	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(400);

	MusicStart("SE06",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE06");
	WaitKey($�Еr�g);
	SetVolume("SE*", 100, 0, null);

	Wait(300);

	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210640a02">
���ء�����


{	FwC("cg/fw/fw�x��_��ŭ.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210650b21">
���졭���쵰������

{	FwC("cg/fw/fw�x��_����.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210660b21">
���쵰������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210670a02">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210680a02">
����Ǹ������


{	FwC("cg/fw/fw�x��_����.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0210690b21">
��������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210700a02">
�����������Ҳ��������Ȼ�ġ�
����Ϊ�ҡ������˲���ԭ�µ��¡���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210710a02">
�����ǡ�
��������ˣ���Ҳ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210720a02">
���������Լ����޷�ԭ���Լ���
�����Ѿ�������Ҫ����ս����ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ�i���i�Ți��
	CreateSE("SEL01","se����_����_�i��01_L");
	MusicStart("SEL01",0,1000,0,750,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���������·����û��ҵĺ󱳡�
��������������Ϊ�����ޡ�

��һ��һ�ε�����ָ�����ҵ�������
����������Ƥ���ĳͷ�֮�롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210730a02">
�����ڡ�
���������յĽ�֣�������ˡ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210740b40">
������������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210750a02">
����Ϊ�κ��������ϡ�
�������κ��˵Ļ�ӭ����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210760a02">
�����˴������ˡ�
��Ϊ�������ޡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210770a02">
�������ⶼ��������Ȼ�ġ�
����Ϊ�������������鲢������ȷ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����Ϊ�ҡ���
��Ҳֻ��������׷Ѱ��һ���˵�������ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210780b40">
��������ô��������������


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210790b40">
����֮��������


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210800b40">
��������ᡣ
�����ڵ�������������𡭡�����


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210810a02">
��������


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210820b40">
���������塭����


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0210830b40">
��<RUBY text="��������������������">�ѵ������ǲ����ڵ���</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á�
//���ţ֣ãǣ���һ��
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//��������ݳ��������ǽ}�����Ƥ����������Ԥ�Ҫ�_�J��
	CreateTextureEX("�}��", 4000, -542, -530, "cg/ev/resize/ev268_�䥯���Ȍ��Ť���һ��.jpg");
	Move("�}��", 2000, @0, -275, AxlDxl, false);
	Fade("�}��", 2000, 1000, null, true);

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210840a02">
��������


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0210850a02">
��<RUBY text="������������������������">������ˣ�����Ҳ��Ȼ����</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_022.nss"